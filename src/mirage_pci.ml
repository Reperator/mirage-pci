module Pci = struct
  type error = Mirage_device.error

  let pp_error ppf = function
    | #Mirage_device.error as e -> Mirage_device.pp_error ppf e
end

module type S = sig
  type error = private [> Pci.error]

  val pp_error : error Fmt.t

  include Mirage_device.S

  val vendor_id : t -> int

  val device_id : t -> int

  val class_code : t -> int

  val subclass_code : t -> int

  val progif : t -> int

  val bar0 : t -> Cstruct.t option

  val bar1 : t -> Cstruct.t option

  val bar2 : t -> Cstruct.t option

  val bar3 : t -> Cstruct.t option

  val bar4 : t -> Cstruct.t option

  val bar5 : t -> Cstruct.t option

  val dma : t -> Cstruct.t

  val name : t -> string
end

module Dma = struct
  type error = Mirage_device.error

  let pp_error ppf = function
    | #Mirage_device.error as e -> Mirage_device.pp_error ppf e
end

module type DMA = sig
  type error = private [> Dma.error]

  val pp_error : error Fmt.t

  include Mirage_device.S

  val dma : t -> Cstruct.t option
end
