# Generated by ffi_gen. Please do not change this file by hand.

require 'ffi'

module LLVM::C
  extend FFI::Library
  ffi_lib ["libLLVM-3.6.so.1", "LLVM-3.6"]
  
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  # @defgroup LLVMCExecutionEngine Execution Engine
  # @ingroup LLVMC
  # 
  # @{
  # 
  # @method link_in_mcjit()
  # @return [nil] 
  # @scope class
  attach_function :link_in_mcjit, :LLVMLinkInMCJIT, [], :void
  
  # (Not documented)
  # 
  # @method link_in_interpreter()
  # @return [nil] 
  # @scope class
  attach_function :link_in_interpreter, :LLVMLinkInInterpreter, [], :void
  
  # (Not documented)
  class OpaqueGenericValue < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class OpaqueExecutionEngine < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class OpaqueMCJITMemoryManager < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  # 
  # = Fields:
  # :opt_level ::
  #   (Integer) 
  # :code_model ::
  #   (unknown) 
  # :no_frame_pointer_elim ::
  #   (Integer) 
  # :enable_fast_i_sel ::
  #   (Integer) 
  # :mcjmm ::
  #   (OpaqueMCJITMemoryManager) 
  class MCJITCompilerOptions < FFI::Struct
    layout :opt_level, :uint,
           :code_model, :char,
           :no_frame_pointer_elim, :int,
           :enable_fast_i_sel, :int,
           :mcjmm, OpaqueMCJITMemoryManager
  end
  
  # ===-- Operations on generic values --------------------------------------===
  # 
  # @method create_generic_value_of_int(ty, n, is_signed)
  # @param [FFI::Pointer(TypeRef)] ty 
  # @param [Integer] n 
  # @param [Integer] is_signed 
  # @return [OpaqueGenericValue] 
  # @scope class
  attach_function :create_generic_value_of_int, :LLVMCreateGenericValueOfInt, [:pointer, :ulong_long, :int], OpaqueGenericValue
  
  # (Not documented)
  # 
  # @method create_generic_value_of_pointer(p)
  # @param [FFI::Pointer(*Void)] p 
  # @return [OpaqueGenericValue] 
  # @scope class
  attach_function :create_generic_value_of_pointer, :LLVMCreateGenericValueOfPointer, [:pointer], OpaqueGenericValue
  
  # (Not documented)
  # 
  # @method create_generic_value_of_float(ty, n)
  # @param [FFI::Pointer(TypeRef)] ty 
  # @param [Float] n 
  # @return [OpaqueGenericValue] 
  # @scope class
  attach_function :create_generic_value_of_float, :LLVMCreateGenericValueOfFloat, [:pointer, :double], OpaqueGenericValue
  
  # (Not documented)
  # 
  # @method generic_value_int_width(gen_val_ref)
  # @param [OpaqueGenericValue] gen_val_ref 
  # @return [Integer] 
  # @scope class
  attach_function :generic_value_int_width, :LLVMGenericValueIntWidth, [OpaqueGenericValue], :uint
  
  # (Not documented)
  # 
  # @method generic_value_to_int(gen_val, is_signed)
  # @param [OpaqueGenericValue] gen_val 
  # @param [Integer] is_signed 
  # @return [Integer] 
  # @scope class
  attach_function :generic_value_to_int, :LLVMGenericValueToInt, [OpaqueGenericValue, :int], :ulong_long
  
  # (Not documented)
  # 
  # @method generic_value_to_pointer(gen_val)
  # @param [OpaqueGenericValue] gen_val 
  # @return [FFI::Pointer(*Void)] 
  # @scope class
  attach_function :generic_value_to_pointer, :LLVMGenericValueToPointer, [OpaqueGenericValue], :pointer
  
  # (Not documented)
  # 
  # @method generic_value_to_float(ty_ref, gen_val)
  # @param [FFI::Pointer(TypeRef)] ty_ref 
  # @param [OpaqueGenericValue] gen_val 
  # @return [Float] 
  # @scope class
  attach_function :generic_value_to_float, :LLVMGenericValueToFloat, [:pointer, OpaqueGenericValue], :double
  
  # (Not documented)
  # 
  # @method dispose_generic_value(gen_val)
  # @param [OpaqueGenericValue] gen_val 
  # @return [nil] 
  # @scope class
  attach_function :dispose_generic_value, :LLVMDisposeGenericValue, [OpaqueGenericValue], :void
  
  # ===-- Operations on execution engines -----------------------------------===
  # 
  # @method create_execution_engine_for_module(out_ee, m, out_error)
  # @param [FFI::Pointer(*ExecutionEngineRef)] out_ee 
  # @param [FFI::Pointer(ModuleRef)] m 
  # @param [FFI::Pointer(**CharS)] out_error 
  # @return [Integer] 
  # @scope class
  attach_function :create_execution_engine_for_module, :LLVMCreateExecutionEngineForModule, [:pointer, :pointer, :pointer], :int
  
  # (Not documented)
  # 
  # @method create_interpreter_for_module(out_interp, m, out_error)
  # @param [FFI::Pointer(*ExecutionEngineRef)] out_interp 
  # @param [FFI::Pointer(ModuleRef)] m 
  # @param [FFI::Pointer(**CharS)] out_error 
  # @return [Integer] 
  # @scope class
  attach_function :create_interpreter_for_module, :LLVMCreateInterpreterForModule, [:pointer, :pointer, :pointer], :int
  
  # (Not documented)
  # 
  # @method create_jit_compiler_for_module(out_jit, m, opt_level, out_error)
  # @param [FFI::Pointer(*ExecutionEngineRef)] out_jit 
  # @param [FFI::Pointer(ModuleRef)] m 
  # @param [Integer] opt_level 
  # @param [FFI::Pointer(**CharS)] out_error 
  # @return [Integer] 
  # @scope class
  attach_function :create_jit_compiler_for_module, :LLVMCreateJITCompilerForModule, [:pointer, :pointer, :uint, :pointer], :int
  
  # (Not documented)
  # 
  # @method initialize_mcjit_compiler_options(options, size_of_options)
  # @param [MCJITCompilerOptions] options 
  # @param [Integer] size_of_options 
  # @return [nil] 
  # @scope class
  attach_function :initialize_mcjit_compiler_options, :LLVMInitializeMCJITCompilerOptions, [MCJITCompilerOptions, :ulong], :void
  
  # Create an MCJIT execution engine for a module, with the given options. It is
  # the responsibility of the caller to ensure that all fields in Options up to
  # the given SizeOfOptions are initialized. It is correct to pass a smaller
  # value of SizeOfOptions that omits some fields. The canonical way of using
  # this is:
  # 
  # LLVMMCJITCompilerOptions options;
  # LLVMInitializeMCJITCompilerOptions(&options, sizeof(options));
  # ... fill in those options you care about
  # LLVMCreateMCJITCompilerForModule(&jit, mod, &options, sizeof(options),
  #                                  &error);
  # 
  # Note that this is also correct, though possibly suboptimal:
  # 
  # LLVMCreateMCJITCompilerForModule(&jit, mod, 0, 0, &error);
  # 
  # @method create_mcjit_compiler_for_module(out_jit, m, options, size_of_options, out_error)
  # @param [FFI::Pointer(*ExecutionEngineRef)] out_jit 
  # @param [FFI::Pointer(ModuleRef)] m 
  # @param [MCJITCompilerOptions] options 
  # @param [Integer] size_of_options 
  # @param [FFI::Pointer(**CharS)] out_error 
  # @return [Integer] 
  # @scope class
  attach_function :create_mcjit_compiler_for_module, :LLVMCreateMCJITCompilerForModule, [:pointer, :pointer, MCJITCompilerOptions, :ulong, :pointer], :int
  
  # Deprecated: Use LLVMCreateExecutionEngineForModule instead.
  # 
  # @method create_execution_engine(out_ee, mp, out_error)
  # @param [FFI::Pointer(*ExecutionEngineRef)] out_ee 
  # @param [FFI::Pointer(ModuleProviderRef)] mp 
  # @param [FFI::Pointer(**CharS)] out_error 
  # @return [Integer] 
  # @scope class
  attach_function :create_execution_engine, :LLVMCreateExecutionEngine, [:pointer, :pointer, :pointer], :int
  
  # Deprecated: Use LLVMCreateInterpreterForModule instead.
  # 
  # @method create_interpreter(out_interp, mp, out_error)
  # @param [FFI::Pointer(*ExecutionEngineRef)] out_interp 
  # @param [FFI::Pointer(ModuleProviderRef)] mp 
  # @param [FFI::Pointer(**CharS)] out_error 
  # @return [Integer] 
  # @scope class
  attach_function :create_interpreter, :LLVMCreateInterpreter, [:pointer, :pointer, :pointer], :int
  
  # Deprecated: Use LLVMCreateJITCompilerForModule instead.
  # 
  # @method create_jit_compiler(out_jit, mp, opt_level, out_error)
  # @param [FFI::Pointer(*ExecutionEngineRef)] out_jit 
  # @param [FFI::Pointer(ModuleProviderRef)] mp 
  # @param [Integer] opt_level 
  # @param [FFI::Pointer(**CharS)] out_error 
  # @return [Integer] 
  # @scope class
  attach_function :create_jit_compiler, :LLVMCreateJITCompiler, [:pointer, :pointer, :uint, :pointer], :int
  
  # (Not documented)
  # 
  # @method dispose_execution_engine(ee)
  # @param [OpaqueExecutionEngine] ee 
  # @return [nil] 
  # @scope class
  attach_function :dispose_execution_engine, :LLVMDisposeExecutionEngine, [OpaqueExecutionEngine], :void
  
  # (Not documented)
  # 
  # @method run_static_constructors(ee)
  # @param [OpaqueExecutionEngine] ee 
  # @return [nil] 
  # @scope class
  attach_function :run_static_constructors, :LLVMRunStaticConstructors, [OpaqueExecutionEngine], :void
  
  # (Not documented)
  # 
  # @method run_static_destructors(ee)
  # @param [OpaqueExecutionEngine] ee 
  # @return [nil] 
  # @scope class
  attach_function :run_static_destructors, :LLVMRunStaticDestructors, [OpaqueExecutionEngine], :void
  
  # (Not documented)
  # 
  # @method run_function_as_main(ee, f, arg_c, arg_v, env_p)
  # @param [OpaqueExecutionEngine] ee 
  # @param [FFI::Pointer(ValueRef)] f 
  # @param [Integer] arg_c 
  # @param [FFI::Pointer(**CharS)] arg_v 
  # @param [FFI::Pointer(**CharS)] env_p 
  # @return [Integer] 
  # @scope class
  attach_function :run_function_as_main, :LLVMRunFunctionAsMain, [OpaqueExecutionEngine, :pointer, :uint, :pointer, :pointer], :int
  
  # (Not documented)
  # 
  # @method run_function(ee, f, num_args, args)
  # @param [OpaqueExecutionEngine] ee 
  # @param [FFI::Pointer(ValueRef)] f 
  # @param [Integer] num_args 
  # @param [FFI::Pointer(*GenericValueRef)] args 
  # @return [OpaqueGenericValue] 
  # @scope class
  attach_function :run_function, :LLVMRunFunction, [OpaqueExecutionEngine, :pointer, :uint, :pointer], OpaqueGenericValue
  
  # (Not documented)
  # 
  # @method free_machine_code_for_function(ee, f)
  # @param [OpaqueExecutionEngine] ee 
  # @param [FFI::Pointer(ValueRef)] f 
  # @return [nil] 
  # @scope class
  attach_function :free_machine_code_for_function, :LLVMFreeMachineCodeForFunction, [OpaqueExecutionEngine, :pointer], :void
  
  # (Not documented)
  # 
  # @method add_module(ee, m)
  # @param [OpaqueExecutionEngine] ee 
  # @param [FFI::Pointer(ModuleRef)] m 
  # @return [nil] 
  # @scope class
  attach_function :add_module, :LLVMAddModule, [OpaqueExecutionEngine, :pointer], :void
  
  # Deprecated: Use LLVMAddModule instead.
  # 
  # @method add_module_provider(ee, mp)
  # @param [OpaqueExecutionEngine] ee 
  # @param [FFI::Pointer(ModuleProviderRef)] mp 
  # @return [nil] 
  # @scope class
  attach_function :add_module_provider, :LLVMAddModuleProvider, [OpaqueExecutionEngine, :pointer], :void
  
  # (Not documented)
  # 
  # @method remove_module(ee, m, out_mod, out_error)
  # @param [OpaqueExecutionEngine] ee 
  # @param [FFI::Pointer(ModuleRef)] m 
  # @param [FFI::Pointer(*ModuleRef)] out_mod 
  # @param [FFI::Pointer(**CharS)] out_error 
  # @return [Integer] 
  # @scope class
  attach_function :remove_module, :LLVMRemoveModule, [OpaqueExecutionEngine, :pointer, :pointer, :pointer], :int
  
  # Deprecated: Use LLVMRemoveModule instead.
  # 
  # @method remove_module_provider(ee, mp, out_mod, out_error)
  # @param [OpaqueExecutionEngine] ee 
  # @param [FFI::Pointer(ModuleProviderRef)] mp 
  # @param [FFI::Pointer(*ModuleRef)] out_mod 
  # @param [FFI::Pointer(**CharS)] out_error 
  # @return [Integer] 
  # @scope class
  attach_function :remove_module_provider, :LLVMRemoveModuleProvider, [OpaqueExecutionEngine, :pointer, :pointer, :pointer], :int
  
  # (Not documented)
  # 
  # @method find_function(ee, name, out_fn)
  # @param [OpaqueExecutionEngine] ee 
  # @param [String] name 
  # @param [FFI::Pointer(*ValueRef)] out_fn 
  # @return [Integer] 
  # @scope class
  attach_function :find_function, :LLVMFindFunction, [OpaqueExecutionEngine, :string, :pointer], :int
  
  # (Not documented)
  # 
  # @method recompile_and_relink_function(ee, fn)
  # @param [OpaqueExecutionEngine] ee 
  # @param [FFI::Pointer(ValueRef)] fn 
  # @return [FFI::Pointer(*Void)] 
  # @scope class
  attach_function :recompile_and_relink_function, :LLVMRecompileAndRelinkFunction, [OpaqueExecutionEngine, :pointer], :pointer
  
  # (Not documented)
  # 
  # @method get_execution_engine_target_data(ee)
  # @param [OpaqueExecutionEngine] ee 
  # @return [FFI::Pointer(TargetDataRef)] 
  # @scope class
  attach_function :get_execution_engine_target_data, :LLVMGetExecutionEngineTargetData, [OpaqueExecutionEngine], :pointer
  
  # (Not documented)
  # 
  # @method get_execution_engine_target_machine(ee)
  # @param [OpaqueExecutionEngine] ee 
  # @return [FFI::Pointer(TargetMachineRef)] 
  # @scope class
  attach_function :get_execution_engine_target_machine, :LLVMGetExecutionEngineTargetMachine, [OpaqueExecutionEngine], :pointer
  
  # (Not documented)
  # 
  # @method add_global_mapping(ee, global, addr)
  # @param [OpaqueExecutionEngine] ee 
  # @param [FFI::Pointer(ValueRef)] global 
  # @param [FFI::Pointer(*Void)] addr 
  # @return [nil] 
  # @scope class
  attach_function :add_global_mapping, :LLVMAddGlobalMapping, [OpaqueExecutionEngine, :pointer, :pointer], :void
  
  # (Not documented)
  # 
  # @method get_pointer_to_global(ee, global)
  # @param [OpaqueExecutionEngine] ee 
  # @param [FFI::Pointer(ValueRef)] global 
  # @return [FFI::Pointer(*Void)] 
  # @scope class
  attach_function :get_pointer_to_global, :LLVMGetPointerToGlobal, [OpaqueExecutionEngine, :pointer], :pointer
  
  # (Not documented)
  # 
  # @method get_global_value_address(ee, name)
  # @param [OpaqueExecutionEngine] ee 
  # @param [String] name 
  # @return [Integer] 
  # @scope class
  attach_function :get_global_value_address, :LLVMGetGlobalValueAddress, [OpaqueExecutionEngine, :string], :ulong
  
  # (Not documented)
  # 
  # @method get_function_address(ee, name)
  # @param [OpaqueExecutionEngine] ee 
  # @param [String] name 
  # @return [Integer] 
  # @scope class
  attach_function :get_function_address, :LLVMGetFunctionAddress, [OpaqueExecutionEngine, :string], :ulong
  
  # ===-- Operations on memory managers -------------------------------------===
  # 
  # <em>This entry is only for documentation and no real method.</em>
  # 
  # @method _callback_memory_manager_allocate_code_section_callback_(opaque, size, alignment, section_id, section_name)
  # @param [FFI::Pointer(*Void)] opaque 
  # @param [Integer] size 
  # @param [Integer] alignment 
  # @param [Integer] section_id 
  # @param [String] section_name 
  # @return [Integer] 
  # @scope class
  callback :memory_manager_allocate_code_section_callback, [:pointer, :ulong, :uint, :uint, :string], :uchar
  
  # (Not documented)
  # 
  # <em>This entry is only for documentation and no real method.</em>
  # 
  # @method _callback_memory_manager_allocate_data_section_callback_(opaque, size, alignment, section_id, section_name, is_read_only)
  # @param [FFI::Pointer(*Void)] opaque 
  # @param [Integer] size 
  # @param [Integer] alignment 
  # @param [Integer] section_id 
  # @param [String] section_name 
  # @param [Integer] is_read_only 
  # @return [Integer] 
  # @scope class
  callback :memory_manager_allocate_data_section_callback, [:pointer, :ulong, :uint, :uint, :string, :int], :uchar
  
  # (Not documented)
  # 
  # <em>This entry is only for documentation and no real method.</em>
  # 
  # @method _callback_memory_manager_finalize_memory_callback_(opaque, err_msg)
  # @param [FFI::Pointer(*Void)] opaque 
  # @param [FFI::Pointer(**CharS)] err_msg 
  # @return [Integer] 
  # @scope class
  callback :memory_manager_finalize_memory_callback, [:pointer, :pointer], :int
  
  # Create a simple custom MCJIT memory manager. This memory manager can
  # intercept allocations in a module-oblivious way. This will return NULL
  # if any of the passed functions are NULL.
  # 
  # @param Opaque An opaque client object to pass back to the callbacks.
  # @param AllocateCodeSection Allocate a block of memory for executable code.
  # @param AllocateDataSection Allocate a block of memory for data.
  # @param FinalizeMemory Set page permissions and flush cache. Return 0 on
  #   success, 1 on error.
  # 
  # @method create_simple_mcjit_memory_manager(opaque, allocate_code_section, allocate_data_section, finalize_memory, destroy)
  # @param [FFI::Pointer(*Void)] opaque 
  # @param [Proc(_callback_memory_manager_allocate_code_section_callback_)] allocate_code_section 
  # @param [Proc(_callback_memory_manager_allocate_data_section_callback_)] allocate_data_section 
  # @param [Proc(_callback_memory_manager_finalize_memory_callback_)] finalize_memory 
  # @param [FFI::Pointer(MemoryManagerDestroyCallback)] destroy 
  # @return [OpaqueMCJITMemoryManager] 
  # @scope class
  attach_function :create_simple_mcjit_memory_manager, :LLVMCreateSimpleMCJITMemoryManager, [:pointer, :memory_manager_allocate_code_section_callback, :memory_manager_allocate_data_section_callback, :memory_manager_finalize_memory_callback, :pointer], OpaqueMCJITMemoryManager
  
  # (Not documented)
  # 
  # @method dispose_mcjit_memory_manager(mm)
  # @param [OpaqueMCJITMemoryManager] mm 
  # @return [nil] 
  # @scope class
  attach_function :dispose_mcjit_memory_manager, :LLVMDisposeMCJITMemoryManager, [OpaqueMCJITMemoryManager], :void
  
end
