type subclass_unclassified =
  | Non_vga_compatible_device
  | Vga_compatible_device

type progif_ide_controller =
  | Isa_compatibility_mode_only
  | Pci_native_mode_only
  | Isa_compatibility_mode_supports_both_channels_switched_to_pci_native_mode
  | Pci_native_mode_supports_both_channels_switched_to_isa_compatibility_mode
  | Isa_compatibility_mode_only_supports_bus_mastering
  | Pci_native_mode_only_supports_bus_mastering
  | Isa_compatibility_mode_supports_both_channels_switched_to_pci_native_mode_supports_bus_mastering
  | Pci_native_mode_supports_both_channels_switched_to_isa_compatibility_mode_supports_bus_mastering

type progif_ata_controller =
  | Single_dma
  | Chained_dma

type progif_sata_controller =
  | Vendor_specific_interface
  | Ahci_1_0
  | Sata_serial_storage_bus

type progif_sas_controller =
  | Sas
  | Sas_serial_storage_bus

type progif_nvm_controller =
  | Nvmhci
  | Nvme

type subclass_mass_storage_controller =
  | Scsi_bus_controller
  | IDE_controller of progif_ide_controller
  | Floppy_disk_controller
  | IPI_bus_controller
  | Raid_controller
  | Ata_controller of progif_ata_controller
  | Sata_controller of progif_sata_controller
  | Sas_controller of progif_sas_controller
  | Nvm_controller of progif_nvm_controller
  | Other_mass_storage_controller

type subclass_network_controller =
  | Ethernet_controller
  | Token_ring_controlelr
  | Fddi_controller
  | Atm_controller
  | Isdn_controller
  | Worldfip_controller
  | Picmg_2_14_multi_computing
  | Infiniband_controller
  | Fabric_controller
  | Other_network_controller

type progif_vga_compatible_controller =
  | Vga_controller
  | Display_controller_8514_compatible_controller

type subclass_display_controller =
  | Vga_compatible_controller of progif_vga_compatible_controller
  | Xga_controller
  | Display_controller_3d_controller
  | Other_display_controller

type subclass_multimedia_controller =
  | Multimedia_video_controller
  | Multimedia_audio_controller
  | Computer_telephony_device
  | Audio_device
  | Other_multimedia_controller

type subclass_memory_controller =
  | Ram_controller
  | Flash_controller
  | Other_memory_controller

type progif_pci_to_pci_bridge =
  | Normal_decode
  | Subtractive_decode

type progif_raceway_bridge =
  | Transparent_mode
  | Endpoint_mode

type progif_semitransparent_pci_to_pci_bridge =
  | Primary_bus_towards_host_cpu
  | Secondary_bus_towards_host_cpu

type subclass_bridge_device =
  | Host_bridge
  | Isa_bridge
  | Eisa_bridge
  | Mca_bridge
  | Pci_to_pci_bridge of progif_pci_to_pci_bridge
  | Pcmcia_bridge
  | Nubus_bridge
  | Cardbus_bridge
  | Raceway_bridge of progif_raceway_bridge
  | Semitransparent_pci_to_pci_bridge of progif_semitransparent_pci_to_pci_bridge
  | Infiniband_to_pci_host_bridge
  | Other_bridge_device

type progif_serial_controller =
  | Serial_controller_8250_compatible
  | Serial_controller_16450_compatible
  | Serial_controller_16550_compatible
  | Serial_controller_16650_compatible
  | Serial_controller_16750_compatible
  | Serial_controller_16850_compatible
  | Serial_controller_16950_compatible

type progif_parallel_controller =
  | Standard_parallel_port
  | Bidirectional_parallel_port
  | Ecp_1_x_compliant_parallel_port
  | Ieee_1284_controller
  | Ieee_1284_target_device

type progif_modem =
  | Generic_modem
  | Hayes_16450_compatible_interface
  | Hayes_16550_compatible_interface
  | Hayes_16650_compatible_interface
  | Hayes_16750_compatible_interface

type subclass_simple_communication_controller =
  | Serial_controller of progif_serial_controller
  | Parallel_controlelr of progif_parallel_controller
  | Multiport_serial_controller
  | Modem of progif_modem
  | Ieee_488_1_2_controller
  | Smart_card
  | Other_simple_communication_controller

