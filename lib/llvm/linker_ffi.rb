# Generated by ffi_gen. Please do not change this file by hand.

require 'ffi'

module LLVM::C
  extend FFI::Library
  ffi_lib ["libLLVM-5.0.so.1", "LLVM-5.0"]
  
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  # This enum is provided for backwards-compatibility only. It has no effect.
  # 
  # <em>This entry is only for documentation and no real method. The FFI::Enum can be accessed via #enum_type(:linker_mode).</em>
  # 
  # === Options:
  # :destroy_source ::
  #   
  # :preserve_source_removed ::
  #   This is the default behavior.
  # 
  # @method _enum_linker_mode_
  # @return [Symbol]
  # @scope class
  enum :linker_mode, [
    :destroy_source, 0,
    :preserve_source_removed, 1
  ]
  
  # Links the source module into the destination module. The source module is
  # destroyed.
  # The return value is true if an error occurred, false otherwise.
  # Use the diagnostic handler to get any diagnostic message.
  # 
  # @method link_modules2(dest, src)
  # @param [FFI::Pointer(ModuleRef)] dest 
  # @param [FFI::Pointer(ModuleRef)] src 
  # @return [Integer] 
  # @scope class
  attach_function :link_modules2, :LLVMLinkModules2, [:pointer, :pointer], :int
  
end
