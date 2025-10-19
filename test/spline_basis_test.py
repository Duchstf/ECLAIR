import numpy as np
import matplotlib.pyplot as plt

def generate_spline_luts(spline_order: int, lut_resolution: int, grid_range=(0.0, 1.0), grid_size=10):
    """
    Generates B-spline basis and derivative lookup tables for a single uniform cell.

    The shapes of the (k+1) non-zero basis functions are identical for any
    internal cell of a uniform grid. This function calculates these shapes over a
    normalized interval u = [0, 1).

    Args:
        spline_order (int): The order 'k' of the B-spline. E.g., k=1 is linear, k=3 is cubic.
        lut_resolution (int): The number of points to sample in the lookup table (e.g., 256).
        grid_range (tuple): The total range of the original grid, e.g., (0.0, 1.0).
        grid_size (int): The number of cells in the original grid.

    Returns:
        tuple[np.ndarray, np.ndarray]: A tuple containing:
            - basis_lut (np.ndarray): Table of basis function values, shape (lut_resolution, spline_order + 1).
            - derivative_lut (np.ndarray): Table of derivative values, shape (lut_resolution, spline_order + 1).
    """
    k = spline_order
    res = lut_resolution
    
    # Calculate the width of a single cell in the original grid.
    # This is needed to correctly scale the derivative.
    H = (grid_range[1] - grid_range[0]) / grid_size

    # Create the normalized coordinate 'u' within a single cell [0, 1).
    u = np.linspace(0, 1, res, endpoint=False, dtype=np.float32)

    # For a normalized cell, we can use a simple integer knot vector.
    # We need 2*k + 2 knots to define the k+1 basis functions that cover the interval.
    knots = np.arange(-k, k + 2, dtype=np.float32)

    # --- Base Case: Order 0 (Box functions) ---
    # `bases` has shape (lut_resolution, 2*k + 1)
    # Each column corresponds to a basis function B_{i,0} over a knot span.
    bases = (u[:, np.newaxis] >= knots[:-1]) & (u[:, np.newaxis] < knots[1:])
    bases = bases.astype(np.float32)

    # --- Recursive Calculation ---
    # Iteratively build up the spline order from 1 to k.
    for i in range(1, k + 1):
        # Store the previous order's bases to calculate the derivative of the current order.
        prev_bases = bases
        bases = np.zeros((res, 2 * k + 2 - (i + 1)), dtype=np.float32)

        # Cox-de Boor recursion for the basis functions
        term1 = (u[:, np.newaxis] - knots[:-(i + 1)]) / i * prev_bases[:, :-1]
        term2 = (knots[i + 1:] - u[:, np.newaxis]) / i * prev_bases[:, 1:]
        bases += term1 + term2

    # --- Derivative Calculation ---
    # The derivative of B_{j,k} depends on B_{j,k-1} and B_{j+1,k-1}.
    # We use the final `prev_bases` which are the splines of order k-1.
    deriv_term1 = prev_bases[:, :-1]
    deriv_term2 = -prev_bases[:, 1:]
    
    # The derivative is scaled by k/H.
    derivatives = (k / H) * (deriv_term1 + deriv_term2)

    # The first (k + 1) columns are the non-zero basis functions and derivatives
    # that are active over the normalized interval u = [0, 1).
    basis_lut = bases[:, :k + 1]
    derivative_lut = derivatives[:, :k + 1]

    return basis_lut, derivative_lut

def plot_luts(basis_lut, derivative_lut, spline_order):
    """Helper function to visualize the generated LUTs."""
    res = basis_lut.shape[0]
    u = np.linspace(0, 1, res, endpoint=False)
    
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 8), sharex=True)
    fig.suptitle(f"B-Spline Basis Functions and Derivatives (Order k={spline_order})", fontsize=16)

    # Plot Basis Functions
    ax1.plot(u, basis_lut)
    ax1.set_title("Basis Functions LUT")
    ax1.set_ylabel("Value")
    ax1.grid(True, linestyle='--', alpha=0.6)
    ax1.legend([f'B_{i}' for i in range(spline_order + 1)])

    # Plot Derivatives
    ax2.plot(u, derivative_lut)
    ax2.set_title("Derivatives LUT")
    ax2.set_xlabel("Normalized Coordinate 'u' in cell")
    ax2.set_ylabel("Value")
    ax2.grid(True, linestyle='--', alpha=0.6)
    
    plt.tight_layout(rect=[0, 0, 1, 0.96])
    plt.savefig('spline_basis_test.png')


if __name__ == '__main__':
    # --- Example Usage ---
    SPLINE_ORDER = 3      # Cubic splines
    LUT_RESOLUTION = 256  # 256 entries in the LUT
    GRID_SIZE = 10        # Example grid size
    GRID_RANGE = (0, 1)   # Example grid range

    print(f"Generating LUTs for spline_order={SPLINE_ORDER}, resolution={LUT_RESOLUTION}...")
    
    basis_table, derivative_table = generate_spline_luts(
        spline_order=SPLINE_ORDER,
        lut_resolution=LUT_RESOLUTION,
        grid_size=GRID_SIZE,
        grid_range=GRID_RANGE
    )

    print(f"Basis LUT shape: {basis_table.shape}")
    print(f"Derivative LUT shape: {derivative_table.shape}")

    # Visualize the results
    plot_luts(basis_table, derivative_table, SPLINE_ORDER)
