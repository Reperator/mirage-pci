(** PCIe devices
 * [Mirage_pci] defines the signature for MirageOS PCIe devices.
 * {e Release %%VERSION%% } *)

module Pci : sig
  (** The type for PCIe errors. *)
  type error = Mirage_device.error

  val pp_error : error Fmt.t
end

(** A PCIe device. *)
module type S = sig
  (** The type for PCIe errors. *)
  type error = private [> Pci.error]

  (** [pp_error] pretty-prints PCIe errors. *)
  val pp_error : error Fmt.t

  include Mirage_device.S

  (** The PCIe device's vendor ID. *)
  val vendor_id : t -> int

  (** The PCIe device's device ID. *)
  val device_id : t -> int

  (** The PCIe device's class code. *)
  val class_code : t -> int

  (** The PCIe device's subclass code. *)
  val subclass_code : t -> int

  (** The PCIe device's programming interface. *)
  val progif : t -> int

  (** The PCIe device's BAR0 region. *)
  val bar0 : t -> Cstruct.t option

  (** The PCIe device's BAR1 region. *)
  val bar1 : t -> Cstruct.t option

  (** The PCIe device's BAR2 region. *)
  val bar2 : t -> Cstruct.t option

  (** The PCIe device's BAR3 region. *)
  val bar3 : t -> Cstruct.t option

  (** The PCIe device's BAR4 region. *)
  val bar4 : t -> Cstruct.t option

  (** The PCIe device's BAR5 region. *)
  val bar5 : t -> Cstruct.t option

  (** The DMA memory allocated to this device. *)
  val dma : t -> Cstruct.t

  (** This device's identifier. *)
  val name : t -> string
end