type progif_pic =
  | Generic_8259_compatible
  | Isa_compatible_pic
  | Eisa_compatible_pic
  | Io_apic_interrupt_controller
  | Iox_apic_interrupt_controller

type progif_dma_controller =
  | Generic_8237_compatible
  | Isa_compatible_dma_controller
  | Eisa_compatible_dma_controller

type progif_timer =
  | Generic_8254_compatible
  | Isa_compatible_timer
  | Eisa_compatible_timer
  | Hpet

type progif_rtc_controller =
  | Generic_rtc
  | Isa_compatible_rtc

type subclass_base_system_peripheral =
  | Pic of progif_pic
  | Dma_controller of progif_dma_controller
  | Timer of progif_timer
  | Rtc_controller of progif_rtc_controller
  | Pci_hot_plug_controller
  | Sd_host_controller
  | Iommu
  | Other_base_system_peripheral

type progif_gameport_controller =
  | Generic_gameport_controller
  | Extended_gameport_controller

type subclass_input_device_controller =
  | Keyboard_controller
  | Digitizer_pen
  | Mouse_controller
  | Scanner_controller
  | Gameport_controller of progif_gameport_controller
  | Other_input_device_controller

type subclass_docking_station =
  | Generic_docking_station
  | Other_docking_station

type subclass_processor =
  | Processor_386
  | Processor_486
  | Processor_pentium
  | Processor_pentium_pro
  | Processor_alpha
  | Processor_powerpc
  | Processor_mips
  | Processor_co_processor
  | Other_processor

type progif_firewire_controller =
  | Generic_firewire_controller
  | Ohci_firewire_controller

type progif_usb_controller =
  | Uhci_usb_controller
  | Ohci_usb_controller
  | Ehci_usb_controller
  | Xhci_usb_controller
  | Unspecified_usb_controller
  | Usb_device

type progif_ipmi_interface =
  | Smic
  | Keyboard_controller_style
  | Block_transfer

type subclass_serial_bus_controller =
  | Firewire_controller of progif_firewire_controller
  | Access_bus
  | Ssa
  | Usb_controller of progif_usb_controller
  | Fibre_channel
  | Smbus
  | Infiniband
  | Ipmi_interface of progif_ipmi_interface
  | Sercos_interface
  | Canbus
  | Other_serial_bus_controller

type subclass_wireless_controller =
  | Irda_compatible_controller
  | Consumer_ir_controller
  | Bluetooth_controller
  | Broadband_controller
  | Ethernet_controller_802_1a
  | Ethernet_controller_802_1b
  | Other_wireless_controller

type subclass_intelligent_controller =
  | I20

type subclass_satellite_communication_controller =
  | Satellite_tv_controller
  | Satellite_audio_controller
  | Satellite_voice_controller
  | Satellite_data_controller

type subclass_encryption_controller =
  | Network_and_computing_encryption_controller
  | Entertainment_encryption_controller
  | Other_encryption_controller

type subclass_signal_processing_controller =
  | Dpio_modules
  | Performance_counters
  | Communication_synchronizer
  | Signal_processing_management
  | Other_signal_processing_controller

type t =
  | Unclassified of subclass_unclassified
  | Mass_storage_controller of subclass_mass_storage_controller
  | Network_controller of subclass_network_controller
  | Display_controller of subclass_display_controller
  | Multimedia_controller of subclass_multimedia_controller
  | Memory_controller of subclass_memory_controller
  | Bridge_device of subclass_bridge_device
  | Simple_communication_controller of subclass_simple_communication_controller
  | Base_system_peripheral of subclass_base_system_peripheral
  | Input_device_controller of subclass_input_device_controller
  | Docking_station of subclass_docking_station
  | Processor of subclass_processor
  | Serial_bus_controller of subclass_serial_bus_controller
  | Wireless_controller of subclass_wireless_controller
  | Intelligent_controller of subclass_intelligent_controller
  | Satellite_communication_controller of subclass_satellite_communication_controller
  | Encryption_controller of subclass_encryption_controller
  | Signal_processing_controller of subclass_signal_processing_controller
  | Processing_accelerator
  | Non_essential_instrumentation
  | Co_processor
  | Unassigned_class
