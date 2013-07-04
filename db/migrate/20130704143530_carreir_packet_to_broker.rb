class CarreirPacketToBroker < ActiveRecord::Migration
  def self.up
    add_column :brokers, :carreir_packet_pdf, :string, :default => ''
  end
  def self.down
    remove_column :brokers, :carreir_packet_pdf
  end
end
