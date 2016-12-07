################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Read the zproject/README.md for information about making permanent changes. #
################################################################################

require 'ffi'
require_relative 'ffi/version'

module Malamute
  module FFI
    module LibC
      extend ::FFI::Library
      ffi_lib ::FFI::Platform::LIBC
      attach_function :free, [ :pointer ], :void, blocking: true
    end

    extend ::FFI::Library

    def self.available?
      @available
    end

    begin
      lib_name = 'libmlm'
      lib_dirs = ['/usr/local/lib', '/opt/local/lib', '/usr/lib64']
      env_name = "#{lib_name.upcase}_PATH"
      lib_dirs = [*ENV[env_name].split(':'), *lib_dirs] if ENV[env_name]
      lib_paths = lib_dirs.map { |path| "#{path}/#{lib_name}.#{::FFI::Platform::LIBSUFFIX}" }
      ffi_lib lib_paths + [lib_name]
      @available = true
    rescue LoadError
      warn ""
      warn "WARNING: ::Malamute::FFI is not available without libmlm."
      warn ""
      @available = false
    end

    if available?
      opts = {
        blocking: true  # only necessary on MRI to deal with the GIL.
      }

      begin # DRAFT method
        attach_function :mlm_proto_new, [], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_new()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_new(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_destroy, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_destroy()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_destroy(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_recv, [:pointer, :pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_recv()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_recv(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_send, [:pointer, :pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_send()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_send(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_print, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_print()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_print(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_routing_id, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_routing_id()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_routing_id(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_routing_id, [:pointer, :pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_routing_id()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_routing_id(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_id, [:pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_id()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_id(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_id, [:pointer, :int], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_id()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_id(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_command, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_command()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_command(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_address, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_address()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_address(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_address, [:pointer, :string], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_address()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_address(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_stream, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_stream()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_stream(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_stream, [:pointer, :string], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_stream()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_stream(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_pattern, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_pattern()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_pattern(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_pattern, [:pointer, :string], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_pattern()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_pattern(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_subject, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_subject()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_subject(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_subject, [:pointer, :string], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_subject()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_subject(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_content, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_content()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_content(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_get_content, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_get_content()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_get_content(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_content, [:pointer, :pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_content()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_content(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_sender, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_sender()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_sender(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_sender, [:pointer, :string], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_sender()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_sender(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_tracker, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_tracker()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_tracker(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_tracker, [:pointer, :string], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_tracker()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_tracker(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_timeout, [:pointer], :uint32, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_timeout()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_timeout(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_timeout, [:pointer, :uint32], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_timeout()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_timeout(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_status_code, [:pointer], :uint16, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_status_code()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_status_code(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_status_code, [:pointer, :uint16], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_status_code()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_status_code(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_status_reason, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_status_reason()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_status_reason(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_status_reason, [:pointer, :string], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_status_reason()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_status_reason(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_amount, [:pointer], :uint16, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_amount()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_amount(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_set_amount, [:pointer, :uint16], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_set_amount()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_set_amount(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_proto_test, [:bool], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_proto_test()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_proto_test(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end

      require_relative 'ffi/mlm_proto'

      begin # DRAFT method
        attach_function :mlm_client_new, [], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_new()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_new(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_destroy, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_destroy()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_destroy(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_actor, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_actor()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_actor(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_msgpipe, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_msgpipe()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_msgpipe(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_connected, [:pointer], :bool, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_connected()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_connected(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_set_plain_auth, [:pointer, :string, :string], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_set_plain_auth()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_set_plain_auth(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_connect, [:pointer, :string, :uint32, :string], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_connect()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_connect(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_set_producer, [:pointer, :string], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_set_producer()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_set_producer(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_set_consumer, [:pointer, :string, :string], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_set_consumer()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_set_consumer(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_set_worker, [:pointer, :string, :string], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_set_worker()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_set_worker(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_send, [:pointer, :string, :pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_send()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_send(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_sendto, [:pointer, :string, :string, :string, :uint32, :pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_sendto()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_sendto(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_sendfor, [:pointer, :string, :string, :string, :uint32, :pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_sendfor()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_sendfor(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_recv, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_recv()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_recv(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_command, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_command()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_command(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_status, [:pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_status()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_status(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_reason, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_reason()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_reason(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_address, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_address()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_address(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_sender, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_sender()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_sender(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_subject, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_subject()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_subject(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_content, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_content()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_content(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_tracker, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_tracker()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_tracker(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_sendx, [:pointer, :string, :string, :varargs], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_sendx()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_sendx(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_sendtox, [:pointer, :string, :string, :string, :varargs], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_sendtox()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_sendtox(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_sendforx, [:pointer, :string, :string, :string, :varargs], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_sendforx()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_sendforx(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_recvx, [:pointer, :pointer, :pointer, :varargs], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_recvx()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_recvx(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_set_verbose, [:pointer, :bool], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_set_verbose()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_set_verbose(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end
      begin # DRAFT method
        attach_function :mlm_client_test, [:bool], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The DRAFT function mlm_client_test()" +
            " is not provided by the installed Malamute library."
        end
        def self.mlm_client_test(*)
          raise NotImplementedError, "compile Malamute with --enable-drafts"
        end
      end

      require_relative 'ffi/mlm_client'
    end
  end
end

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Read the zproject/README.md for information about making permanent changes. #
################################################################################
