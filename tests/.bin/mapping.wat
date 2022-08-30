(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32) (result i32)))
  (import "env" "abort" (func $~lib/builtins/abort (type 7)))
  (import "conversion" "typeConversion.stringToH160" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160 (type 0)))
  (import "conversion" "typeConversion.bytesToHex" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex (type 0)))
  (import "index" "store.get" (func $~lib/@graphprotocol/graph-ts/index/store.get (type 2)))
  (import "index" "store.set" (func $~lib/@graphprotocol/graph-ts/index/store.set (type 4)))
  (import "assert" "_assert.fieldEquals" (func $~lib/matchstick-as/assembly/assert/_assert.fieldEquals (type 9)))
  (import "index" "_registerTest" (func $~lib/matchstick-as/assembly/index/_registerTest (type 4)))
  (import "store" "clearStore" (func $~lib/matchstick-as/assembly/store/clearStore (type 1)))
  (import "index" "_registerDescribe" (func $~lib/matchstick-as/assembly/index/_registerDescribe (type 3)))
  (import "numbers" "bigInt.plus" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.plus (type 2)))
  (import "numbers" "bigInt.minus" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.minus (type 2)))
  (func $~lib/rt/stub/__alloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 33
      i32.const 29
      call $~lib/builtins/abort
      unreachable
    end
    global.get $~lib/rt/stub/offset
    local.tee 3
    i32.const 4
    i32.add
    local.tee 4
    local.get 0
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.tee 5
    i32.add
    local.tee 0
    memory.size
    local.tee 2
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 1
    i32.gt_u
    if  ;; label = @1
      local.get 2
      local.get 0
      local.get 1
      i32.sub
      i32.const 65535
      i32.add
      i32.const -65536
      i32.and
      i32.const 16
      i32.shr_u
      local.tee 1
      local.get 1
      local.get 2
      i32.lt_s
      select
      memory.grow
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 1
        memory.grow
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          unreachable
        end
      end
    end
    local.get 0
    global.set $~lib/rt/stub/offset
    local.get 3
    local.get 5
    i32.store
    local.get 4)
  (func $~lib/rt/stub/__new (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 1073741804
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 86
      i32.const 30
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    call $~lib/rt/stub/__alloc
    local.tee 3
    i32.const 4
    i32.sub
    local.tee 2
    i32.const 0
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 3
    i32.const 16
    i32.add)
  (func $~lib/memory/memory.fill (type 3) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8
      local.get 0
      local.get 1
      i32.add
      local.tee 2
      i32.const 1
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=1
      local.get 0
      i32.const 0
      i32.store8 offset=2
      local.get 2
      i32.const 2
      i32.sub
      i32.const 0
      i32.store8
      local.get 2
      i32.const 3
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 6
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=3
      local.get 2
      i32.const 4
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 2
      i32.add
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.tee 1
      i32.const 4
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 12
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 8
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 24
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 1
      i32.const 28
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 24
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 20
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 16
      i32.sub
      i32.const 0
      i32.store
      local.get 0
      local.get 0
      i32.const 4
      i32.and
      i32.const 24
      i32.add
      local.tee 1
      i32.add
      local.set 0
      local.get 2
      local.get 1
      i32.sub
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 32
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 0
          i64.const 0
          i64.store offset=24
          local.get 1
          i32.const 32
          i32.sub
          local.set 1
          local.get 0
          i32.const 32
          i32.add
          local.set 0
          br 1 (;@2;)
        end
      end
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor (type 0) (param i32) (result i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 4
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 6
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    i32.const 16
    i32.const 8
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 1
    local.get 2
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor (type 2) (param i32 i32) (result i32)
    (local i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          i32.eqz
          if  ;; label = @4
            i32.const 12
            i32.const 11
            call $~lib/rt/stub/__new
            local.set 0
          end
          local.get 0
        end
        i32.eqz
        if  ;; label = @3
          i32.const 12
          i32.const 12
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 12
        i32.const 2
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1344
      i32.const 1552
      i32.const 18
      i32.const 57
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 1
    call $~lib/memory/memory.fill
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0)
  (func $~lib/typedarray/Uint8Array#__set (type 4) (param i32 i32 i32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.ge_u
    if  ;; label = @1
      i32.const 1616
      i32.const 1680
      i32.const 175
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    local.get 2
    i32.store8)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32 (type 0) (param i32) (result i32)
    (local i32)
    i32.const 0
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 1
    i32.const 0
    local.get 0
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 1
    local.get 0
    i32.const 8
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 2
    local.get 0
    i32.const 16
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 3
    local.get 0
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Uint8Array#__set
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor (type 8) (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 0
      i32.eqz
      if  ;; label = @2
        i32.const 28
        i32.const 15
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    local.get 5
    i32.store offset=16
    local.get 0
    local.get 6
    i32.store offset=20
    local.get 0
    local.get 7
    i32.store offset=24
    local.get 0)
  (func $~lib/util/memory/memcpy (type 4) (param i32 i32 i32)
    (local i32 i32 i32)
    loop  ;; label = @1
      local.get 1
      i32.const 3
      i32.and
      i32.const 0
      local.get 2
      select
      if  ;; label = @2
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 3
    i32.and
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 0
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 0
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 1
          i32.const 16
          i32.add
          local.set 1
          local.get 0
          i32.const 16
          i32.add
          local.set 0
          local.get 2
          i32.const 16
          i32.sub
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 2
      i32.const 8
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 0
          i32.const 8
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 4
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 2
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load16_u
          i32.store16
          local.get 1
          i32.const 2
          i32.add
          local.set 1
          local.get 0
          i32.const 2
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
      end
      return
    end
    local.get 2
    i32.const 32
    i32.ge_u
    if  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 1
            i32.load
            local.set 5
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.load8_u
            i32.store8
            local.get 0
            local.tee 4
            i32.const 2
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 2
            i32.add
            local.set 1
            local.get 4
            local.get 3
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const 3
            i32.sub
            local.set 2
            loop  ;; label = @5
              local.get 2
              i32.const 17
              i32.ge_u
              if  ;; label = @6
                local.get 0
                local.get 1
                i32.load offset=1
                local.tee 3
                i32.const 8
                i32.shl
                local.get 5
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=5
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=9
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=8
                local.get 0
                local.get 1
                i32.load offset=13
                local.tee 5
                i32.const 8
                i32.shl
                local.get 3
                i32.const 24
                i32.shr_u
                i32.or
                i32.store offset=12
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 0
                i32.const 16
                i32.add
                local.set 0
                local.get 2
                i32.const 16
                i32.sub
                local.set 2
                br 1 (;@5;)
              end
            end
            br 2 (;@2;)
          end
          local.get 1
          i32.load
          local.set 5
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 0
          local.tee 4
          i32.const 2
          i32.add
          local.set 0
          local.get 1
          local.tee 3
          i32.const 2
          i32.add
          local.set 1
          local.get 4
          local.get 3
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 2
          i32.const 2
          i32.sub
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const 18
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.load offset=2
              local.tee 3
              i32.const 16
              i32.shl
              local.get 5
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=6
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=10
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=8
              local.get 0
              local.get 1
              i32.load offset=14
              local.tee 5
              i32.const 16
              i32.shl
              local.get 3
              i32.const 16
              i32.shr_u
              i32.or
              i32.store offset=12
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 2
              i32.const 16
              i32.sub
              local.set 2
              br 1 (;@4;)
            end
          end
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 5
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 19
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.load offset=3
            local.tee 3
            i32.const 24
            i32.shl
            local.get 5
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=7
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=11
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=8
            local.get 0
            local.get 1
            i32.load offset=15
            local.tee 5
            i32.const 24
            i32.shl
            local.get 3
            i32.const 8
            i32.shr_u
            i32.or
            i32.store offset=12
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            local.get 2
            i32.const 16
            i32.sub
            local.set 2
            br 1 (;@3;)
          end
        end
      end
    end
    local.get 2
    i32.const 16
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 4
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 2
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
    end)
  (func $~lib/memory/memory.copy (type 4) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      local.set 4
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.sub
      local.get 4
      i32.sub
      i32.const 0
      local.get 4
      i32.const 1
      i32.shl
      i32.sub
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 4
        call $~lib/util/memory/memcpy
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.set 4
              local.get 0
              local.tee 2
              i32.const 1
              i32.add
              local.set 0
              local.get 1
              local.tee 3
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              local.get 3
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i64.load
              i64.store
              local.get 4
              i32.const 8
              i32.sub
              local.set 4
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 0
            local.tee 2
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            local.get 3
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 1
            i32.sub
            local.set 4
            br 1 (;@3;)
          end
        end
      else
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 4
            i32.add
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 4
              i32.const 8
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i64.load
              i64.store
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 4
            i32.const 1
            i32.sub
            local.tee 4
            local.get 0
            i32.add
            local.get 1
            local.get 4
            i32.add
            i32.load8_u
            i32.store8
            br 1 (;@3;)
          end
        end
      end
    end)
  (func $~lib/matchstick-as/assembly/defaults/newMockEvent (type 6) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.tee 2
    local.set 7
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.set 0
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    local.set 5
    i32.const 60
    i32.const 16
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 0
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 5
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=16
    local.get 1
    local.get 0
    i32.store offset=20
    local.get 1
    local.get 0
    i32.store offset=24
    local.get 1
    local.get 2
    i32.store offset=28
    local.get 1
    local.get 2
    i32.store offset=32
    local.get 1
    local.get 2
    i32.store offset=36
    local.get 1
    local.get 2
    i32.store offset=40
    local.get 1
    local.get 2
    i32.store offset=44
    local.get 1
    local.get 2
    i32.store offset=48
    local.get 1
    local.get 2
    i32.store offset=52
    local.get 1
    local.get 2
    i32.store offset=56
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.set 0
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    local.set 4
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.set 6
    i32.const 36
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 3
    local.get 6
    i32.store
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 3
    local.get 4
    i32.store offset=8
    local.get 3
    local.get 4
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=16
    local.get 3
    local.get 0
    i32.store offset=20
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 6
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=32
    i32.const 0
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2352
    i32.const 0
    call $~lib/memory/memory.copy
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 4
    local.get 0
    i32.store
    local.get 4
    local.get 0
    i32.store offset=4
    local.get 4
    i32.const 0
    i32.store offset=8
    local.get 4
    i32.const 0
    i32.store offset=12
    i32.const 0
    local.get 5
    local.get 7
    local.get 2
    i32.const 1744
    local.get 1
    local.get 3
    local.get 4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor (type 6) (result i32)
    (local i32 i32)
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 32
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    i32.load offset=8
    i32.const 20
    i32.ne
    if  ;; label = @1
      i32.const 2416
      i32.const 2512
      i32.const 197
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=12
    local.tee 10
    i32.const 1
    i32.add
    local.tee 11
    local.tee 4
    local.get 0
    i32.load offset=8
    local.tee 8
    i32.const 2
    i32.shr_u
    i32.gt_u
    if  ;; label = @1
      local.get 4
      i32.const 268435455
      i32.gt_u
      if  ;; label = @2
        i32.const 1344
        i32.const 1392
        i32.const 17
        i32.const 48
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      i32.load
      local.tee 12
      local.set 5
      local.get 8
      i32.const 1
      i32.shl
      local.tee 2
      i32.const 1073741820
      local.get 2
      i32.const 1073741820
      i32.lt_u
      select
      local.tee 3
      local.get 4
      i32.const 8
      local.get 4
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee 2
      local.get 2
      local.get 3
      i32.lt_u
      select
      local.tee 7
      i32.const 1073741804
      i32.gt_u
      if  ;; label = @2
        i32.const 1056
        i32.const 1120
        i32.const 99
        i32.const 30
        call $~lib/builtins/abort
        unreachable
      end
      local.get 7
      i32.const 16
      i32.add
      local.set 4
      local.get 5
      i32.const 16
      i32.sub
      local.tee 3
      i32.const 15
      i32.and
      i32.const 1
      local.get 3
      select
      if  ;; label = @2
        i32.const 0
        i32.const 1120
        i32.const 45
        i32.const 3
        call $~lib/builtins/abort
        unreachable
      end
      global.get $~lib/rt/stub/offset
      local.get 3
      local.get 3
      i32.const 4
      i32.sub
      local.tee 9
      i32.load
      local.tee 5
      i32.add
      i32.eq
      local.set 2
      local.get 4
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      i32.const 4
      i32.sub
      local.set 6
      local.get 4
      local.get 5
      i32.gt_u
      if  ;; label = @2
        local.get 2
        if  ;; label = @3
          local.get 4
          i32.const 1073741820
          i32.gt_u
          if  ;; label = @4
            i32.const 1056
            i32.const 1120
            i32.const 52
            i32.const 33
            call $~lib/builtins/abort
            unreachable
          end
          local.get 3
          local.get 6
          i32.add
          local.tee 4
          memory.size
          local.tee 5
          i32.const 16
          i32.shl
          i32.const 15
          i32.add
          i32.const -16
          i32.and
          local.tee 2
          i32.gt_u
          if  ;; label = @4
            local.get 5
            local.get 4
            local.get 2
            i32.sub
            i32.const 65535
            i32.add
            i32.const -65536
            i32.and
            i32.const 16
            i32.shr_u
            local.tee 2
            local.get 2
            local.get 5
            i32.lt_s
            select
            memory.grow
            i32.const 0
            i32.lt_s
            if  ;; label = @5
              local.get 2
              memory.grow
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                unreachable
              end
            end
          end
          local.get 4
          global.set $~lib/rt/stub/offset
          local.get 9
          local.get 6
          i32.store
        else
          local.get 6
          local.get 5
          i32.const 1
          i32.shl
          local.tee 2
          local.get 2
          local.get 6
          i32.lt_u
          select
          call $~lib/rt/stub/__alloc
          local.tee 2
          local.get 3
          local.get 5
          call $~lib/memory/memory.copy
          local.get 2
          local.set 3
        end
      else
        local.get 2
        if  ;; label = @3
          local.get 3
          local.get 6
          i32.add
          global.set $~lib/rt/stub/offset
          local.get 9
          local.get 6
          i32.store
        end
      end
      local.get 3
      i32.const 4
      i32.sub
      local.get 7
      i32.store offset=16
      local.get 8
      local.get 3
      i32.const 16
      i32.add
      local.tee 2
      i32.add
      local.get 7
      local.get 8
      i32.sub
      call $~lib/memory/memory.fill
      local.get 2
      local.get 12
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.store
        local.get 0
        local.get 2
        i32.store offset=4
      end
      local.get 0
      local.get 7
      i32.store offset=8
    end
    local.get 0
    i32.load offset=4
    local.get 10
    i32.const 2
    i32.shl
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 11
    i32.store offset=12)
  (func $tests/utils/createNewNonProfitAddedEvent (type 6) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 0
    i32.load
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 0
    i32.load offset=16
    local.set 5
    local.get 0
    i32.load offset=20
    local.set 6
    local.get 0
    i32.load offset=24
    local.set 0
    i32.const 28
    i32.const 14
    call $~lib/rt/stub/__new
    local.get 2
    local.get 1
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor
    local.tee 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    i32.const 2240
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 1
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 2384
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    i32.const 2128
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2624
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 0
    i32.load offset=24
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get (type 2) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=12
    i32.ge_u
    if  ;; label = @1
      i32.const 1616
      i32.const 1392
      i32.const 106
      i32.const 42
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 2672
      i32.const 1392
      i32.const 110
      i32.const 40
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 2800
      i32.const 2512
      i32.const 53
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/string/String.__eq (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.get 1
    i32.eq
    if  ;; label = @1
      i32.const 1
      return
    end
    local.get 1
    i32.const 0
    local.get 0
    select
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ne
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      local.get 0
      local.set 2
      local.get 1
      local.set 3
      local.get 2
      i32.const 7
      i32.and
      local.get 3
      i32.const 7
      i32.and
      i32.or
      i32.const 1
      local.get 4
      local.tee 0
      i32.const 4
      i32.ge_u
      select
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i64.load
          local.get 3
          i64.load
          i64.eq
          if  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            local.get 3
            i32.const 8
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.sub
            local.tee 0
            i32.const 4
            i32.ge_u
            br_if 1 (;@3;)
          end
        end
      end
      loop  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 1
        i32.sub
        local.set 0
        local.get 1
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 1
          local.get 3
          i32.load16_u
          local.tee 4
          i32.ne
          if  ;; label = @4
            local.get 1
            local.get 4
            i32.sub
            br 3 (;@1;)
          end
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    i32.eqz)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set (type 4) (param i32 i32 i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 4
        local.get 3
        i32.load
        i32.load offset=12
        i32.lt_s
        if  ;; label = @3
          local.get 3
          i32.load
          local.get 4
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
          i32.load
          local.get 1
          call $~lib/string/String.__eq
          if  ;; label = @4
            local.get 3
            i32.load
            local.get 4
            call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
            br 3 (;@1;)
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    local.tee 3
    if  ;; label = @1
      local.get 3
      local.get 2
      i32.store offset=4
    else
      i32.const 8
      i32.const 7
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=4
      local.get 3
      local.get 1
      i32.store
      local.get 3
      local.get 2
      i32.store offset=4
      local.get 0
      i32.load
      local.get 3
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    end)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value.fromBoolean (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    i32.eqz
    i32.eqz
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $generated/schema/NonProfit#set:pool (type 3) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 2384
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get (type 2) (param i32 i32) (result i32)
    (local i32)
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.load
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        local.get 0
        i32.load
        local.get 2
        call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
        i32.load
        local.get 1
        call $~lib/string/String.__eq
        if  ;; label = @3
          local.get 0
          i32.load
          local.get 2
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
          i32.load offset=4
          return
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const 0)
  (func $~lib/string/String#concat (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 3
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 4
    i32.add
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 3040
      return
    end
    local.get 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 3
    call $~lib/memory/memory.copy
    local.get 2
    local.get 3
    i32.add
    local.get 1
    local.get 4
    call $~lib/memory/memory.copy
    local.get 2)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toString (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 3520
      i32.const 3584
      i32.const 59
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $generated/schema/NonProfit#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 2944
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 3072
      i32.const 3184
      i32.const 113
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 3248
        i32.const 3376
        call $~lib/string/String#concat
        i32.const 3184
        i32.const 115
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 2896
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $src/mapping/handleNonProfitAdded (type 5) (param i32)
    (local i32 i32 i32 i64)
    i32.const 4
    i32.const 22
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    i32.const 2896
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 1
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 23
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.tee 2
      local.set 3
      local.get 1
      i64.extend_i32_u
      local.set 4
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 4
      i64.store offset=8
      local.get 3
      i32.const 2944
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 2
      i32.const 2976
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value.fromBoolean
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      i64.const 3040
      i64.store offset=8
      local.get 2
      i32.const 2384
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    end
    local.get 2
    i32.const 2976
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/value/Value.fromBoolean
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 22
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $generated/schema/NonProfit#set:pool
    local.get 2
    call $generated/schema/NonProfit#save)
  (func $~lib/matchstick-as/assembly/assert/assert.fieldEquals (type 7) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $~lib/matchstick-as/assembly/assert/_assert.fieldEquals
    i32.eqz
    if  ;; label = @1
      i32.const 3696
      i32.const 3760
      i32.const 13
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/mapping.test~anonymous|0~anonymous|0~anonymous|0 (type 1)
    call $tests/utils/createNewNonProfitAddedEvent
    call $src/mapping/handleNonProfitAdded
    i32.const 2896
    i32.const 2128
    i32.const 2944
    i32.const 2128
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 2896
    i32.const 2128
    i32.const 2976
    i32.const 3856
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 2896
    i32.const 2128
    i32.const 2384
    i32.const 2240
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/mapping.test~anonymous|0~anonymous|0~anonymous|1 (type 1)
    (local i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 0
    i32.load
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 0
    i32.load offset=16
    local.set 5
    local.get 0
    i32.load offset=20
    local.set 6
    local.get 0
    i32.load offset=24
    local.set 0
    i32.const 28
    i32.const 25
    call $~lib/rt/stub/__new
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor
    local.tee 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    i32.const 2240
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2384
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    i32.const 2128
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 2624
    i32.store
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 0
    i32.load offset=24
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    i32.const 4
    i32.const 26
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    i32.const 2896
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    if  ;; label = @1
      local.get 1
      i32.const 2976
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value.fromBoolean
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 4
      i32.const 26
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 0
      i32.store
      local.get 1
      local.get 2
      i32.load
      i32.load offset=24
      i32.const 0
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      call $generated/schema/NonProfit#set:pool
      local.get 1
      call $generated/schema/NonProfit#save
    end
    i32.const 2896
    i32.const 2128
    i32.const 2944
    i32.const 2128
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 2896
    i32.const 2128
    i32.const 2976
    i32.const 3984
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 2896
    i32.const 2128
    i32.const 2384
    i32.const 2240
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    call $~lib/matchstick-as/assembly/store/clearStore)
  (func $start:tests/mapping.test~anonymous|0~anonymous|0 (type 1)
    i32.const 2064
    i32.const 0
    i32.const 3888
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 3920
    i32.const 0
    i32.const 4016
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $~lib/typedarray/Uint8Array#__get (type 2) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.ge_u
    if  ;; label = @1
      i32.const 1616
      i32.const 1680
      i32.const 164
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    i32.load8_u)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32 (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 255
    i32.const 0
    local.get 0
    i32.load offset=8
    i32.const 0
    i32.gt_s
    local.tee 2
    if (result i32)  ;; label = @1
      local.get 0
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.sub
      call $~lib/typedarray/Uint8Array#__get
      i32.const 7
      i32.shr_u
      i32.const 1
      i32.eq
    else
      local.get 2
    end
    select
    local.set 2
    i32.const 4
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 0
      i32.load offset=8
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 1
        call $~lib/typedarray/Uint8Array#__get
        local.get 2
        i32.ne
        if  ;; label = @3
          i32.const 4400
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
          call $~lib/string/String#concat
          i32.const 4464
          call $~lib/string/String#concat
          i32.const 4512
          i32.const 148
          i32.const 9
          call $~lib/builtins/abort
          unreachable
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 12
    i32.const 10
    call $~lib/rt/stub/__new
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 1
    i32.const 0
    local.get 2
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 1
    local.get 2
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 2
    local.get 2
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 3
    local.get 2
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 0
    i32.load offset=8
    i32.lt_s
    select
    i32.load offset=8
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.gt_s
      if  ;; label = @2
        local.get 1
        local.get 3
        local.get 0
        local.get 3
        call $~lib/typedarray/Uint8Array#__get
        call $~lib/typedarray/Uint8Array#__set
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.const 3
    call $~lib/typedarray/Uint8Array#__get
    i32.const 8
    i32.shl
    local.get 1
    i32.const 2
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    i32.const 8
    i32.shl
    local.get 1
    i32.const 1
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    i32.const 8
    i32.shl
    local.get 1
    i32.const 0
    call $~lib/typedarray/Uint8Array#__get
    i32.or)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32 (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $generated/schema/Integration#constructor (type 0) (param i32) (result i32)
    (local i64 i32 i32)
    i32.const 4
    i32.const 29
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 2
    local.set 3
    local.get 0
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 3
    i32.const 2944
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 7
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 2
    i32.const 4640
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2)
  (func $generated/schema/Integration#set:balance (type 3) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 4640
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 7
    i32.ne
    if  ;; label = @1
      i32.const 4752
      i32.const 3584
      i32.const 64
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $generated/schema/Integration#get:balance (type 0) (param i32) (result i32)
    local.get 0
    i32.const 4640
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 4688
      i32.const 3184
      i32.const 50
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 3
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 0
      i32.load
      i32.const 4
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 4816
      i32.const 2512
      i32.const 80
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 4912
      i32.const 5040
      i32.const 173
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.plus)
  (func $generated/schema/Integration#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 2944
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 5152
      i32.const 3184
      i32.const 24
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 5264
        i32.const 3376
        call $~lib/string/String#concat
        i32.const 3184
        i32.const 26
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 4080
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $start:tests/mapping.test~anonymous|0~anonymous|1~anonymous|0 (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 5
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 2
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 0
    i32.load
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=12
    local.set 5
    local.get 0
    i32.load offset=16
    local.set 6
    local.get 0
    i32.load offset=20
    local.set 7
    local.get 0
    i32.load offset=24
    local.set 0
    i32.const 28
    i32.const 27
    call $~lib/rt/stub/__new
    local.get 1
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor
    local.tee 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    i32.const 4208
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4320
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.set 3
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4368
    i32.store
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 0
    i32.load offset=24
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    i32.const 4
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    i32.const 4080
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 2
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      local.get 2
      call $generated/schema/Integration#constructor
      local.tee 1
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      call $generated/schema/Integration#set:balance
    end
    local.get 1
    call $generated/schema/Integration#get:balance
    local.set 3
    i32.const 4
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 3
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
    call $generated/schema/Integration#set:balance
    local.get 1
    call $generated/schema/Integration#save
    i32.const 4080
    i32.const 4208
    i32.const 2944
    i32.const 4208
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 4080
    i32.const 4208
    i32.const 4640
    i32.const 5392
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#minus (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 5536
      i32.const 5040
      i32.const 179
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.minus)
  (func $start:tests/mapping.test~anonymous|0~anonymous|1~anonymous|1 (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 3
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 2
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 0
    i32.load
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=12
    local.set 5
    local.get 0
    i32.load offset=16
    local.set 6
    local.get 0
    i32.load offset=20
    local.set 7
    local.get 0
    i32.load offset=24
    local.set 0
    i32.const 28
    i32.const 30
    call $~lib/rt/stub/__new
    local.get 1
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor
    local.tee 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    i32.const 4208
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4320
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.set 3
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4368
    i32.store
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 0
    i32.load offset=24
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    i32.const 4
    i32.const 31
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    i32.const 4080
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 2
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      local.get 2
      call $generated/schema/Integration#constructor
      local.tee 1
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      call $generated/schema/Integration#set:balance
    end
    local.get 1
    call $generated/schema/Integration#get:balance
    local.set 3
    i32.const 4
    i32.const 31
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 3
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#minus
    call $generated/schema/Integration#set:balance
    local.get 1
    call $generated/schema/Integration#save
    i32.const 4080
    i32.const 4208
    i32.const 2944
    i32.const 4208
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 4080
    i32.const 4208
    i32.const 4640
    i32.const 5680
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/mapping.test~anonymous|0~anonymous|1 (type 1)
    i32.const 4128
    i32.const 0
    i32.const 5424
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 5456
    i32.const 0
    i32.const 5712
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $generated/schema/Pool#save (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 2944
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 6048
      i32.const 3184
      i32.const 166
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 6144
        i32.const 3376
        call $~lib/string/String#concat
        i32.const 3184
        i32.const 168
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 6016
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|0 (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    call $tests/utils/createNewNonProfitAddedEvent
    call $src/mapping/handleNonProfitAdded
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 0
    i32.load
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 0
    i32.load offset=16
    local.set 5
    local.get 0
    i32.load offset=20
    local.set 6
    local.get 0
    i32.load offset=24
    local.set 0
    i32.const 28
    i32.const 32
    call $~lib/rt/stub/__new
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor
    local.tee 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    i32.const 2240
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2384
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    i32.const 5872
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 5984
    i32.store
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 0
    i32.load offset=24
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    i32.const 4
    i32.const 33
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    i32.const 6016
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.tee 1
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 34
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.set 0
      local.get 1
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 7
      i64.store offset=8
      local.get 0
      i32.const 2944
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 7
      i32.store
      local.get 1
      local.get 7
      i64.store offset=8
      local.get 0
      i32.const 4640
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    end
    local.get 0
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $generated/schema/Integration#set:balance
    local.get 0
    call $generated/schema/Pool#save
    i32.const 6016
    i32.const 2240
    i32.const 2944
    i32.const 2240
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 6016
    i32.const 2240
    i32.const 4640
    i32.const 6256
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 6016
    i32.const 2240
    i32.const 6288
    i32.const 6336
    i32.const 2128
    call $~lib/string/String#concat
    i32.const 6368
    call $~lib/string/String#concat
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $tests/utils/createNewPoolBalanceIncreasedEvent (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 1
    i32.load
    local.set 4
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load offset=8
    local.set 3
    local.get 1
    i32.load offset=12
    local.set 5
    local.get 1
    i32.load offset=16
    local.set 6
    local.get 1
    i32.load offset=20
    local.set 7
    local.get 1
    i32.load offset=24
    local.set 1
    i32.const 28
    i32.const 35
    call $~lib/rt/stub/__new
    local.get 4
    local.get 2
    local.get 3
    local.get 5
    local.get 6
    local.get 7
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor
    local.tee 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    i32.const 6496
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 6608
    i32.store
    local.get 4
    local.get 2
    i32.store offset=4
    i32.const 2240
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 2384
    i32.store
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.set 3
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4368
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 1
    i32.load offset=24
    local.get 4
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 1
    i32.load offset=24
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 1
    i32.load offset=24
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 1)
  (func $generated/schema/Promoter#set:totalDonated (type 3) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 6704
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $src/mapping/handlePoolBalanceIncreased (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 1
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 5
    i32.const 6656
    local.get 1
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.set 4
    i32.const 6016
    local.get 5
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 2
    if  ;; label = @1
      local.get 2
      i32.const 4640
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 3
      i32.eqz
      if  ;; label = @2
        i32.const 4688
        i32.const 3184
        i32.const 192
        i32.const 12
        call $~lib/builtins/abort
        unreachable
      end
      local.get 3
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
      local.set 6
      i32.const 4
      i32.const 36
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      local.get 0
      i32.store
      local.get 2
      local.get 6
      local.get 3
      i32.load
      i32.load offset=24
      i32.const 2
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
      call $generated/schema/Integration#set:balance
      local.get 2
      call $generated/schema/Pool#save
    end
    local.get 4
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 37
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.tee 4
      local.set 3
      local.get 1
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 7
      i64.store offset=8
      local.get 3
      i32.const 2944
      local.get 2
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 7
      i32.store
      local.get 2
      local.get 7
      i64.store offset=8
      local.get 4
      i32.const 6704
      local.get 2
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 4
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      call $generated/schema/Promoter#set:totalDonated
    end
    local.get 0
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 1
    i32.const 4
    i32.const 38
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 2
    local.set 3
    local.get 1
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 3
    i32.const 2944
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 2
    i32.const 6752
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i64.const 3040
    i64.store offset=8
    local.get 2
    i32.const 6608
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 2
    i32.const 6800
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i64.const 3040
    i64.store offset=8
    local.get 2
    i32.const 2384
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    i32.const 6704
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 4688
      i32.const 3184
      i32.const 94
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
    local.set 3
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 4
    local.get 3
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
    call $generated/schema/Promoter#set:totalDonated
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 2
    i32.const 6752
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load offset=16
    i32.load offset=40
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 2
    i32.const 6800
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 7
    i64.store offset=8
    local.get 2
    i32.const 6608
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    local.get 5
    call $generated/schema/NonProfit#set:pool
    local.get 4
    i32.const 2944
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 6848
      i32.const 3184
      i32.const 68
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 6960
        i32.const 3376
        call $~lib/string/String#concat
        i32.const 3184
        i32.const 70
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 6656
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 4
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end
    local.get 2
    i32.const 2944
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 7088
      i32.const 3184
      i32.const 306
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 7216
        i32.const 3376
        call $~lib/string/String#concat
        i32.const 3184
        i32.const 308
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 7360
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 2
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|1 (type 1)
    (local i32 i32)
    i32.const 3
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $tests/utils/createNewPoolBalanceIncreasedEvent
    local.tee 1
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 0
    local.get 1
    call $src/mapping/handlePoolBalanceIncreased
    i32.const 7360
    local.get 0
    i32.const 2944
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 7360
    local.get 0
    i32.const 6752
    i32.const 7424
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 7360
    local.get 0
    i32.const 6608
    i32.const 6496
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 7360
    local.get 0
    i32.const 2384
    i32.const 2240
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 6016
    i32.const 2240
    i32.const 4640
    i32.const 7424
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    call $~lib/matchstick-as/assembly/store/clearStore)
  (func $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|3 (type 1)
    (local i32 i32)
    i32.const 3
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $tests/utils/createNewPoolBalanceIncreasedEvent
    local.tee 1
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 0
    local.get 1
    call $src/mapping/handlePoolBalanceIncreased
    i32.const 7360
    local.get 0
    i32.const 2944
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 7360
    local.get 0
    i32.const 6752
    i32.const 7424
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 7360
    local.get 0
    i32.const 6608
    i32.const 6496
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 7360
    local.get 0
    i32.const 2384
    i32.const 2240
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 6016
    i32.const 2240
    i32.const 4640
    i32.const 7424
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|4 (type 1)
    (local i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 0
    i32.load
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 0
    i32.load offset=16
    local.set 5
    local.get 0
    i32.load offset=20
    local.set 6
    local.get 0
    i32.load offset=24
    local.set 0
    i32.const 28
    i32.const 39
    call $~lib/rt/stub/__new
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor
    local.tee 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    i32.const 2240
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2384
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    i32.const 7616
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7728
    i32.store
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 0
    i32.load offset=24
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    i32.const 4
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 2
    i32.const 4
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    drop
    i32.const 6016
    local.get 2
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 0
    if  ;; label = @1
      local.get 0
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      call $generated/schema/Integration#set:balance
      local.get 0
      call $generated/schema/Pool#save
    end
    i32.const 6016
    i32.const 2240
    i32.const 2944
    i32.const 2240
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 6016
    i32.const 2240
    i32.const 4640
    i32.const 6256
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    call $~lib/matchstick-as/assembly/store/clearStore)
  (func $~lib/string/String#charAt (type 0) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 7836
    i32.load
    i32.const 1
    i32.shr_u
    i32.ge_u
    if  ;; label = @1
      i32.const 3040
      return
    end
    i32.const 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 0
    i32.const 1
    i32.shl
    i32.const 7840
    i32.add
    i32.load16_u
    i32.store16
    local.get 1)
  (func $~lib/string/String#substr (type 10) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.set 4
    local.get 1
    local.tee 3
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 3
      local.get 4
      i32.add
      local.tee 1
      i32.const 0
      local.get 1
      i32.const 0
      i32.gt_s
      select
      local.set 3
    end
    local.get 2
    i32.const 0
    local.get 2
    i32.const 0
    i32.gt_s
    select
    local.tee 1
    local.get 4
    local.get 3
    i32.sub
    local.tee 2
    local.get 1
    local.get 2
    i32.lt_s
    select
    i32.const 1
    i32.shl
    local.tee 1
    i32.const 0
    i32.le_s
    if  ;; label = @1
      i32.const 3040
      return
    end
    local.get 1
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 3
    i32.const 1
    i32.shl
    i32.add
    local.get 1
    call $~lib/memory/memory.copy
    local.get 2)
  (func $~lib/util/string/strtol<i32> (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.tee 2
    i32.load16_u
    local.set 0
    loop  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        i32.const 128
        i32.or
        i32.const 160
        i32.eq
        local.get 0
        i32.const 9
        i32.sub
        i32.const 4
        i32.le_u
        i32.or
        local.get 0
        i32.const 5760
        i32.lt_u
        br_if 0 (;@2;)
        drop
        i32.const 1
        local.get 0
        i32.const -8192
        i32.add
        i32.const 10
        i32.le_u
        br_if 0 (;@2;)
        drop
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 5760
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8232
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8233
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8239
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8287
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 12288
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 65279
            i32.eq
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1
          br 1 (;@2;)
        end
        i32.const 0
      end
      if  ;; label = @2
        local.get 2
        i32.const 2
        i32.add
        local.tee 2
        i32.load16_u
        local.set 0
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 1
    local.set 4
    i32.const 1
    local.get 0
    i32.const 43
    i32.eq
    local.get 0
    i32.const 45
    i32.eq
    select
    if (result i32)  ;; label = @1
      local.get 1
      i32.const 1
      i32.sub
      local.tee 1
      i32.eqz
      if  ;; label = @2
        i32.const 0
        return
      end
      i32.const -1
      i32.const 1
      local.get 0
      i32.const 45
      i32.eq
      select
      local.set 4
      local.get 2
      i32.const 2
      i32.add
      local.tee 2
      i32.load16_u
    else
      local.get 0
    end
    i32.const 48
    i32.eq
    i32.const 0
    local.get 1
    i32.const 2
    i32.gt_s
    select
    if (result i32)  ;; label = @1
      local.get 2
      i32.load16_u offset=2
      i32.const 32
      i32.or
      i32.const 120
      i32.eq
    else
      i32.const 0
    end
    if  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        local.get 1
        i32.const 2
        i32.sub
      end
      local.set 1
    end
    loop  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.tee 0
        i32.const 1
        i32.sub
        local.set 1
        local.get 0
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 0
          i32.const 48
          i32.sub
          i32.const 10
          i32.lt_u
          if (result i32)  ;; label = @4
            local.get 0
            i32.const 48
            i32.sub
          else
            local.get 0
            i32.const 65
            i32.sub
            i32.const 25
            i32.le_u
            if (result i32)  ;; label = @5
              local.get 0
              i32.const 55
              i32.sub
            else
              local.get 0
              i32.const 87
              i32.sub
              local.get 0
              local.get 0
              i32.const 97
              i32.sub
              i32.const 25
              i32.le_u
              select
            end
          end
          local.tee 0
          i32.const 16
          i32.ge_u
          if  ;; label = @4
            local.get 3
            i32.eqz
            if  ;; label = @5
              i32.const 0
              return
            end
            br 2 (;@2;)
          end
          local.get 0
          local.get 3
          i32.const 4
          i32.shl
          i32.add
          local.set 3
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          br 2 (;@1;)
        end
      end
    end
    local.get 3
    local.get 4
    i32.mul)
  (func $generated/Manager/Manager/DonationAdded__Params#get:user (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    local.tee 0
    i32.load
    i32.const 1
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 0
      i32.load
      i32.const 2
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 8160
      i32.const 2512
      i32.const 63
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $generated/schema/DonationBalance#set:integration (type 3) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 4320
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $src/mapping/handleDonationAdded (type 5) (param i32)
    (local i32 i32 i32 i32 i64)
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    call $generated/Manager/Manager/DonationAdded__Params#get:user
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 2
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/string/String#concat
    local.set 2
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 3
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/string/String#concat
    local.set 2
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    i32.const 8240
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/string/String#concat
    local.tee 1
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.set 2
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 0
    i32.store
    local.get 3
    local.get 0
    i32.store
    i32.const 4080
    local.get 3
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.set 4
    local.get 2
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.set 2
      local.get 1
      i64.extend_i32_u
      local.set 5
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 5
      i64.store offset=8
      local.get 2
      i32.const 2944
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      i64.extend_i32_u
      local.set 5
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 6
      i32.store
      local.get 1
      local.get 5
      i64.store offset=8
      local.get 2
      i32.const 8128
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      i64.const 3040
      i64.store offset=8
      local.get 2
      i32.const 4320
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      i64.const 3040
      i64.store offset=8
      local.get 2
      i32.const 2624
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      i64.extend_i32_u
      local.set 5
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 7
      i32.store
      local.get 1
      local.get 5
      i64.store offset=8
      local.get 2
      i32.const 6704
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 16
      i32.const 5
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      i64.const 3040
      i64.store offset=8
      local.get 2
      i32.const 2384
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 2
      i32.const 0
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      call $generated/schema/Promoter#set:totalDonated
    end
    local.get 2
    i32.const 6704
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 4688
      i32.const 3184
      i32.const 276
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
    local.set 1
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 0
    i32.store
    local.get 3
    local.get 0
    i32.store
    local.get 2
    local.get 1
    local.get 3
    i32.load
    i32.load offset=24
    i32.const 4
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#plus
    call $generated/schema/Promoter#set:totalDonated
    local.get 4
    if  ;; label = @1
      local.get 4
      call $generated/schema/Integration#get:balance
      local.set 1
      i32.const 4
      i32.const 42
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      local.get 0
      i32.store
      local.get 4
      local.get 1
      local.get 3
      i32.load
      i32.load offset=24
      i32.const 4
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#minus
      call $generated/schema/Integration#set:balance
      local.get 4
      i32.const 2944
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 1
      i32.eqz
      if  ;; label = @2
        i32.const 4688
        i32.const 3184
        i32.const 41
        i32.const 12
        call $~lib/builtins/abort
        unreachable
      end
      local.get 2
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      call $generated/schema/DonationBalance#set:integration
    end
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    call $generated/Manager/Manager/DonationAdded__Params#get:user
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 8128
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $generated/schema/DonationBalance#set:integration
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 3
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 2624
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $generated/schema/NonProfit#set:pool
    local.get 2
    i32.const 2944
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 8304
      i32.const 3184
      i32.const 223
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 8432
        i32.const 3376
        call $~lib/string/String#concat
        i32.const 3184
        i32.const 225
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 8240
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 2
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|5 (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 7836
    i32.load
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.and
    if  ;; label = @1
      i32.const 8000
      i32.const 7840
      call $~lib/string/String#concat
      i32.const 8032
      call $~lib/string/String#concat
      i32.const 4512
      i32.const 73
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    i32.const 7836
    i32.load
    i32.const 1
    i32.shr_u
    i32.const 2
    i32.ge_u
    if (result i32)  ;; label = @1
      i32.const 0
      call $~lib/string/String#charAt
      i32.const 6256
      call $~lib/string/String.__eq
    else
      i32.const 0
    end
    if (result i32)  ;; label = @1
      i32.const 1
      call $~lib/string/String#charAt
      i32.const 8096
      call $~lib/string/String.__eq
    else
      i32.const 0
    end
    if (result i32)  ;; label = @1
      i32.const 7840
      i32.const 2
      i32.const 2147483647
      call $~lib/string/String#substr
    else
      i32.const 7840
    end
    local.tee 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 2
    i32.shr_u
    local.set 3
    i32.const 12
    i32.const 10
    call $~lib/rt/stub/__new
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.set 3
    loop  ;; label = @1
      local.get 0
      local.get 1
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.lt_s
      if  ;; label = @2
        local.get 3
        local.get 0
        i32.const 2
        i32.div_s
        local.get 1
        local.get 0
        i32.const 2
        call $~lib/string/String#substr
        call $~lib/util/string/strtol<i32>
        i32.extend8_s
        call $~lib/typedarray/Uint8Array#__set
        local.get 0
        i32.const 2
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 0
    i32.load
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 6
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 0
    i32.load offset=16
    local.set 5
    local.get 0
    i32.load offset=20
    local.set 7
    local.get 0
    i32.load offset=24
    local.set 0
    i32.const 28
    i32.const 41
    call $~lib/rt/stub/__new
    local.get 1
    local.get 2
    local.get 6
    local.get 4
    local.get 5
    local.get 7
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor
    local.tee 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    i32.const 2240
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2384
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 3
    i64.extend_i32_u
    local.set 8
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 2
    i32.store
    local.get 2
    local.get 8
    i64.store offset=8
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 6
    i32.const 8128
    i32.store
    local.get 6
    local.get 2
    i32.store offset=4
    i32.const 4208
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 4
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4320
    i32.store
    local.get 2
    local.get 4
    i32.store offset=4
    i32.const 2128
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 5
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 2624
    i32.store
    local.get 4
    local.get 5
    i32.store offset=4
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.set 7
    i32.const 8
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 4368
    i32.store
    local.get 5
    local.get 7
    i32.store offset=4
    local.get 0
    i32.load offset=24
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.get 6
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.get 4
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.get 5
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    call $src/mapping/handleDonationAdded
    i32.const 8240
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 4208
    call $~lib/string/String#concat
    i32.const 2128
    call $~lib/string/String#concat
    i32.const 2240
    call $~lib/string/String#concat
    i32.const 8128
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 8240
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 4208
    call $~lib/string/String#concat
    i32.const 2128
    call $~lib/string/String#concat
    i32.const 2240
    call $~lib/string/String#concat
    i32.const 6704
    i32.const 8576
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 8240
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 4208
    call $~lib/string/String#concat
    i32.const 2128
    call $~lib/string/String#concat
    i32.const 2240
    call $~lib/string/String#concat
    i32.const 2624
    i32.const 2128
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    call $~lib/matchstick-as/assembly/store/clearStore)
  (func $start:tests/mapping.test~anonymous|0~anonymous|2 (type 1)
    i32.const 5824
    i32.const 0
    i32.const 6400
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 6432
    i32.const 0
    i32.const 7456
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 5824
    i32.const 0
    i32.const 7488
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 6432
    i32.const 0
    i32.const 7520
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 7552
    i32.const 0
    i32.const 7760
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 7792
    i32.const 0
    i32.const 8608
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $start:tests/mapping.test~anonymous|0 (type 1)
    i32.const 2016
    i32.const 4048
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 4080
    i32.const 5744
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 5776
    i32.const 8640
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe)
  (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type (type 0) (param i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              block  ;; label = @70
                                                                                                                                                block  ;; label = @71
                                                                                                                                                  block  ;; label = @72
                                                                                                                                                    block  ;; label = @73
                                                                                                                                                      block  ;; label = @74
                                                                                                                                                        block  ;; label = @75
                                                                                                                                                          block  ;; label = @76
                                                                                                                                                            block  ;; label = @77
                                                                                                                                                              block  ;; label = @78
                                                                                                                                                                block  ;; label = @79
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                block  ;; label = @87
                                                                                                                                                                                  local.get 0
                                                                                                                                                                                  br_table 0 (;@87;) 1 (;@86;) 2 (;@85;) 3 (;@84;) 4 (;@83;) 5 (;@82;) 6 (;@81;) 7 (;@80;) 8 (;@79;) 9 (;@78;) 10 (;@77;) 11 (;@76;) 12 (;@75;) 13 (;@74;) 14 (;@73;) 15 (;@72;) 16 (;@71;) 17 (;@70;) 18 (;@69;) 19 (;@68;) 20 (;@67;) 21 (;@66;) 25 (;@62;) 26 (;@61;) 27 (;@60;) 28 (;@59;) 29 (;@58;) 22 (;@65;) 23 (;@64;) 24 (;@63;) 30 (;@57;) 31 (;@56;) 32 (;@55;) 33 (;@54;) 34 (;@53;) 35 (;@52;) 36 (;@51;) 37 (;@50;) 38 (;@49;) 39 (;@48;) 40 (;@47;) 41 (;@46;) 42 (;@45;) 43 (;@44;) 44 (;@43;) 45 (;@42;) 46 (;@41;) 47 (;@40;) 48 (;@39;) 49 (;@38;) 50 (;@37;) 51 (;@36;) 52 (;@35;) 53 (;@34;) 54 (;@33;) 55 (;@32;) 56 (;@31;) 57 (;@30;) 58 (;@29;) 59 (;@28;) 60 (;@27;) 61 (;@26;) 86 (;@1;) 62 (;@25;) 63 (;@24;) 64 (;@23;) 65 (;@22;) 66 (;@21;) 67 (;@20;) 68 (;@19;) 69 (;@18;) 70 (;@17;) 71 (;@16;) 72 (;@15;) 73 (;@14;) 74 (;@13;) 75 (;@12;) 76 (;@11;) 77 (;@10;) 78 (;@9;) 79 (;@8;) 80 (;@7;) 81 (;@6;) 82 (;@5;) 83 (;@4;) 84 (;@3;) 85 (;@2;) 86 (;@1;)
                                                                                                                                                                                end
                                                                                                                                                                                i32.const 1
                                                                                                                                                                                return
                                                                                                                                                                              end
                                                                                                                                                                              i32.const 0
                                                                                                                                                                              return
                                                                                                                                                                            end
                                                                                                                                                                            i32.const 44
                                                                                                                                                                            return
                                                                                                                                                                          end
                                                                                                                                                                          i32.const 45
                                                                                                                                                                          return
                                                                                                                                                                        end
                                                                                                                                                                        i32.const 46
                                                                                                                                                                        return
                                                                                                                                                                      end
                                                                                                                                                                      i32.const 47
                                                                                                                                                                      return
                                                                                                                                                                    end
                                                                                                                                                                    i32.const 12
                                                                                                                                                                    return
                                                                                                                                                                  end
                                                                                                                                                                  i32.const 48
                                                                                                                                                                  return
                                                                                                                                                                end
                                                                                                                                                                i32.const 49
                                                                                                                                                                return
                                                                                                                                                              end
                                                                                                                                                              i32.const 50
                                                                                                                                                              return
                                                                                                                                                            end
                                                                                                                                                            i32.const 51
                                                                                                                                                            return
                                                                                                                                                          end
                                                                                                                                                          i32.const 52
                                                                                                                                                          return
                                                                                                                                                        end
                                                                                                                                                        i32.const 53
                                                                                                                                                        return
                                                                                                                                                      end
                                                                                                                                                      i32.const 55
                                                                                                                                                      return
                                                                                                                                                    end
                                                                                                                                                    i32.const 56
                                                                                                                                                    return
                                                                                                                                                  end
                                                                                                                                                  i32.const 58
                                                                                                                                                  return
                                                                                                                                                end
                                                                                                                                                i32.const 60
                                                                                                                                                return
                                                                                                                                              end
                                                                                                                                              i32.const 62
                                                                                                                                              return
                                                                                                                                            end
                                                                                                                                            i32.const 63
                                                                                                                                            return
                                                                                                                                          end
                                                                                                                                          i32.const 65
                                                                                                                                          return
                                                                                                                                        end
                                                                                                                                        i32.const 67
                                                                                                                                        return
                                                                                                                                      end
                                                                                                                                      i32.const 72
                                                                                                                                      return
                                                                                                                                    end
                                                                                                                                    i32.const 73
                                                                                                                                    return
                                                                                                                                  end
                                                                                                                                  i32.const 74
                                                                                                                                  return
                                                                                                                                end
                                                                                                                                i32.const 75
                                                                                                                                return
                                                                                                                              end
                                                                                                                              i32.const 76
                                                                                                                              return
                                                                                                                            end
                                                                                                                            i32.const 64
                                                                                                                            return
                                                                                                                          end
                                                                                                                          i32.const 80
                                                                                                                          return
                                                                                                                        end
                                                                                                                        i32.const 81
                                                                                                                        return
                                                                                                                      end
                                                                                                                      i32.const 82
                                                                                                                      return
                                                                                                                    end
                                                                                                                    i32.const 57
                                                                                                                    return
                                                                                                                  end
                                                                                                                  i32.const 59
                                                                                                                  return
                                                                                                                end
                                                                                                                i32.const 61
                                                                                                                return
                                                                                                              end
                                                                                                              i32.const 83
                                                                                                              return
                                                                                                            end
                                                                                                            i32.const 68
                                                                                                            return
                                                                                                          end
                                                                                                          i32.const 84
                                                                                                          return
                                                                                                        end
                                                                                                        i32.const 69
                                                                                                        return
                                                                                                      end
                                                                                                      i32.const 84
                                                                                                      return
                                                                                                    end
                                                                                                    i32.const 85
                                                                                                    return
                                                                                                  end
                                                                                                  i32.const 88
                                                                                                  return
                                                                                                end
                                                                                                i32.const 90
                                                                                                return
                                                                                              end
                                                                                              i32.const 91
                                                                                              return
                                                                                            end
                                                                                            i32.const 92
                                                                                            return
                                                                                          end
                                                                                          i32.const 93
                                                                                          return
                                                                                        end
                                                                                        i32.const 94
                                                                                        return
                                                                                      end
                                                                                      i32.const 95
                                                                                      return
                                                                                    end
                                                                                    i32.const 96
                                                                                    return
                                                                                  end
                                                                                  i32.const 21
                                                                                  return
                                                                                end
                                                                                i32.const 97
                                                                                return
                                                                              end
                                                                              i32.const 98
                                                                              return
                                                                            end
                                                                            i32.const 99
                                                                            return
                                                                          end
                                                                          i32.const 100
                                                                          return
                                                                        end
                                                                        i32.const 102
                                                                        return
                                                                      end
                                                                      i32.const 103
                                                                      return
                                                                    end
                                                                    i32.const 105
                                                                    return
                                                                  end
                                                                  i32.const 106
                                                                  return
                                                                end
                                                                i32.const 111
                                                                return
                                                              end
                                                              i32.const 113
                                                              return
                                                            end
                                                            i32.const 115
                                                            return
                                                          end
                                                          i32.const 117
                                                          return
                                                        end
                                                        i32.const 118
                                                        return
                                                      end
                                                      i32.const 104
                                                      return
                                                    end
                                                    i32.const 110
                                                    return
                                                  end
                                                  i32.const 114
                                                  return
                                                end
                                                i32.const 119
                                                return
                                              end
                                              i32.const 120
                                              return
                                            end
                                            i32.const 118
                                            return
                                          end
                                          i32.const 101
                                          return
                                        end
                                        i32.const 121
                                        return
                                      end
                                      i32.const 122
                                      return
                                    end
                                    i32.const 123
                                    return
                                  end
                                  i32.const 124
                                  return
                                end
                                i32.const 125
                                return
                              end
                              i32.const 126
                              return
                            end
                            i32.const 128
                            return
                          end
                          i32.const 129
                          return
                        end
                        i32.const 130
                        return
                      end
                      i32.const 131
                      return
                    end
                    i32.const 107
                    return
                  end
                  i32.const 132
                  return
                end
                i32.const 112
                return
              end
              i32.const 133
              return
            end
            i32.const 109
            return
          end
          i32.const 116
          return
        end
        i32.const 134
        return
      end
      i32.const 135
      return
    end
    i32.const 0)
  (func $node_modules/@graphprotocol/graph-ts/global/global/allocate (type 0) (param i32) (result i32)
    local.get 0
    call $~lib/rt/stub/__alloc)
  (func $~start (type 1)
    global.get $~started
    if  ;; label = @1
      return
    end
    i32.const 1
    global.set $~started
    i32.const 8684
    global.set $~lib/rt/stub/offset
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop
    i32.const 4
    i32.const 3
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    drop
    i32.const 1440
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $~lib/matchstick-as/assembly/defaults/defaultAddress
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    global.set $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/assembly/defaults/defaultBigInt
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 1968
    i32.const 8672
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop)
  (table $0 15 funcref)
  (memory (;0;) 1)
  (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultAddress (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultAddressBytes (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultBigInt (mut i32) (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.String i32 (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBuffer i32 (i32.const 1))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int8Array i32 (i32.const 2))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int16Array i32 (i32.const 3))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int32Array i32 (i32.const 4))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int64Array i32 (i32.const 5))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint8Array i32 (i32.const 6))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint16Array i32 (i32.const 7))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint32Array i32 (i32.const 8))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint64Array i32 (i32.const 9))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float32Array i32 (i32.const 10))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float64Array i32 (i32.const 11))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.BigDecimal i32 (i32.const 12))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBool i32 (i32.const 13))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayUint8Array i32 (i32.const 14))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEthereumValue i32 (i32.const 15))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayStoreValue i32 (i32.const 16))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayJsonValue i32 (i32.const 17))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayString i32 (i32.const 18))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEventParam i32 (i32.const 19))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringJsonValue i32 (i32.const 20))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringStoreValue i32 (i32.const 21))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.SmartContractCall i32 (i32.const 22))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EventParam i32 (i32.const 23))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumTransaction i32 (i32.const 24))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumBlock i32 (i32.const 25))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumCall i32 (i32.const 26))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedTypedMapStringJsonValue i32 (i32.const 27))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedBool i32 (i32.const 28))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedJsonValue i32 (i32.const 29))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumValue i32 (i32.const 30))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StoreValue i32 (i32.const 31))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.JsonValue i32 (i32.const 32))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumEvent i32 (i32.const 33))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringStoreValue i32 (i32.const 34))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringJsonValue i32 (i32.const 35))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringStoreValue i32 (i32.const 36))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringJsonValue i32 (i32.const 37))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringTypedMapStringJsonValue i32 (i32.const 38))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultTypedMapStringJsonValueBool i32 (i32.const 39))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultJsonValueBool i32 (i32.const 40))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU8 i32 (i32.const 41))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU16 i32 (i32.const 42))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU32 i32 (i32.const 43))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU64 i32 (i32.const 44))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI8 i32 (i32.const 45))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI16 i32 (i32.const 46))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI32 i32 (i32.const 47))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI64 i32 (i32.const 48))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF32 i32 (i32.const 49))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF64 i32 (i32.const 50))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBigDecimal i32 (i32.const 51))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayDataReceiver i32 (i32.const 52))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayCryptoHash i32 (i32.const 53))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayActionValue i32 (i32.const 54))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePath i32 (i32.const 55))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayValidatorStake i32 (i32.const 56))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySlashedValidator i32 (i32.const 57))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySignature i32 (i32.const 58))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayChunkHeader i32 (i32.const 59))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKeyPermissionValue i32 (i32.const 60))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionValue i32 (i32.const 61))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDirection i32 (i32.const 62))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearPublicKey i32 (i32.const 63))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSignature i32 (i32.const 64))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallPermission i32 (i32.const 65))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFullAccessPermission i32 (i32.const 66))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKey i32 (i32.const 67))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDataReceiver i32 (i32.const 68))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearCreateAccountAction i32 (i32.const 69))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeployContractAction i32 (i32.const 70))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallAction i32 (i32.const 71))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearTransferAction i32 (i32.const 72))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearStakeAction i32 (i32.const 73))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAddKeyAction i32 (i32.const 74))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteKeyAction i32 (i32.const 75))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteAccountAction i32 (i32.const 76))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionReceipt i32 (i32.const 77))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSuccessStatus i32 (i32.const 78))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePathItem i32 (i32.const 79))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearExecutionOutcome i32 (i32.const 80))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSlashedValidator i32 (i32.const 81))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlockHeader i32 (i32.const 82))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearValidatorStake i32 (i32.const 83))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearChunkHeader i32 (i32.const 84))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlock i32 (i32.const 85))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearReceiptWithOutcome i32 (i32.const 86))
  (global $~started (mut i32) (i32.const 0))
  (export "TypeId.String" (global 4))
  (export "TypeId.ArrayBuffer" (global 5))
  (export "TypeId.Int8Array" (global 6))
  (export "TypeId.Int16Array" (global 7))
  (export "TypeId.Int32Array" (global 8))
  (export "TypeId.Int64Array" (global 9))
  (export "TypeId.Uint8Array" (global 10))
  (export "TypeId.Uint16Array" (global 11))
  (export "TypeId.Uint32Array" (global 12))
  (export "TypeId.Uint64Array" (global 13))
  (export "TypeId.Float32Array" (global 14))
  (export "TypeId.Float64Array" (global 15))
  (export "TypeId.BigDecimal" (global 16))
  (export "TypeId.ArrayBool" (global 17))
  (export "TypeId.ArrayUint8Array" (global 18))
  (export "TypeId.ArrayEthereumValue" (global 19))
  (export "TypeId.ArrayStoreValue" (global 20))
  (export "TypeId.ArrayJsonValue" (global 21))
  (export "TypeId.ArrayString" (global 22))
  (export "TypeId.ArrayEventParam" (global 23))
  (export "TypeId.ArrayTypedMapEntryStringJsonValue" (global 24))
  (export "TypeId.ArrayTypedMapEntryStringStoreValue" (global 25))
  (export "TypeId.SmartContractCall" (global 26))
  (export "TypeId.EventParam" (global 27))
  (export "TypeId.EthereumTransaction" (global 28))
  (export "TypeId.EthereumBlock" (global 29))
  (export "TypeId.EthereumCall" (global 30))
  (export "TypeId.WrappedTypedMapStringJsonValue" (global 31))
  (export "TypeId.WrappedBool" (global 32))
  (export "TypeId.WrappedJsonValue" (global 33))
  (export "TypeId.EthereumValue" (global 34))
  (export "TypeId.StoreValue" (global 35))
  (export "TypeId.JsonValue" (global 36))
  (export "TypeId.EthereumEvent" (global 37))
  (export "TypeId.TypedMapEntryStringStoreValue" (global 38))
  (export "TypeId.TypedMapEntryStringJsonValue" (global 39))
  (export "TypeId.TypedMapStringStoreValue" (global 40))
  (export "TypeId.TypedMapStringJsonValue" (global 41))
  (export "TypeId.TypedMapStringTypedMapStringJsonValue" (global 42))
  (export "TypeId.ResultTypedMapStringJsonValueBool" (global 43))
  (export "TypeId.ResultJsonValueBool" (global 44))
  (export "TypeId.ArrayU8" (global 45))
  (export "TypeId.ArrayU16" (global 46))
  (export "TypeId.ArrayU32" (global 47))
  (export "TypeId.ArrayU64" (global 48))
  (export "TypeId.ArrayI8" (global 49))
  (export "TypeId.ArrayI16" (global 50))
  (export "TypeId.ArrayI32" (global 51))
  (export "TypeId.ArrayI64" (global 52))
  (export "TypeId.ArrayF32" (global 53))
  (export "TypeId.ArrayF64" (global 54))
  (export "TypeId.ArrayBigDecimal" (global 55))
  (export "TypeId.NearArrayDataReceiver" (global 56))
  (export "TypeId.NearArrayCryptoHash" (global 57))
  (export "TypeId.NearArrayActionValue" (global 58))
  (export "TypeId.NearMerklePath" (global 59))
  (export "TypeId.NearArrayValidatorStake" (global 60))
  (export "TypeId.NearArraySlashedValidator" (global 61))
  (export "TypeId.NearArraySignature" (global 62))
  (export "TypeId.NearArrayChunkHeader" (global 63))
  (export "TypeId.NearAccessKeyPermissionValue" (global 64))
  (export "TypeId.NearActionValue" (global 65))
  (export "TypeId.NearDirection" (global 66))
  (export "TypeId.NearPublicKey" (global 67))
  (export "TypeId.NearSignature" (global 68))
  (export "TypeId.NearFunctionCallPermission" (global 69))
  (export "TypeId.NearFullAccessPermission" (global 70))
  (export "TypeId.NearAccessKey" (global 71))
  (export "TypeId.NearDataReceiver" (global 72))
  (export "TypeId.NearCreateAccountAction" (global 73))
  (export "TypeId.NearDeployContractAction" (global 74))
  (export "TypeId.NearFunctionCallAction" (global 75))
  (export "TypeId.NearTransferAction" (global 76))
  (export "TypeId.NearStakeAction" (global 77))
  (export "TypeId.NearAddKeyAction" (global 78))
  (export "TypeId.NearDeleteKeyAction" (global 79))
  (export "TypeId.NearDeleteAccountAction" (global 80))
  (export "TypeId.NearActionReceipt" (global 81))
  (export "TypeId.NearSuccessStatus" (global 82))
  (export "TypeId.NearMerklePathItem" (global 83))
  (export "TypeId.NearExecutionOutcome" (global 84))
  (export "TypeId.NearSlashedValidator" (global 85))
  (export "TypeId.NearBlockHeader" (global 86))
  (export "TypeId.NearValidatorStake" (global 87))
  (export "TypeId.NearChunkHeader" (global 88))
  (export "TypeId.NearBlock" (global 89))
  (export "TypeId.NearReceiptWithOutcome" (global 90))
  (export "id_of_type" (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type))
  (export "allocate" (func $node_modules/@graphprotocol/graph-ts/global/global/allocate))
  (export "memory" (memory 0))
  (export "table" (table 0))
  (export "_start" (func $~start))
  (elem $0 (i32.const 1) func $start:tests/mapping.test~anonymous|0~anonymous|0~anonymous|0 $start:tests/mapping.test~anonymous|0~anonymous|0~anonymous|1 $start:tests/mapping.test~anonymous|0~anonymous|0 $start:tests/mapping.test~anonymous|0~anonymous|1~anonymous|0 $start:tests/mapping.test~anonymous|0~anonymous|1~anonymous|1 $start:tests/mapping.test~anonymous|0~anonymous|1 $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|0 $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|1 $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|0 $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|3 $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|4 $start:tests/mapping.test~anonymous|0~anonymous|2~anonymous|5 $start:tests/mapping.test~anonymous|0~anonymous|2 $start:tests/mapping.test~anonymous|0)
  (data (;0;) (i32.const 1036) "<")
  (data (;1;) (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
  (data (;2;) (i32.const 1100) "<")
  (data (;3;) (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
  (data (;4;) (i32.const 1164) "l")
  (data (;5;) (i32.const 1176) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;6;) (i32.const 1276) ",")
  (data (;7;) (i32.const 1288) "\01\00\00\00\0e\00\00\00m\00a\00i\00n\00n\00e\00t")
  (data (;8;) (i32.const 1324) ",")
  (data (;9;) (i32.const 1336) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;10;) (i32.const 1372) ",")
  (data (;11;) (i32.const 1384) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;12;) (i32.const 1420) "l")
  (data (;13;) (i32.const 1432) "\01\00\00\00T\00\00\000\00x\00A\001\006\000\008\001\00F\003\006\000\00e\003\008\004\007\000\000\006\00d\00B\006\006\000\00b\00a\00e\001\00c\006\00d\001\00b\002\00e\001\007\00e\00C\002\00A")
  (data (;14;) (i32.const 1532) "<")
  (data (;15;) (i32.const 1544) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
  (data (;16;) (i32.const 1596) "<")
  (data (;17;) (i32.const 1608) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
  (data (;18;) (i32.const 1660) "<")
  (data (;19;) (i32.const 1672) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;20;) (i32.const 1724) "<")
  (data (;21;) (i32.const 1736) "\01\00\00\00 \00\00\00d\00e\00f\00a\00u\00l\00t\00_\00l\00o\00g\00_\00t\00y\00p\00e")
  (data (;22;) (i32.const 1788) "\9c")
  (data (;23;) (i32.const 1800) "\01\00\00\00\86\00\00\00Y\00o\00u\00 \00c\00a\00n\00'\00t\00 \00m\00o\00d\00i\00f\00y\00 \00a\00 \00M\00o\00c\00k\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n\00 \00i\00n\00s\00t\00a\00n\00c\00e\00 \00a\00f\00t\00e\00r\00 \00i\00t\00 \00h\00a\00s\00 \00b\00e\00e\00n\00 \00s\00a\00v\00e\00d\00.")
  (data (;24;) (i32.const 1948) ",")
  (data (;25;) (i32.const 1960) "\01\00\00\00\0e\00\00\00M\00a\00n\00a\00g\00e\00r")
  (data (;26;) (i32.const 1996) ",")
  (data (;27;) (i32.const 2008) "\01\00\00\00\14\00\00\00N\00o\00n\00 \00P\00r\00o\00f\00i\00t")
  (data (;28;) (i32.const 2044) "<")
  (data (;29;) (i32.const 2056) "\01\00\00\00\1e\00\00\00#\00N\00o\00n\00P\00r\00o\00f\00i\00t\00A\00d\00d\00e\00d")
  (data (;30;) (i32.const 2108) "l")
  (data (;31;) (i32.const 2120) "\01\00\00\00T\00\00\000\00x\00f\002\000\00c\003\008\002\00d\002\00a\009\005\00e\00b\001\009\00f\009\001\006\004\004\003\005\00a\00e\00d\005\009\00e\005\00c\005\009\00b\00c\001\00f\00d\009")
  (data (;32;) (i32.const 2220) "l")
  (data (;33;) (i32.const 2232) "\01\00\00\00T\00\00\000\00x\000\002\006\00b\002\00e\00d\006\00b\003\004\00c\009\008\00f\006\006\002\004\00b\004\004\008\008\006\005\006\004\002\000\005\006\00d\000\004\00d\007\003\000\00c")
  (data (;34;) (i32.const 2332) "\1c")
  (data (;35;) (i32.const 2364) "\1c")
  (data (;36;) (i32.const 2376) "\01\00\00\00\08\00\00\00p\00o\00o\00l")
  (data (;37;) (i32.const 2396) "\5c")
  (data (;38;) (i32.const 2408) "\01\00\00\00J\00\00\00A\00d\00d\00r\00e\00s\00s\00 \00m\00u\00s\00t\00 \00c\00o\00n\00t\00a\00i\00n\00 \00e\00x\00a\00c\00t\00l\00y\00 \002\000\00 \00b\00y\00t\00e\00s")
  (data (;39;) (i32.const 2492) "l")
  (data (;40;) (i32.const 2504) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00h\00a\00i\00n\00/\00e\00t\00h\00e\00r\00e\00u\00m\00.\00t\00s")
  (data (;41;) (i32.const 2604) ",")
  (data (;42;) (i32.const 2616) "\01\00\00\00\12\00\00\00n\00o\00n\00P\00r\00o\00f\00i\00t")
  (data (;43;) (i32.const 2652) "|")
  (data (;44;) (i32.const 2664) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
  (data (;45;) (i32.const 2780) "\5c")
  (data (;46;) (i32.const 2792) "\01\00\00\00@\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00d\00d\00r\00e\00s\00s")
  (data (;47;) (i32.const 2876) ",")
  (data (;48;) (i32.const 2888) "\01\00\00\00\12\00\00\00N\00o\00n\00P\00r\00o\00f\00i\00t")
  (data (;49;) (i32.const 2924) "\1c")
  (data (;50;) (i32.const 2936) "\01\00\00\00\04\00\00\00i\00d")
  (data (;51;) (i32.const 2956) "<")
  (data (;52;) (i32.const 2968) "\01\00\00\00,\00\00\00i\00s\00N\00o\00n\00P\00r\00o\00f\00i\00t\00O\00n\00W\00h\00i\00t\00e\00l\00i\00s\00t")
  (data (;53;) (i32.const 3020) "\1c")
  (data (;54;) (i32.const 3032) "\01")
  (data (;55;) (i32.const 3052) "l")
  (data (;56;) (i32.const 3064) "\01\00\00\00T\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00N\00o\00n\00P\00r\00o\00f\00i\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;57;) (i32.const 3164) "<")
  (data (;58;) (i32.const 3176) "\01\00\00\00&\00\00\00g\00e\00n\00e\00r\00a\00t\00e\00d\00/\00s\00c\00h\00e\00m\00a\00.\00t\00s")
  (data (;59;) (i32.const 3228) "|")
  (data (;60;) (i32.const 3240) "\01\00\00\00b\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00N\00o\00n\00P\00r\00o\00f\00i\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00 \00n\00o\00n\00-\00s\00t\00r\00i\00n\00g\00 \00I\00D\00.\00 ")
  (data (;61;) (i32.const 3356) "\8c")
  (data (;62;) (i32.const 3368) "\01\00\00\00v\00\00\00C\00o\00n\00s\00i\00d\00e\00r\00i\00n\00g\00 \00u\00s\00i\00n\00g\00 \00.\00t\00o\00H\00e\00x\00(\00)\00 \00t\00o\00 \00c\00o\00n\00v\00e\00r\00t\00 \00t\00h\00e\00 \00\22\00i\00d\00\22\00 \00t\00o\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;63;) (i32.const 3500) "<")
  (data (;64;) (i32.const 3512) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;65;) (i32.const 3564) "l")
  (data (;66;) (i32.const 3576) "\01\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00v\00a\00l\00u\00e\00.\00t\00s")
  (data (;67;) (i32.const 3676) "<")
  (data (;68;) (i32.const 3688) "\01\00\00\00\1e\00\00\00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;69;) (i32.const 3740) "\5c")
  (data (;70;) (i32.const 3752) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s")
  (data (;71;) (i32.const 3836) "\1c")
  (data (;72;) (i32.const 3848) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
  (data (;73;) (i32.const 3868) "\1c")
  (data (;74;) (i32.const 3880) "\18\00\00\00\08\00\00\00\01")
  (data (;75;) (i32.const 3900) "<")
  (data (;76;) (i32.const 3912) "\01\00\00\00\22\00\00\00#\00N\00o\00n\00P\00r\00o\00f\00i\00t\00R\00e\00m\00o\00v\00e\00d")
  (data (;77;) (i32.const 3964) "\1c")
  (data (;78;) (i32.const 3976) "\01\00\00\00\0a\00\00\00f\00a\00l\00s\00e")
  (data (;79;) (i32.const 3996) "\1c")
  (data (;80;) (i32.const 4008) "\18\00\00\00\08\00\00\00\02")
  (data (;81;) (i32.const 4028) "\1c")
  (data (;82;) (i32.const 4040) "\18\00\00\00\08\00\00\00\03")
  (data (;83;) (i32.const 4060) ",")
  (data (;84;) (i32.const 4072) "\01\00\00\00\16\00\00\00I\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n")
  (data (;85;) (i32.const 4108) "L")
  (data (;86;) (i32.const 4120) "\01\00\00\000\00\00\00#\00I\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n\00B\00a\00l\00a\00n\00c\00e\00A\00d\00d\00e\00d")
  (data (;87;) (i32.const 4188) "l")
  (data (;88;) (i32.const 4200) "\01\00\00\00T\00\00\000\00x\003\00c\006\005\001\00e\00c\00a\008\009\004\004\00e\002\004\00b\007\00f\007\000\008\001\007\00b\001\004\00e\00a\008\003\004\005\008\003\004\005\000\003\00a\00d")
  (data (;89;) (i32.const 4300) ",")
  (data (;90;) (i32.const 4312) "\01\00\00\00\16\00\00\00i\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n")
  (data (;91;) (i32.const 4348) "\1c")
  (data (;92;) (i32.const 4360) "\01\00\00\00\0c\00\00\00a\00m\00o\00u\00n\00t")
  (data (;93;) (i32.const 4380) "<")
  (data (;94;) (i32.const 4392) "\01\00\00\00(\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00 \00c\00o\00n\00v\00e\00r\00t\00i\00n\00g\00 ")
  (data (;95;) (i32.const 4444) ",")
  (data (;96;) (i32.const 4456) "\01\00\00\00\0e\00\00\00 \00t\00o\00 \00i\003\002")
  (data (;97;) (i32.const 4492) "|")
  (data (;98;) (i32.const 4504) "\01\00\00\00d\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00c\00o\00l\00l\00e\00c\00t\00i\00o\00n\00s\00.\00t\00s")
  (data (;99;) (i32.const 4620) ",")
  (data (;100;) (i32.const 4632) "\01\00\00\00\0e\00\00\00b\00a\00l\00a\00n\00c\00e")
  (data (;101;) (i32.const 4668) "<")
  (data (;102;) (i32.const 4680) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
  (data (;103;) (i32.const 4732) "<")
  (data (;104;) (i32.const 4744) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00I\00n\00t\00.")
  (data (;105;) (i32.const 4796) "\5c")
  (data (;106;) (i32.const 4808) "\01\00\00\00J\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\00n\00t\00 \00o\00r\00 \00u\00i\00n\00t\00.")
  (data (;107;) (i32.const 4892) "|")
  (data (;108;) (i32.const 4904) "\01\00\00\00l\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00s\00u\00m\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;109;) (i32.const 5020) "l")
  (data (;110;) (i32.const 5032) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00n\00u\00m\00b\00e\00r\00s\00.\00t\00s")
  (data (;111;) (i32.const 5132) "l")
  (data (;112;) (i32.const 5144) "\01\00\00\00X\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00I\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;113;) (i32.const 5244) "|")
  (data (;114;) (i32.const 5256) "\01\00\00\00f\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00I\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00 \00n\00o\00n\00-\00s\00t\00r\00i\00n\00g\00 \00I\00D\00.\00 ")
  (data (;115;) (i32.const 5372) "\1c")
  (data (;116;) (i32.const 5384) "\01\00\00\00\02\00\00\005")
  (data (;117;) (i32.const 5404) "\1c")
  (data (;118;) (i32.const 5416) "\18\00\00\00\08\00\00\00\04")
  (data (;119;) (i32.const 5436) "L")
  (data (;120;) (i32.const 5448) "\01\00\00\004\00\00\00#\00I\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n\00B\00a\00l\00a\00n\00c\00e\00R\00e\00m\00o\00v\00e\00d")
  (data (;121;) (i32.const 5516) "\8c")
  (data (;122;) (i32.const 5528) "\01\00\00\00v\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00s\00u\00b\00t\00r\00a\00c\00t\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;123;) (i32.const 5660) "\1c")
  (data (;124;) (i32.const 5672) "\01\00\00\00\02\00\00\002")
  (data (;125;) (i32.const 5692) "\1c")
  (data (;126;) (i32.const 5704) "\18\00\00\00\08\00\00\00\05")
  (data (;127;) (i32.const 5724) "\1c")
  (data (;128;) (i32.const 5736) "\18\00\00\00\08\00\00\00\06")
  (data (;129;) (i32.const 5756) ",")
  (data (;130;) (i32.const 5768) "\01\00\00\00\18\00\00\00P\00o\00o\00l\00 \00B\00a\00l\00a\00n\00c\00e")
  (data (;131;) (i32.const 5804) ",")
  (data (;132;) (i32.const 5816) "\01\00\00\00\18\00\00\00#\00P\00o\00o\00l\00C\00r\00e\00a\00t\00e\00d")
  (data (;133;) (i32.const 5852) "l")
  (data (;134;) (i32.const 5864) "\01\00\00\00T\00\00\000\00x\002\007\009\001\00B\00c\00a\001\00f\002\00d\00e\004\006\006\001\00E\00D\008\008\00A\003\000\00C\009\009\00A\007\00a\009\004\004\009\00A\00a\008\004\001\007\004")
  (data (;135;) (i32.const 5964) "\1c")
  (data (;136;) (i32.const 5976) "\01\00\00\00\0a\00\00\00t\00o\00k\00e\00n")
  (data (;137;) (i32.const 5996) "\1c")
  (data (;138;) (i32.const 6008) "\01\00\00\00\08\00\00\00P\00o\00o\00l")
  (data (;139;) (i32.const 6028) "\5c")
  (data (;140;) (i32.const 6040) "\01\00\00\00J\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00P\00o\00o\00l\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;141;) (i32.const 6124) "l")
  (data (;142;) (i32.const 6136) "\01\00\00\00X\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00P\00o\00o\00l\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00 \00n\00o\00n\00-\00s\00t\00r\00i\00n\00g\00 \00I\00D\00.\00 ")
  (data (;143;) (i32.const 6236) "\1c")
  (data (;144;) (i32.const 6248) "\01\00\00\00\02\00\00\000")
  (data (;145;) (i32.const 6268) ",")
  (data (;146;) (i32.const 6280) "\01\00\00\00\14\00\00\00n\00o\00n\00P\00r\00o\00f\00i\00t\00s")
  (data (;147;) (i32.const 6316) "\1c")
  (data (;148;) (i32.const 6328) "\01\00\00\00\02\00\00\00[")
  (data (;149;) (i32.const 6348) "\1c")
  (data (;150;) (i32.const 6360) "\01\00\00\00\02\00\00\00]")
  (data (;151;) (i32.const 6380) "\1c")
  (data (;152;) (i32.const 6392) "\18\00\00\00\08\00\00\00\07")
  (data (;153;) (i32.const 6412) "<")
  (data (;154;) (i32.const 6424) "\01\00\00\00*\00\00\00#\00P\00o\00o\00l\00B\00a\00l\00a\00n\00c\00e\00I\00n\00c\00r\00e\00a\00s\00e\00d")
  (data (;155;) (i32.const 6476) "l")
  (data (;156;) (i32.const 6488) "\01\00\00\00T\00\00\000\00x\004\00c\009\004\006\00b\009\00a\00f\008\00d\000\008\004\00a\00e\005\009\00b\005\00e\00a\007\000\00d\007\000\00a\005\00b\009\009\009\00e\008\00e\008\003\003\002")
  (data (;157;) (i32.const 6588) ",")
  (data (;158;) (i32.const 6600) "\01\00\00\00\10\00\00\00p\00r\00o\00m\00o\00t\00e\00r")
  (data (;159;) (i32.const 6636) ",")
  (data (;160;) (i32.const 6648) "\01\00\00\00\10\00\00\00P\00r\00o\00m\00o\00t\00e\00r")
  (data (;161;) (i32.const 6684) ",")
  (data (;162;) (i32.const 6696) "\01\00\00\00\18\00\00\00t\00o\00t\00a\00l\00D\00o\00n\00a\00t\00e\00d")
  (data (;163;) (i32.const 6732) ",")
  (data (;164;) (i32.const 6744) "\01\00\00\00\1a\00\00\00a\00m\00o\00u\00n\00t\00D\00o\00n\00a\00t\00e\00d")
  (data (;165;) (i32.const 6780) ",")
  (data (;166;) (i32.const 6792) "\01\00\00\00\12\00\00\00t\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;167;) (i32.const 6828) "l")
  (data (;168;) (i32.const 6840) "\01\00\00\00R\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00P\00r\00o\00m\00o\00t\00e\00r\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;169;) (i32.const 6940) "|")
  (data (;170;) (i32.const 6952) "\01\00\00\00`\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00P\00r\00o\00m\00o\00t\00e\00r\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00 \00n\00o\00n\00-\00s\00t\00r\00i\00n\00g\00 \00I\00D\00.\00 ")
  (data (;171;) (i32.const 7068) "|")
  (data (;172;) (i32.const 7080) "\01\00\00\00b\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00P\00r\00o\00m\00o\00t\00e\00r\00D\00o\00n\00a\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;173;) (i32.const 7196) "\8c")
  (data (;174;) (i32.const 7208) "\01\00\00\00p\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00P\00r\00o\00m\00o\00t\00e\00r\00D\00o\00n\00a\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00 \00n\00o\00n\00-\00s\00t\00r\00i\00n\00g\00 \00I\00D\00.\00 ")
  (data (;175;) (i32.const 7340) "<")
  (data (;176;) (i32.const 7352) "\01\00\00\00 \00\00\00P\00r\00o\00m\00o\00t\00e\00r\00D\00o\00n\00a\00t\00i\00o\00n")
  (data (;177;) (i32.const 7404) "\1c")
  (data (;178;) (i32.const 7416) "\01\00\00\00\02\00\00\003")
  (data (;179;) (i32.const 7436) "\1c")
  (data (;180;) (i32.const 7448) "\18\00\00\00\08\00\00\00\08")
  (data (;181;) (i32.const 7468) "\1c")
  (data (;182;) (i32.const 7480) "\18\00\00\00\08\00\00\00\09")
  (data (;183;) (i32.const 7500) "\1c")
  (data (;184;) (i32.const 7512) "\18\00\00\00\08\00\00\00\0a")
  (data (;185;) (i32.const 7532) "<")
  (data (;186;) (i32.const 7544) "\01\00\00\00,\00\00\00#\00P\00o\00o\00l\00B\00a\00l\00a\00n\00c\00e\00T\00r\00a\00n\00s\00f\00e\00r\00e\00d")
  (data (;187;) (i32.const 7596) "l")
  (data (;188;) (i32.const 7608) "\01\00\00\00T\00\00\000\00x\006\00e\000\006\000\000\004\001\00d\006\002\00f\00d\00d\007\006\00c\00f\002\007\00c\005\008\002\00f\006\002\009\008\003\00b\008\006\004\008\007\008\00e\008\00f")
  (data (;189;) (i32.const 7708) "\1c")
  (data (;190;) (i32.const 7720) "\01\00\00\00\0c\00\00\00w\00a\00l\00l\00e\00t")
  (data (;191;) (i32.const 7740) "\1c")
  (data (;192;) (i32.const 7752) "\18\00\00\00\08\00\00\00\0b")
  (data (;193;) (i32.const 7772) ",")
  (data (;194;) (i32.const 7784) "\01\00\00\00\1c\00\00\00#\00D\00o\00n\00a\00t\00i\00o\00n\00A\00d\00d\00e\00d")
  (data (;195;) (i32.const 7820) "\9c")
  (data (;196;) (i32.const 7832) "\01\00\00\00\84\00\00\000\00x\00d\002\002\009\00e\008\006\009\006\00a\007\009\004\00b\00b\002\006\006\009\008\002\001\00b\004\004\004\006\009\000\00c\000\005\00f\001\00f\00a\00a\008\003\003\007\00f\00f\00b\00a\005\000\005\003\009\001\004\00b\006\006\00c\009\009\00d\00d\003\009\00e\000")
  (data (;197;) (i32.const 7980) "\1c")
  (data (;198;) (i32.const 7992) "\01\00\00\00\0c\00\00\00i\00n\00p\00u\00t\00 ")
  (data (;199;) (i32.const 8012) "<")
  (data (;200;) (i32.const 8024) "\01\00\00\00\1e\00\00\00 \00h\00a\00s\00 \00o\00d\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;201;) (i32.const 8076) "\1c")
  (data (;202;) (i32.const 8088) "\01\00\00\00\02\00\00\00x")
  (data (;203;) (i32.const 8108) "\1c")
  (data (;204;) (i32.const 8120) "\01\00\00\00\08\00\00\00u\00s\00e\00r")
  (data (;205;) (i32.const 8140) "L")
  (data (;206;) (i32.const 8152) "\01\00\00\008\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00b\00y\00t\00e\00s\00.")
  (data (;207;) (i32.const 8220) "<")
  (data (;208;) (i32.const 8232) "\01\00\00\00\1e\00\00\00D\00o\00n\00a\00t\00i\00o\00n\00B\00a\00l\00a\00n\00c\00e")
  (data (;209;) (i32.const 8284) "|")
  (data (;210;) (i32.const 8296) "\01\00\00\00`\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00D\00o\00n\00a\00t\00i\00o\00n\00B\00a\00l\00a\00n\00c\00e\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;211;) (i32.const 8412) "\8c")
  (data (;212;) (i32.const 8424) "\01\00\00\00n\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00D\00o\00n\00a\00t\00i\00o\00n\00B\00a\00l\00a\00n\00c\00e\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00 \00n\00o\00n\00-\00s\00t\00r\00i\00n\00g\00 \00I\00D\00.\00 ")
  (data (;213;) (i32.const 8556) "\1c")
  (data (;214;) (i32.const 8568) "\01\00\00\00\02\00\00\001")
  (data (;215;) (i32.const 8588) "\1c")
  (data (;216;) (i32.const 8600) "\18\00\00\00\08\00\00\00\0c")
  (data (;217;) (i32.const 8620) "\1c")
  (data (;218;) (i32.const 8632) "\18\00\00\00\08\00\00\00\0d")
  (data (;219;) (i32.const 8652) "\1c")
  (data (;220;) (i32.const 8664) "\18\00\00\00\08\00\00\00\0e"))
