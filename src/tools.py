import numpy as np

def insert_to_file(template_path, outfile_path, insertions):

    # Read the template content
    with open(template_path, "r") as f: lines = f.readlines()

    # Insert generated content below comments
    new_lines = []
    for line in lines:
        new_lines.append(line)
        for key, content in insertions.items():
            if key in line:
                new_lines.append(content)

    with open(outfile_path, "w") as f: f.writelines(new_lines)

def generate_spline_luts(spline_order, lut_resolution, grid_range, grid_size):
    """
    Generate B-spline basis and derivative lookup tables for a single uniform cell.
    """
    
    k = spline_order
    res = lut_resolution
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