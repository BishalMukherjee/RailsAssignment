class ExportPdf
  include Prawn::View

  def initialize(employee)
      @employee = employee
      line_items
  end

  def line_items
    move_down 20
    table line_item_rows
  end
    
  def line_item_rows
    [["Name", "Email", "Phone Number"]] +
    @employee.map do |item|
      [item.name, item.email, item.phone_number]
    end 
  end
end