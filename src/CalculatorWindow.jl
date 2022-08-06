using Gtk

# Construct the window
window = GtkWindow("Julia Calculator", 400, 600)
set_gtk_property!(window, :resizable, false)

# Create a basic layout
mainBox = GtkBox(:v)
push!(window, mainBox)

textBox = GtkBox(:h)
push!(mainBox, textBox)

buttonGrid = GtkGrid()

push!(mainBox, buttonGrid)

# Show the window
showall(window)