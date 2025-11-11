pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;

pub const __s8 = i8;
pub const __u8 = u8;
pub const __s16 = c_short;
pub const __u16 = c_ushort;
pub const __s32 = c_int;
pub const __u32 = c_uint;
pub const __s64 = c_longlong;
pub const __u64 = c_ulonglong;
pub const __kernel_fd_set = extern struct {
    fds_bits: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const __kernel_sighandler_t = ?*const fn (c_int) callconv(.c) void;
pub const __kernel_key_t = c_int;
pub const __kernel_mqd_t = c_int;
pub const __kernel_old_uid_t = c_ushort;
pub const __kernel_old_gid_t = c_ushort;
pub const __kernel_old_dev_t = c_ulong;
pub const __kernel_long_t = c_long;
pub const __kernel_ulong_t = c_ulong;
pub const __kernel_ino_t = __kernel_ulong_t;
pub const __kernel_mode_t = c_uint;
pub const __kernel_pid_t = c_int;
pub const __kernel_ipc_pid_t = c_int;
pub const __kernel_uid_t = c_uint;
pub const __kernel_gid_t = c_uint;
pub const __kernel_suseconds_t = __kernel_long_t;
pub const __kernel_daddr_t = c_int;
pub const __kernel_uid32_t = c_uint;
pub const __kernel_gid32_t = c_uint;
pub const __kernel_size_t = __kernel_ulong_t;
pub const __kernel_ssize_t = __kernel_long_t;
pub const __kernel_ptrdiff_t = __kernel_long_t;
pub const __kernel_fsid_t = extern struct {
    val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __kernel_off_t = __kernel_long_t;
pub const __kernel_loff_t = c_longlong;
pub const __kernel_old_time_t = __kernel_long_t;
pub const __kernel_time_t = __kernel_long_t;
pub const __kernel_time64_t = c_longlong;
pub const __kernel_clock_t = __kernel_long_t;
pub const __kernel_timer_t = c_int;
pub const __kernel_clockid_t = c_int;
pub const __kernel_caddr_t = [*c]u8;
pub const __kernel_uid16_t = c_ushort;
pub const __kernel_gid16_t = c_ushort;
pub const __s128 = i128;
pub const __u128 = u128;
pub const __le16 = __u16;
pub const __be16 = __u16;
pub const __le32 = __u32;
pub const __be32 = __u32;
pub const __le64 = __u64;
pub const __be64 = __u64;
pub const __sum16 = __u16;
pub const __wsum = __u32;
pub const __poll_t = c_uint;
pub const struct_kvm_pic_state = extern struct {
    last_irr: __u8 = 0,
    irr: __u8 = 0,
    imr: __u8 = 0,
    isr: __u8 = 0,
    priority_add: __u8 = 0,
    irq_base: __u8 = 0,
    read_reg_select: __u8 = 0,
    poll: __u8 = 0,
    special_mask: __u8 = 0,
    init_state: __u8 = 0,
    auto_eoi: __u8 = 0,
    rotate_on_auto_eoi: __u8 = 0,
    special_fully_nested_mode: __u8 = 0,
    init4: __u8 = 0,
    elcr: __u8 = 0,
    elcr_mask: __u8 = 0,
}; // /usr/include/x86_64-linux-gnu/asm/kvm.h:88:9: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_2 = opaque {};
const union_unnamed_1 = extern union {
    bits: __u64,
    fields: struct_unnamed_2,
};
pub const struct_kvm_ioapic_state = extern struct {
    base_address: __u64 = 0,
    ioregsel: __u32 = 0,
    id: __u32 = 0,
    irr: __u32 = 0,
    pad: __u32 = 0,
    redirtbl: [24]union_unnamed_1 = @import("std").mem.zeroes([24]union_unnamed_1),
};
pub const struct_kvm_regs = extern struct {
    rax: __u64 = 0,
    rbx: __u64 = 0,
    rcx: __u64 = 0,
    rdx: __u64 = 0,
    rsi: __u64 = 0,
    rdi: __u64 = 0,
    rsp: __u64 = 0,
    rbp: __u64 = 0,
    r8: __u64 = 0,
    r9: __u64 = 0,
    r10: __u64 = 0,
    r11: __u64 = 0,
    r12: __u64 = 0,
    r13: __u64 = 0,
    r14: __u64 = 0,
    r15: __u64 = 0,
    rip: __u64 = 0,
    rflags: __u64 = 0,
};
pub const struct_kvm_lapic_state = extern struct {
    regs: [1024]u8 = @import("std").mem.zeroes([1024]u8),
};
pub const struct_kvm_segment = extern struct {
    base: __u64 = 0,
    limit: __u32 = 0,
    selector: __u16 = 0,
    type: __u8 = 0,
    present: __u8 = 0,
    dpl: __u8 = 0,
    db: __u8 = 0,
    s: __u8 = 0,
    l: __u8 = 0,
    g: __u8 = 0,
    avl: __u8 = 0,
    unusable: __u8 = 0,
    padding: __u8 = 0,
};
pub const struct_kvm_dtable = extern struct {
    base: __u64 = 0,
    limit: __u16 = 0,
    padding: [3]__u16 = @import("std").mem.zeroes([3]__u16),
};
pub const struct_kvm_sregs = extern struct {
    cs: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    ds: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    es: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    fs: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    gs: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    ss: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    tr: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    ldt: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    gdt: struct_kvm_dtable = @import("std").mem.zeroes(struct_kvm_dtable),
    idt: struct_kvm_dtable = @import("std").mem.zeroes(struct_kvm_dtable),
    cr0: __u64 = 0,
    cr2: __u64 = 0,
    cr3: __u64 = 0,
    cr4: __u64 = 0,
    cr8: __u64 = 0,
    efer: __u64 = 0,
    apic_base: __u64 = 0,
    interrupt_bitmap: [4]__u64 = @import("std").mem.zeroes([4]__u64),
};
pub const struct_kvm_sregs2 = extern struct {
    cs: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    ds: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    es: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    fs: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    gs: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    ss: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    tr: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    ldt: struct_kvm_segment = @import("std").mem.zeroes(struct_kvm_segment),
    gdt: struct_kvm_dtable = @import("std").mem.zeroes(struct_kvm_dtable),
    idt: struct_kvm_dtable = @import("std").mem.zeroes(struct_kvm_dtable),
    cr0: __u64 = 0,
    cr2: __u64 = 0,
    cr3: __u64 = 0,
    cr4: __u64 = 0,
    cr8: __u64 = 0,
    efer: __u64 = 0,
    apic_base: __u64 = 0,
    flags: __u64 = 0,
    pdptrs: [4]__u64 = @import("std").mem.zeroes([4]__u64),
};
pub const struct_kvm_fpu = extern struct {
    fpr: [8][16]__u8 = @import("std").mem.zeroes([8][16]__u8),
    fcw: __u16 = 0,
    fsw: __u16 = 0,
    ftwx: __u8 = 0,
    pad1: __u8 = 0,
    last_opcode: __u16 = 0,
    last_ip: __u64 = 0,
    last_dp: __u64 = 0,
    xmm: [16][16]__u8 = @import("std").mem.zeroes([16][16]__u8),
    mxcsr: __u32 = 0,
    pad2: __u32 = 0,
};
pub const struct_kvm_msr_entry = extern struct {
    index: __u32 = 0,
    reserved: __u32 = 0,
    data: __u64 = 0,
};
pub const struct_kvm_msrs = extern struct {
    nmsrs: __u32 = 0,
    pad: __u32 = 0,
    _entries: [0]struct_kvm_msr_entry = @import("std").mem.zeroes([0]struct_kvm_msr_entry),
    pub fn entries(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._entries)).array.child) {
        return @ptrCast(&self.*._entries);
    }
};
pub const struct_kvm_msr_list = extern struct {
    nmsrs: __u32 = 0,
    _indices: [0]__u32 = @import("std").mem.zeroes([0]__u32),
    pub fn indices(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._indices)).array.child) {
        return @ptrCast(&self.*._indices);
    }
};
pub const struct_kvm_msr_filter_range = extern struct {
    flags: __u32 = 0,
    nmsrs: __u32 = 0,
    base: __u32 = 0,
    bitmap: [*c]__u8 = null,
};
pub const struct_kvm_msr_filter = extern struct {
    flags: __u32 = 0,
    ranges: [16]struct_kvm_msr_filter_range = @import("std").mem.zeroes([16]struct_kvm_msr_filter_range),
};
pub const struct_kvm_cpuid_entry = extern struct {
    function: __u32 = 0,
    eax: __u32 = 0,
    ebx: __u32 = 0,
    ecx: __u32 = 0,
    edx: __u32 = 0,
    padding: __u32 = 0,
};
pub const struct_kvm_cpuid = extern struct {
    nent: __u32 = 0,
    padding: __u32 = 0,
    _entries: [0]struct_kvm_cpuid_entry = @import("std").mem.zeroes([0]struct_kvm_cpuid_entry),
    pub fn entries(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._entries)).array.child) {
        return @ptrCast(&self.*._entries);
    }
};
pub const struct_kvm_cpuid_entry2 = extern struct {
    function: __u32 = 0,
    index: __u32 = 0,
    flags: __u32 = 0,
    eax: __u32 = 0,
    ebx: __u32 = 0,
    ecx: __u32 = 0,
    edx: __u32 = 0,
    padding: [3]__u32 = @import("std").mem.zeroes([3]__u32),
};
pub const struct_kvm_cpuid2 = extern struct {
    nent: __u32 = 0,
    padding: __u32 = 0,
    _entries: [0]struct_kvm_cpuid_entry2 = @import("std").mem.zeroes([0]struct_kvm_cpuid_entry2),
    pub fn entries(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._entries)).array.child) {
        return @ptrCast(&self.*._entries);
    }
};
pub const struct_kvm_pit_channel_state = extern struct {
    count: __u32 = 0,
    latched_count: __u16 = 0,
    count_latched: __u8 = 0,
    status_latched: __u8 = 0,
    status: __u8 = 0,
    read_state: __u8 = 0,
    write_state: __u8 = 0,
    write_latch: __u8 = 0,
    rw_mode: __u8 = 0,
    mode: __u8 = 0,
    bcd: __u8 = 0,
    gate: __u8 = 0,
    count_load_time: __s64 = 0,
};
pub const struct_kvm_debug_exit_arch = extern struct {
    exception: __u32 = 0,
    pad: __u32 = 0,
    pc: __u64 = 0,
    dr6: __u64 = 0,
    dr7: __u64 = 0,
};
pub const struct_kvm_guest_debug_arch = extern struct {
    debugreg: [8]__u64 = @import("std").mem.zeroes([8]__u64),
};
pub const struct_kvm_pit_state = extern struct {
    channels: [3]struct_kvm_pit_channel_state = @import("std").mem.zeroes([3]struct_kvm_pit_channel_state),
};
pub const struct_kvm_pit_state2 = extern struct {
    channels: [3]struct_kvm_pit_channel_state = @import("std").mem.zeroes([3]struct_kvm_pit_channel_state),
    flags: __u32 = 0,
    reserved: [9]__u32 = @import("std").mem.zeroes([9]__u32),
};
pub const struct_kvm_reinject_control = extern struct {
    pit_reinject: __u8 = 0,
    reserved: [31]__u8 = @import("std").mem.zeroes([31]__u8),
};
const struct_unnamed_3 = extern struct {
    injected: __u8 = 0,
    nr: __u8 = 0,
    has_error_code: __u8 = 0,
    pending: __u8 = 0,
    error_code: __u32 = 0,
};
const struct_unnamed_4 = extern struct {
    injected: __u8 = 0,
    nr: __u8 = 0,
    soft: __u8 = 0,
    shadow: __u8 = 0,
};
const struct_unnamed_5 = extern struct {
    injected: __u8 = 0,
    pending: __u8 = 0,
    masked: __u8 = 0,
    pad: __u8 = 0,
};
const struct_unnamed_6 = extern struct {
    smm: __u8 = 0,
    pending: __u8 = 0,
    smm_inside_nmi: __u8 = 0,
    latched_init: __u8 = 0,
};
const struct_unnamed_7 = extern struct {
    pending: __u8 = 0,
};
pub const struct_kvm_vcpu_events = extern struct {
    exception: struct_unnamed_3 = @import("std").mem.zeroes(struct_unnamed_3),
    interrupt: struct_unnamed_4 = @import("std").mem.zeroes(struct_unnamed_4),
    nmi: struct_unnamed_5 = @import("std").mem.zeroes(struct_unnamed_5),
    sipi_vector: __u32 = 0,
    flags: __u32 = 0,
    smi: struct_unnamed_6 = @import("std").mem.zeroes(struct_unnamed_6),
    triple_fault: struct_unnamed_7 = @import("std").mem.zeroes(struct_unnamed_7),
    reserved: [26]__u8 = @import("std").mem.zeroes([26]__u8),
    exception_has_payload: __u8 = 0,
    exception_payload: __u64 = 0,
};
pub const struct_kvm_debugregs = extern struct {
    db: [4]__u64 = @import("std").mem.zeroes([4]__u64),
    dr6: __u64 = 0,
    dr7: __u64 = 0,
    flags: __u64 = 0,
    reserved: [9]__u64 = @import("std").mem.zeroes([9]__u64),
};
pub const struct_kvm_xsave = extern struct {
    region: [1024]__u32 = @import("std").mem.zeroes([1024]__u32),
    _extra: [0]__u32 = @import("std").mem.zeroes([0]__u32),
    pub fn extra(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._extra)).array.child) {
        return @ptrCast(&self.*._extra);
    }
};
pub const struct_kvm_xcr = extern struct {
    xcr: __u32 = 0,
    reserved: __u32 = 0,
    value: __u64 = 0,
};
pub const struct_kvm_xcrs = extern struct {
    nr_xcrs: __u32 = 0,
    flags: __u32 = 0,
    xcrs: [16]struct_kvm_xcr = @import("std").mem.zeroes([16]struct_kvm_xcr),
    padding: [16]__u64 = @import("std").mem.zeroes([16]__u64),
};
pub const struct_kvm_sync_regs = extern struct {
    regs: struct_kvm_regs = @import("std").mem.zeroes(struct_kvm_regs),
    sregs: struct_kvm_sregs = @import("std").mem.zeroes(struct_kvm_sregs),
    events: struct_kvm_vcpu_events = @import("std").mem.zeroes(struct_kvm_vcpu_events),
};
pub const struct_kvm_vmx_nested_state_data = extern struct {
    vmcs12: [4096]__u8 = @import("std").mem.zeroes([4096]__u8),
    shadow_vmcs12: [4096]__u8 = @import("std").mem.zeroes([4096]__u8),
};
const struct_unnamed_8 = extern struct {
    flags: __u16 = 0,
};
pub const struct_kvm_vmx_nested_state_hdr = extern struct {
    vmxon_pa: __u64 = 0,
    vmcs12_pa: __u64 = 0,
    smm: struct_unnamed_8 = @import("std").mem.zeroes(struct_unnamed_8),
    pad: __u16 = 0,
    flags: __u32 = 0,
    preemption_timer_deadline: __u64 = 0,
};
pub const struct_kvm_svm_nested_state_data = extern struct {
    vmcb12: [4096]__u8 = @import("std").mem.zeroes([4096]__u8),
};
pub const struct_kvm_svm_nested_state_hdr = extern struct {
    vmcb_pa: __u64 = 0,
};
const union_unnamed_9 = extern union {
    vmx: struct_kvm_vmx_nested_state_hdr,
    svm: struct_kvm_svm_nested_state_hdr,
    pad: [120]__u8,
};
const struct_unnamed_12 = extern struct {};
const struct_unnamed_11 = extern struct {
    __empty_vmx: struct_unnamed_12 = @import("std").mem.zeroes(struct_unnamed_12),
    _vmx: [0]struct_kvm_vmx_nested_state_data = @import("std").mem.zeroes([0]struct_kvm_vmx_nested_state_data),
    pub fn vmx(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._vmx)).array.child) {
        return @ptrCast(&self.*._vmx);
    }
};
const struct_unnamed_14 = extern struct {};
const struct_unnamed_13 = extern struct {
    __empty_svm: struct_unnamed_14 = @import("std").mem.zeroes(struct_unnamed_14),
    _svm: [0]struct_kvm_svm_nested_state_data = @import("std").mem.zeroes([0]struct_kvm_svm_nested_state_data),
    pub fn svm(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._svm)).array.child) {
        return @ptrCast(&self.*._svm);
    }
};
const union_unnamed_10 = extern union {
    unnamed_0: struct_unnamed_11,
    unnamed_1: struct_unnamed_13,
};
pub const struct_kvm_nested_state = extern struct {
    flags: __u16 = 0,
    format: __u16 = 0,
    size: __u32 = 0,
    hdr: union_unnamed_9 = @import("std").mem.zeroes(union_unnamed_9),
    data: union_unnamed_10 = @import("std").mem.zeroes(union_unnamed_10),
};
pub const struct_kvm_pmu_event_filter = extern struct {
    action: __u32 = 0,
    nevents: __u32 = 0,
    fixed_counter_bitmap: __u32 = 0,
    flags: __u32 = 0,
    pad: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    _events: [0]__u64 = @import("std").mem.zeroes([0]__u64),
    pub fn events(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._events)).array.child) {
        return @ptrCast(&self.*._events);
    }
};
pub const struct_kvm_userspace_memory_region = extern struct {
    slot: __u32 = 0,
    flags: __u32 = 0,
    guest_phys_addr: __u64 = 0,
    memory_size: __u64 = 0,
    userspace_addr: __u64 = 0,
};
pub const struct_kvm_userspace_memory_region2 = extern struct {
    slot: __u32 = 0,
    flags: __u32 = 0,
    guest_phys_addr: __u64 = 0,
    memory_size: __u64 = 0,
    userspace_addr: __u64 = 0,
    guest_memfd_offset: __u64 = 0,
    guest_memfd: __u32 = 0,
    pad1: __u32 = 0,
    pad2: [14]__u64 = @import("std").mem.zeroes([14]__u64),
};
const union_unnamed_15 = extern union {
    irq: __u32,
    status: __s32,
};
pub const struct_kvm_irq_level = extern struct {
    unnamed_0: union_unnamed_15 = @import("std").mem.zeroes(union_unnamed_15),
    level: __u32 = 0,
};
const union_unnamed_16 = extern union {
    dummy: [512]u8,
    pic: struct_kvm_pic_state,
    ioapic: struct_kvm_ioapic_state,
};
pub const struct_kvm_irqchip = extern struct {
    chip_id: __u32 = 0,
    pad: __u32 = 0,
    chip: union_unnamed_16 = @import("std").mem.zeroes(union_unnamed_16),
};
pub const struct_kvm_pit_config = extern struct {
    flags: __u32 = 0,
    pad: [15]__u32 = @import("std").mem.zeroes([15]__u32),
};
pub const struct_kvm_s390_skeys = extern struct {
    start_gfn: __u64 = 0,
    count: __u64 = 0,
    skeydata_addr: __u64 = 0,
    flags: __u32 = 0,
    reserved: [9]__u32 = @import("std").mem.zeroes([9]__u32),
};
const union_unnamed_17 = extern union {
    remaining: __u64,
    mask: __u64,
};
pub const struct_kvm_s390_cmma_log = extern struct {
    start_gfn: __u64 = 0,
    count: __u32 = 0,
    flags: __u32 = 0,
    unnamed_0: union_unnamed_17 = @import("std").mem.zeroes(union_unnamed_17),
    values: __u64 = 0,
};
const struct_unnamed_19 = extern struct {
    msr: __u32 = 0,
    pad2: __u32 = 0,
    control: __u64 = 0,
    evt_page: __u64 = 0,
    msg_page: __u64 = 0,
};
const struct_unnamed_20 = extern struct {
    input: __u64 = 0,
    result: __u64 = 0,
    params: [2]__u64 = @import("std").mem.zeroes([2]__u64),
};
const struct_unnamed_21 = extern struct {
    msr: __u32 = 0,
    pad2: __u32 = 0,
    control: __u64 = 0,
    status: __u64 = 0,
    send_page: __u64 = 0,
    recv_page: __u64 = 0,
    pending_page: __u64 = 0,
};
const union_unnamed_18 = extern union {
    synic: struct_unnamed_19,
    hcall: struct_unnamed_20,
    syndbg: struct_unnamed_21,
};
pub const struct_kvm_hyperv_exit = extern struct {
    type: __u32 = 0,
    pad1: __u32 = 0,
    u: union_unnamed_18 = @import("std").mem.zeroes(union_unnamed_18),
};
const struct_unnamed_23 = extern struct {
    longmode: __u32 = 0,
    cpl: __u32 = 0,
    input: __u64 = 0,
    result: __u64 = 0,
    params: [6]__u64 = @import("std").mem.zeroes([6]__u64),
};
const union_unnamed_22 = extern union {
    hcall: struct_unnamed_23,
};
pub const struct_kvm_xen_exit = extern struct {
    type: __u32 = 0,
    u: union_unnamed_22 = @import("std").mem.zeroes(union_unnamed_22),
};
const struct_unnamed_25 = extern struct {
    hardware_exit_reason: __u64 = 0,
};
const struct_unnamed_26 = extern struct {
    hardware_entry_failure_reason: __u64 = 0,
    cpu: __u32 = 0,
};
const struct_unnamed_27 = extern struct {
    exception: __u32 = 0,
    error_code: __u32 = 0,
};
const struct_unnamed_28 = extern struct {
    direction: __u8 = 0,
    size: __u8 = 0,
    port: __u16 = 0,
    count: __u32 = 0,
    data_offset: __u64 = 0,
};
const struct_unnamed_29 = extern struct {
    arch: struct_kvm_debug_exit_arch = @import("std").mem.zeroes(struct_kvm_debug_exit_arch),
};
const struct_unnamed_30 = extern struct {
    phys_addr: __u64 = 0,
    data: [8]__u8 = @import("std").mem.zeroes([8]__u8),
    len: __u32 = 0,
    is_write: __u8 = 0,
};
const struct_unnamed_31 = extern struct {
    phys_addr: __u64 = 0,
    data: [8]__u8 = @import("std").mem.zeroes([8]__u8),
    len: __u32 = 0,
    is_write: __u8 = 0,
};
const union_unnamed_33 = extern union {
    longmode: __u32,
    flags: __u64,
};
const struct_unnamed_32 = extern struct {
    nr: __u64 = 0,
    args: [6]__u64 = @import("std").mem.zeroes([6]__u64),
    ret: __u64 = 0,
    unnamed_0: union_unnamed_33 = @import("std").mem.zeroes(union_unnamed_33),
};
const struct_unnamed_34 = extern struct {
    rip: __u64 = 0,
    is_write: __u32 = 0,
    pad: __u32 = 0,
};
const struct_unnamed_35 = extern struct {
    icptcode: __u8 = 0,
    ipa: __u16 = 0,
    ipb: __u32 = 0,
};
const struct_unnamed_36 = extern struct {
    trans_exc_code: __u64 = 0,
    pgm_code: __u32 = 0,
};
const struct_unnamed_37 = extern struct {
    dcrn: __u32 = 0,
    data: __u32 = 0,
    is_write: __u8 = 0,
};
const struct_unnamed_38 = extern struct {
    suberror: __u32 = 0,
    ndata: __u32 = 0,
    data: [16]__u64 = @import("std").mem.zeroes([16]__u64),
};
const struct_unnamed_41 = extern struct {
    insn_size: __u8 = 0,
    insn_bytes: [15]__u8 = @import("std").mem.zeroes([15]__u8),
};
const union_unnamed_40 = extern union {
    unnamed_0: struct_unnamed_41,
};
const struct_unnamed_39 = extern struct {
    suberror: __u32 = 0,
    ndata: __u32 = 0,
    flags: __u64 = 0,
    unnamed_0: union_unnamed_40 = @import("std").mem.zeroes(union_unnamed_40),
};
const struct_unnamed_42 = extern struct {
    gprs: [32]__u64 = @import("std").mem.zeroes([32]__u64),
};
const struct_unnamed_43 = extern struct {
    nr: __u64 = 0,
    ret: __u64 = 0,
    args: [9]__u64 = @import("std").mem.zeroes([9]__u64),
};
const struct_unnamed_44 = extern struct {
    subchannel_id: __u16 = 0,
    subchannel_nr: __u16 = 0,
    io_int_parm: __u32 = 0,
    io_int_word: __u32 = 0,
    ipb: __u32 = 0,
    dequeued: __u8 = 0,
};
const struct_unnamed_45 = extern struct {
    epr: __u32 = 0,
};
const union_unnamed_47 = extern union {
    flags: __u64,
    data: [16]__u64,
};
const struct_unnamed_46 = extern struct {
    type: __u32 = 0,
    ndata: __u32 = 0,
    unnamed_0: union_unnamed_47 = @import("std").mem.zeroes(union_unnamed_47),
};
const struct_unnamed_48 = extern struct {
    addr: __u64 = 0,
    ar: __u8 = 0,
    reserved: __u8 = 0,
    fc: __u8 = 0,
    sel1: __u8 = 0,
    sel2: __u16 = 0,
};
const struct_unnamed_49 = extern struct {
    vector: __u8 = 0,
};
const struct_unnamed_50 = extern struct {
    esr_iss: __u64 = 0,
    fault_ipa: __u64 = 0,
};
const struct_unnamed_51 = extern struct {
    @"error": __u8 = 0,
    pad: [7]__u8 = @import("std").mem.zeroes([7]__u8),
    reason: __u32 = 0,
    index: __u32 = 0,
    data: __u64 = 0,
};
const struct_unnamed_52 = extern struct {
    extension_id: c_ulong = 0,
    function_id: c_ulong = 0,
    args: [6]c_ulong = @import("std").mem.zeroes([6]c_ulong),
    ret: [2]c_ulong = @import("std").mem.zeroes([2]c_ulong),
};
const struct_unnamed_53 = extern struct {
    csr_num: c_ulong = 0,
    new_value: c_ulong = 0,
    write_mask: c_ulong = 0,
    ret_value: c_ulong = 0,
};
const struct_unnamed_54 = extern struct {
    flags: __u32 = 0,
};
const struct_unnamed_55 = extern struct {
    flags: __u64 = 0,
    gpa: __u64 = 0,
    size: __u64 = 0,
};
const union_unnamed_24 = extern union {
    hw: struct_unnamed_25,
    fail_entry: struct_unnamed_26,
    ex: struct_unnamed_27,
    io: struct_unnamed_28,
    debug: struct_unnamed_29,
    mmio: struct_unnamed_30,
    iocsr_io: struct_unnamed_31,
    hypercall: struct_unnamed_32,
    tpr_access: struct_unnamed_34,
    s390_sieic: struct_unnamed_35,
    s390_reset_flags: __u64,
    s390_ucontrol: struct_unnamed_36,
    dcr: struct_unnamed_37,
    internal: struct_unnamed_38,
    emulation_failure: struct_unnamed_39,
    osi: struct_unnamed_42,
    papr_hcall: struct_unnamed_43,
    s390_tsch: struct_unnamed_44,
    epr: struct_unnamed_45,
    system_event: struct_unnamed_46,
    s390_stsi: struct_unnamed_48,
    eoi: struct_unnamed_49,
    hyperv: struct_kvm_hyperv_exit,
    arm_nisv: struct_unnamed_50,
    msr: struct_unnamed_51,
    xen: struct_kvm_xen_exit,
    riscv_sbi: struct_unnamed_52,
    riscv_csr: struct_unnamed_53,
    notify: struct_unnamed_54,
    memory_fault: struct_unnamed_55,
    padding: [256]u8,
};
const union_unnamed_56 = extern union {
    regs: struct_kvm_sync_regs,
    padding: [2048]u8,
};
pub const struct_kvm_run = extern struct {
    request_interrupt_window: __u8 = 0,
    immediate_exit: __u8 = 0,
    padding1: [6]__u8 = @import("std").mem.zeroes([6]__u8),
    exit_reason: __u32 = 0,
    ready_for_interrupt_injection: __u8 = 0,
    if_flag: __u8 = 0,
    flags: __u16 = 0,
    cr8: __u64 = 0,
    apic_base: __u64 = 0,
    unnamed_0: union_unnamed_24 = @import("std").mem.zeroes(union_unnamed_24),
    kvm_valid_regs: __u64 = 0,
    kvm_dirty_regs: __u64 = 0,
    s: union_unnamed_56 = @import("std").mem.zeroes(union_unnamed_56),
};
const union_unnamed_57 = extern union {
    pad: __u32,
    pio: __u32,
};
pub const struct_kvm_coalesced_mmio_zone = extern struct {
    addr: __u64 = 0,
    size: __u32 = 0,
    unnamed_0: union_unnamed_57 = @import("std").mem.zeroes(union_unnamed_57),
};
const union_unnamed_58 = extern union {
    pad: __u32,
    pio: __u32,
};
pub const struct_kvm_coalesced_mmio = extern struct {
    phys_addr: __u64 = 0,
    len: __u32 = 0,
    unnamed_0: union_unnamed_58 = @import("std").mem.zeroes(union_unnamed_58),
    data: [8]__u8 = @import("std").mem.zeroes([8]__u8),
};
pub const struct_kvm_coalesced_mmio_ring = extern struct {
    first: __u32 = 0,
    last: __u32 = 0,
    _coalesced_mmio: [0]struct_kvm_coalesced_mmio = @import("std").mem.zeroes([0]struct_kvm_coalesced_mmio),
    pub fn coalesced_mmio(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._coalesced_mmio)).array.child) {
        return @ptrCast(&self.*._coalesced_mmio);
    }
};
pub const struct_kvm_translation = extern struct {
    linear_address: __u64 = 0,
    physical_address: __u64 = 0,
    valid: __u8 = 0,
    writeable: __u8 = 0,
    usermode: __u8 = 0,
    pad: [5]__u8 = @import("std").mem.zeroes([5]__u8),
};
const struct_unnamed_60 = extern struct {
    ar: __u8 = 0,
    key: __u8 = 0,
    pad1: [6]__u8 = @import("std").mem.zeroes([6]__u8),
    old_addr: __u64 = 0,
};
const union_unnamed_59 = extern union {
    unnamed_0: struct_unnamed_60,
    sida_offset: __u32,
    reserved: [32]__u8,
};
pub const struct_kvm_s390_mem_op = extern struct {
    gaddr: __u64 = 0,
    flags: __u64 = 0,
    size: __u32 = 0,
    op: __u32 = 0,
    buf: __u64 = 0,
    unnamed_0: union_unnamed_59 = @import("std").mem.zeroes(union_unnamed_59),
};
pub const struct_kvm_interrupt = extern struct {
    irq: __u32 = 0,
};
const union_unnamed_61 = extern union {
    dirty_bitmap: ?*anyopaque,
    padding2: __u64,
};
pub const struct_kvm_dirty_log = extern struct {
    slot: __u32 = 0,
    padding1: __u32 = 0,
    unnamed_0: union_unnamed_61 = @import("std").mem.zeroes(union_unnamed_61),
};
const union_unnamed_62 = extern union {
    dirty_bitmap: ?*anyopaque,
    padding2: __u64,
};
pub const struct_kvm_clear_dirty_log = extern struct {
    slot: __u32 = 0,
    num_pages: __u32 = 0,
    first_page: __u64 = 0,
    unnamed_0: union_unnamed_62 = @import("std").mem.zeroes(union_unnamed_62),
};
pub const struct_kvm_signal_mask = extern struct {
    len: __u32 = 0,
    _sigset: [0]__u8 = @import("std").mem.zeroes([0]__u8),
    pub fn sigset(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._sigset)).array.child) {
        return @ptrCast(&self.*._sigset);
    }
};
pub const struct_kvm_tpr_access_ctl = extern struct {
    enabled: __u32 = 0,
    flags: __u32 = 0,
    reserved: [8]__u32 = @import("std").mem.zeroes([8]__u32),
};
pub const struct_kvm_vapic_addr = extern struct {
    vapic_addr: __u64 = 0,
};
pub const struct_kvm_mp_state = extern struct {
    mp_state: __u32 = 0,
};
pub const struct_kvm_s390_psw = extern struct {
    mask: __u64 = 0,
    addr: __u64 = 0,
};
pub const struct_kvm_s390_interrupt = extern struct {
    type: __u32 = 0,
    parm: __u32 = 0,
    parm64: __u64 = 0,
};
pub const struct_kvm_s390_io_info = extern struct {
    subchannel_id: __u16 = 0,
    subchannel_nr: __u16 = 0,
    io_int_parm: __u32 = 0,
    io_int_word: __u32 = 0,
};
pub const struct_kvm_s390_ext_info = extern struct {
    ext_params: __u32 = 0,
    pad: __u32 = 0,
    ext_params2: __u64 = 0,
};
pub const struct_kvm_s390_pgm_info = extern struct {
    trans_exc_code: __u64 = 0,
    mon_code: __u64 = 0,
    per_address: __u64 = 0,
    data_exc_code: __u32 = 0,
    code: __u16 = 0,
    mon_class_nr: __u16 = 0,
    per_code: __u8 = 0,
    per_atmid: __u8 = 0,
    exc_access_id: __u8 = 0,
    per_access_id: __u8 = 0,
    op_access_id: __u8 = 0,
    flags: __u8 = 0,
    pad: [2]__u8 = @import("std").mem.zeroes([2]__u8),
};
pub const struct_kvm_s390_prefix_info = extern struct {
    address: __u32 = 0,
};
pub const struct_kvm_s390_extcall_info = extern struct {
    code: __u16 = 0,
};
pub const struct_kvm_s390_emerg_info = extern struct {
    code: __u16 = 0,
};
pub const struct_kvm_s390_stop_info = extern struct {
    flags: __u32 = 0,
};
pub const struct_kvm_s390_mchk_info = extern struct {
    cr14: __u64 = 0,
    mcic: __u64 = 0,
    failing_storage_address: __u64 = 0,
    ext_damage_code: __u32 = 0,
    pad: __u32 = 0,
    fixed_logout: [16]__u8 = @import("std").mem.zeroes([16]__u8),
};
const union_unnamed_63 = extern union {
    io: struct_kvm_s390_io_info,
    ext: struct_kvm_s390_ext_info,
    pgm: struct_kvm_s390_pgm_info,
    emerg: struct_kvm_s390_emerg_info,
    extcall: struct_kvm_s390_extcall_info,
    prefix: struct_kvm_s390_prefix_info,
    stop: struct_kvm_s390_stop_info,
    mchk: struct_kvm_s390_mchk_info,
    reserved: [64]u8,
};
pub const struct_kvm_s390_irq = extern struct {
    type: __u64 = 0,
    u: union_unnamed_63 = @import("std").mem.zeroes(union_unnamed_63),
};
pub const struct_kvm_s390_irq_state = extern struct {
    buf: __u64 = 0,
    flags: __u32 = 0,
    len: __u32 = 0,
    reserved: [4]__u32 = @import("std").mem.zeroes([4]__u32),
};
pub const struct_kvm_guest_debug = extern struct {
    control: __u32 = 0,
    pad: __u32 = 0,
    arch: struct_kvm_guest_debug_arch = @import("std").mem.zeroes(struct_kvm_guest_debug_arch),
};
pub const kvm_ioeventfd_flag_nr_datamatch: c_int = 0;
pub const kvm_ioeventfd_flag_nr_pio: c_int = 1;
pub const kvm_ioeventfd_flag_nr_deassign: c_int = 2;
pub const kvm_ioeventfd_flag_nr_virtio_ccw_notify: c_int = 3;
pub const kvm_ioeventfd_flag_nr_fast_mmio: c_int = 4;
pub const kvm_ioeventfd_flag_nr_max: c_int = 5;
const enum_unnamed_64 = c_uint;
pub const struct_kvm_ioeventfd = extern struct {
    datamatch: __u64 = 0,
    addr: __u64 = 0,
    len: __u32 = 0,
    fd: __s32 = 0,
    flags: __u32 = 0,
    pad: [36]__u8 = @import("std").mem.zeroes([36]__u8),
};
pub const struct_kvm_enable_cap = extern struct {
    cap: __u32 = 0,
    flags: __u32 = 0,
    args: [4]__u64 = @import("std").mem.zeroes([4]__u64),
    pad: [64]__u8 = @import("std").mem.zeroes([64]__u8),
};
pub const struct_kvm_ppc_pvinfo = extern struct {
    flags: __u32 = 0,
    hcall: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    pad: [108]__u8 = @import("std").mem.zeroes([108]__u8),
};
pub const struct_kvm_ppc_one_page_size = extern struct {
    page_shift: __u32 = 0,
    pte_enc: __u32 = 0,
};
pub const struct_kvm_ppc_one_seg_page_size = extern struct {
    page_shift: __u32 = 0,
    slb_enc: __u32 = 0,
    enc: [8]struct_kvm_ppc_one_page_size = @import("std").mem.zeroes([8]struct_kvm_ppc_one_page_size),
};
pub const struct_kvm_ppc_smmu_info = extern struct {
    flags: __u64 = 0,
    slb_size: __u32 = 0,
    data_keys: __u16 = 0,
    instr_keys: __u16 = 0,
    sps: [8]struct_kvm_ppc_one_seg_page_size = @import("std").mem.zeroes([8]struct_kvm_ppc_one_seg_page_size),
};
pub const struct_kvm_ppc_resize_hpt = extern struct {
    flags: __u64 = 0,
    shift: __u32 = 0,
    pad: __u32 = 0,
};
pub const struct_kvm_irq_routing_irqchip = extern struct {
    irqchip: __u32 = 0,
    pin: __u32 = 0,
};
const union_unnamed_65 = extern union {
    pad: __u32,
    devid: __u32,
};
pub const struct_kvm_irq_routing_msi = extern struct {
    address_lo: __u32 = 0,
    address_hi: __u32 = 0,
    data: __u32 = 0,
    unnamed_0: union_unnamed_65 = @import("std").mem.zeroes(union_unnamed_65),
};
pub const struct_kvm_irq_routing_s390_adapter = extern struct {
    ind_addr: __u64 = 0,
    summary_addr: __u64 = 0,
    ind_offset: __u64 = 0,
    summary_offset: __u32 = 0,
    adapter_id: __u32 = 0,
};
pub const struct_kvm_irq_routing_hv_sint = extern struct {
    vcpu: __u32 = 0,
    sint: __u32 = 0,
};
pub const struct_kvm_irq_routing_xen_evtchn = extern struct {
    port: __u32 = 0,
    vcpu: __u32 = 0,
    priority: __u32 = 0,
};
const union_unnamed_66 = extern union {
    irqchip: struct_kvm_irq_routing_irqchip,
    msi: struct_kvm_irq_routing_msi,
    adapter: struct_kvm_irq_routing_s390_adapter,
    hv_sint: struct_kvm_irq_routing_hv_sint,
    xen_evtchn: struct_kvm_irq_routing_xen_evtchn,
    pad: [8]__u32,
};
pub const struct_kvm_irq_routing_entry = extern struct {
    gsi: __u32 = 0,
    type: __u32 = 0,
    flags: __u32 = 0,
    pad: __u32 = 0,
    u: union_unnamed_66 = @import("std").mem.zeroes(union_unnamed_66),
};
pub const struct_kvm_irq_routing = extern struct {
    nr: __u32 = 0,
    flags: __u32 = 0,
    _entries: [0]struct_kvm_irq_routing_entry = @import("std").mem.zeroes([0]struct_kvm_irq_routing_entry),
    pub fn entries(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._entries)).array.child) {
        return @ptrCast(&self.*._entries);
    }
};
pub const struct_kvm_x86_mce = extern struct {
    status: __u64 = 0,
    addr: __u64 = 0,
    misc: __u64 = 0,
    mcg_status: __u64 = 0,
    bank: __u8 = 0,
    pad1: [7]__u8 = @import("std").mem.zeroes([7]__u8),
    pad2: [3]__u64 = @import("std").mem.zeroes([3]__u64),
};
pub const struct_kvm_xen_hvm_config = extern struct {
    flags: __u32 = 0,
    msr: __u32 = 0,
    blob_addr_32: __u64 = 0,
    blob_addr_64: __u64 = 0,
    blob_size_32: __u8 = 0,
    blob_size_64: __u8 = 0,
    pad2: [30]__u8 = @import("std").mem.zeroes([30]__u8),
};
pub const struct_kvm_irqfd = extern struct {
    fd: __u32 = 0,
    gsi: __u32 = 0,
    flags: __u32 = 0,
    resamplefd: __u32 = 0,
    pad: [16]__u8 = @import("std").mem.zeroes([16]__u8),
};
pub const struct_kvm_clock_data = extern struct {
    clock: __u64 = 0,
    flags: __u32 = 0,
    pad0: __u32 = 0,
    realtime: __u64 = 0,
    host_tsc: __u64 = 0,
    pad: [4]__u32 = @import("std").mem.zeroes([4]__u32),
};
pub const struct_kvm_config_tlb = extern struct {
    params: __u64 = 0,
    array: __u64 = 0,
    mmu_type: __u32 = 0,
    array_len: __u32 = 0,
};
pub const struct_kvm_dirty_tlb = extern struct {
    bitmap: __u64 = 0,
    num_dirty: __u32 = 0,
};
pub const struct_kvm_reg_list = extern struct {
    n: __u64 = 0,
    _reg: [0]__u64 = @import("std").mem.zeroes([0]__u64),
    pub fn reg(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._reg)).array.child) {
        return @ptrCast(&self.*._reg);
    }
};
pub const struct_kvm_one_reg = extern struct {
    id: __u64 = 0,
    addr: __u64 = 0,
};
pub const struct_kvm_msi = extern struct {
    address_lo: __u32 = 0,
    address_hi: __u32 = 0,
    data: __u32 = 0,
    flags: __u32 = 0,
    devid: __u32 = 0,
    pad: [12]__u8 = @import("std").mem.zeroes([12]__u8),
};
pub const struct_kvm_arm_device_addr = extern struct {
    id: __u64 = 0,
    addr: __u64 = 0,
};
pub const struct_kvm_create_device = extern struct {
    type: __u32 = 0,
    fd: __u32 = 0,
    flags: __u32 = 0,
};
pub const struct_kvm_device_attr = extern struct {
    flags: __u32 = 0,
    group: __u32 = 0,
    attr: __u64 = 0,
    addr: __u64 = 0,
};
pub const KVM_DEV_TYPE_FSL_MPIC_20: c_int = 1;
pub const KVM_DEV_TYPE_FSL_MPIC_42: c_int = 2;
pub const KVM_DEV_TYPE_XICS: c_int = 3;
pub const KVM_DEV_TYPE_VFIO: c_int = 4;
pub const KVM_DEV_TYPE_ARM_VGIC_V2: c_int = 5;
pub const KVM_DEV_TYPE_FLIC: c_int = 6;
pub const KVM_DEV_TYPE_ARM_VGIC_V3: c_int = 7;
pub const KVM_DEV_TYPE_ARM_VGIC_ITS: c_int = 8;
pub const KVM_DEV_TYPE_XIVE: c_int = 9;
pub const KVM_DEV_TYPE_ARM_PV_TIME: c_int = 10;
pub const KVM_DEV_TYPE_RISCV_AIA: c_int = 11;
pub const KVM_DEV_TYPE_MAX: c_int = 12;
pub const enum_kvm_device_type = c_uint;
pub const struct_kvm_vfio_spapr_tce = extern struct {
    groupfd: __s32 = 0,
    tablefd: __s32 = 0,
};
pub const struct_kvm_s390_ucas_mapping = extern struct {
    user_addr: __u64 = 0,
    vcpu_addr: __u64 = 0,
    length: __u64 = 0,
};
pub const struct_kvm_enc_region = extern struct {
    addr: __u64 = 0,
    size: __u64 = 0,
};
pub const struct_kvm_s390_pv_sec_parm = extern struct {
    origin: __u64 = 0,
    length: __u64 = 0,
};
pub const struct_kvm_s390_pv_unp = extern struct {
    addr: __u64 = 0,
    size: __u64 = 0,
    tweak: __u64 = 0,
};
pub const KVM_PV_DUMP_INIT: c_int = 0;
pub const KVM_PV_DUMP_CONFIG_STOR_STATE: c_int = 1;
pub const KVM_PV_DUMP_COMPLETE: c_int = 2;
pub const KVM_PV_DUMP_CPU: c_int = 3;
pub const enum_pv_cmd_dmp_id = c_uint;
pub const struct_kvm_s390_pv_dmp = extern struct {
    subcmd: __u64 = 0,
    buff_addr: __u64 = 0,
    buff_len: __u64 = 0,
    gaddr: __u64 = 0,
    reserved: [4]__u64 = @import("std").mem.zeroes([4]__u64),
};
pub const KVM_PV_INFO_VM: c_int = 0;
pub const KVM_PV_INFO_DUMP: c_int = 1;
pub const enum_pv_cmd_info_id = c_uint;
pub const struct_kvm_s390_pv_info_dump = extern struct {
    dump_cpu_buffer_len: __u64 = 0,
    dump_config_mem_buffer_per_1m: __u64 = 0,
    dump_config_finalize_len: __u64 = 0,
};
pub const struct_kvm_s390_pv_info_vm = extern struct {
    inst_calls_list: [4]__u64 = @import("std").mem.zeroes([4]__u64),
    max_cpus: __u64 = 0,
    max_guests: __u64 = 0,
    max_guest_addr: __u64 = 0,
    feature_indication: __u64 = 0,
};
pub const struct_kvm_s390_pv_info_header = extern struct {
    id: __u32 = 0,
    len_max: __u32 = 0,
    len_written: __u32 = 0,
    reserved: __u32 = 0,
};
const union_unnamed_67 = extern union {
    dump: struct_kvm_s390_pv_info_dump,
    vm: struct_kvm_s390_pv_info_vm,
};
pub const struct_kvm_s390_pv_info = extern struct {
    header: struct_kvm_s390_pv_info_header = @import("std").mem.zeroes(struct_kvm_s390_pv_info_header),
    unnamed_0: union_unnamed_67 = @import("std").mem.zeroes(union_unnamed_67),
};
pub const KVM_PV_ENABLE: c_int = 0;
pub const KVM_PV_DISABLE: c_int = 1;
pub const KVM_PV_SET_SEC_PARMS: c_int = 2;
pub const KVM_PV_UNPACK: c_int = 3;
pub const KVM_PV_VERIFY: c_int = 4;
pub const KVM_PV_PREP_RESET: c_int = 5;
pub const KVM_PV_UNSHARE_ALL: c_int = 6;
pub const KVM_PV_INFO: c_int = 7;
pub const KVM_PV_DUMP: c_int = 8;
pub const KVM_PV_ASYNC_CLEANUP_PREPARE: c_int = 9;
pub const KVM_PV_ASYNC_CLEANUP_PERFORM: c_int = 10;
pub const enum_pv_cmd_id = c_uint;
pub const struct_kvm_pv_cmd = extern struct {
    cmd: __u32 = 0,
    rc: __u16 = 0,
    rrc: __u16 = 0,
    data: __u64 = 0,
    flags: __u32 = 0,
    reserved: [3]__u32 = @import("std").mem.zeroes([3]__u32),
};
const struct_unnamed_69 = extern struct {
    gfn: __u64 = 0,
};
const struct_unnamed_72 = extern struct {
    port: __u32 = 0,
    vcpu: __u32 = 0,
    priority: __u32 = 0,
};
const struct_unnamed_73 = extern struct {
    port: __u32 = 0,
    fd: __s32 = 0,
};
const union_unnamed_71 = extern union {
    port: struct_unnamed_72,
    eventfd: struct_unnamed_73,
    padding: [4]__u32,
};
const struct_unnamed_70 = extern struct {
    send_port: __u32 = 0,
    type: __u32 = 0,
    flags: __u32 = 0,
    deliver: union_unnamed_71 = @import("std").mem.zeroes(union_unnamed_71),
};
const union_unnamed_68 = extern union {
    long_mode: __u8,
    vector: __u8,
    runstate_update_flag: __u8,
    shared_info: struct_unnamed_69,
    evtchn: struct_unnamed_70,
    xen_version: __u32,
    pad: [8]__u64,
};
pub const struct_kvm_xen_hvm_attr = extern struct {
    type: __u16 = 0,
    pad: [3]__u16 = @import("std").mem.zeroes([3]__u16),
    u: union_unnamed_68 = @import("std").mem.zeroes(union_unnamed_68),
};
const struct_unnamed_75 = extern struct {
    state: __u64 = 0,
    state_entry_time: __u64 = 0,
    time_running: __u64 = 0,
    time_runnable: __u64 = 0,
    time_blocked: __u64 = 0,
    time_offline: __u64 = 0,
};
const struct_unnamed_76 = extern struct {
    port: __u32 = 0,
    priority: __u32 = 0,
    expires_ns: __u64 = 0,
};
const union_unnamed_74 = extern union {
    gpa: __u64,
    pad: [8]__u64,
    runstate: struct_unnamed_75,
    vcpu_id: __u32,
    timer: struct_unnamed_76,
    vector: __u8,
};
pub const struct_kvm_xen_vcpu_attr = extern struct {
    type: __u16 = 0,
    pad: [3]__u16 = @import("std").mem.zeroes([3]__u16),
    u: union_unnamed_74 = @import("std").mem.zeroes(union_unnamed_74),
};
pub const KVM_SEV_INIT: c_int = 0;
pub const KVM_SEV_ES_INIT: c_int = 1;
pub const KVM_SEV_LAUNCH_START: c_int = 2;
pub const KVM_SEV_LAUNCH_UPDATE_DATA: c_int = 3;
pub const KVM_SEV_LAUNCH_UPDATE_VMSA: c_int = 4;
pub const KVM_SEV_LAUNCH_SECRET: c_int = 5;
pub const KVM_SEV_LAUNCH_MEASURE: c_int = 6;
pub const KVM_SEV_LAUNCH_FINISH: c_int = 7;
pub const KVM_SEV_SEND_START: c_int = 8;
pub const KVM_SEV_SEND_UPDATE_DATA: c_int = 9;
pub const KVM_SEV_SEND_UPDATE_VMSA: c_int = 10;
pub const KVM_SEV_SEND_FINISH: c_int = 11;
pub const KVM_SEV_RECEIVE_START: c_int = 12;
pub const KVM_SEV_RECEIVE_UPDATE_DATA: c_int = 13;
pub const KVM_SEV_RECEIVE_UPDATE_VMSA: c_int = 14;
pub const KVM_SEV_RECEIVE_FINISH: c_int = 15;
pub const KVM_SEV_GUEST_STATUS: c_int = 16;
pub const KVM_SEV_DBG_DECRYPT: c_int = 17;
pub const KVM_SEV_DBG_ENCRYPT: c_int = 18;
pub const KVM_SEV_CERT_EXPORT: c_int = 19;
pub const KVM_SEV_GET_ATTESTATION_REPORT: c_int = 20;
pub const KVM_SEV_SEND_CANCEL: c_int = 21;
pub const KVM_SEV_NR_MAX: c_int = 22;
pub const enum_sev_cmd_id = c_uint;
pub const struct_kvm_sev_cmd = extern struct {
    id: __u32 = 0,
    data: __u64 = 0,
    @"error": __u32 = 0,
    sev_fd: __u32 = 0,
};
pub const struct_kvm_sev_launch_start = extern struct {
    handle: __u32 = 0,
    policy: __u32 = 0,
    dh_uaddr: __u64 = 0,
    dh_len: __u32 = 0,
    session_uaddr: __u64 = 0,
    session_len: __u32 = 0,
};
pub const struct_kvm_sev_launch_update_data = extern struct {
    uaddr: __u64 = 0,
    len: __u32 = 0,
};
pub const struct_kvm_sev_launch_secret = extern struct {
    hdr_uaddr: __u64 = 0,
    hdr_len: __u32 = 0,
    guest_uaddr: __u64 = 0,
    guest_len: __u32 = 0,
    trans_uaddr: __u64 = 0,
    trans_len: __u32 = 0,
};
pub const struct_kvm_sev_launch_measure = extern struct {
    uaddr: __u64 = 0,
    len: __u32 = 0,
};
pub const struct_kvm_sev_guest_status = extern struct {
    handle: __u32 = 0,
    policy: __u32 = 0,
    state: __u32 = 0,
};
pub const struct_kvm_sev_dbg = extern struct {
    src_uaddr: __u64 = 0,
    dst_uaddr: __u64 = 0,
    len: __u32 = 0,
};
pub const struct_kvm_sev_attestation_report = extern struct {
    mnonce: [16]__u8 = @import("std").mem.zeroes([16]__u8),
    uaddr: __u64 = 0,
    len: __u32 = 0,
};
pub const struct_kvm_sev_send_start = extern struct {
    policy: __u32 = 0,
    pdh_cert_uaddr: __u64 = 0,
    pdh_cert_len: __u32 = 0,
    plat_certs_uaddr: __u64 = 0,
    plat_certs_len: __u32 = 0,
    amd_certs_uaddr: __u64 = 0,
    amd_certs_len: __u32 = 0,
    session_uaddr: __u64 = 0,
    session_len: __u32 = 0,
};
pub const struct_kvm_sev_send_update_data = extern struct {
    hdr_uaddr: __u64 = 0,
    hdr_len: __u32 = 0,
    guest_uaddr: __u64 = 0,
    guest_len: __u32 = 0,
    trans_uaddr: __u64 = 0,
    trans_len: __u32 = 0,
};
pub const struct_kvm_sev_receive_start = extern struct {
    handle: __u32 = 0,
    policy: __u32 = 0,
    pdh_uaddr: __u64 = 0,
    pdh_len: __u32 = 0,
    session_uaddr: __u64 = 0,
    session_len: __u32 = 0,
};
pub const struct_kvm_sev_receive_update_data = extern struct {
    hdr_uaddr: __u64 = 0,
    hdr_len: __u32 = 0,
    guest_uaddr: __u64 = 0,
    guest_len: __u32 = 0,
    trans_uaddr: __u64 = 0,
    trans_len: __u32 = 0,
};
const union_unnamed_77 = extern union {
    reserved: [11]__u32,
};
pub const struct_kvm_assigned_pci_dev = extern struct {
    assigned_dev_id: __u32 = 0,
    busnr: __u32 = 0,
    devfn: __u32 = 0,
    flags: __u32 = 0,
    segnr: __u32 = 0,
    unnamed_0: union_unnamed_77 = @import("std").mem.zeroes(union_unnamed_77),
};
const union_unnamed_78 = extern union {
    reserved: [12]__u32,
};
pub const struct_kvm_assigned_irq = extern struct {
    assigned_dev_id: __u32 = 0,
    host_irq: __u32 = 0,
    guest_irq: __u32 = 0,
    flags: __u32 = 0,
    unnamed_0: union_unnamed_78 = @import("std").mem.zeroes(union_unnamed_78),
};
pub const struct_kvm_assigned_msix_nr = extern struct {
    assigned_dev_id: __u32 = 0,
    entry_nr: __u16 = 0,
    padding: __u16 = 0,
};
pub const struct_kvm_assigned_msix_entry = extern struct {
    assigned_dev_id: __u32 = 0,
    gsi: __u32 = 0,
    entry: __u16 = 0,
    padding: [3]__u16 = @import("std").mem.zeroes([3]__u16),
};
pub const struct_kvm_hyperv_eventfd = extern struct {
    conn_id: __u32 = 0,
    fd: __s32 = 0,
    flags: __u32 = 0,
    padding: [3]__u32 = @import("std").mem.zeroes([3]__u32),
};
pub const struct_kvm_dirty_gfn = extern struct {
    flags: __u32 = 0,
    slot: __u32 = 0,
    offset: __u64 = 0,
};
pub const struct_kvm_stats_header = extern struct {
    flags: __u32 = 0,
    name_size: __u32 = 0,
    num_desc: __u32 = 0,
    id_offset: __u32 = 0,
    desc_offset: __u32 = 0,
    data_offset: __u32 = 0,
};
pub const struct_kvm_stats_desc = extern struct {
    flags: __u32 = 0,
    exponent: __s16 = 0,
    size: __u16 = 0,
    offset: __u32 = 0,
    bucket_size: __u32 = 0,
    _name: [0]u8 = @import("std").mem.zeroes([0]u8),
    pub fn name(self: anytype) __helpers.FlexibleArrayType(@TypeOf(self), @typeInfo(@TypeOf(self.*._name)).array.child) {
        return @ptrCast(&self.*._name);
    }
};
const struct_unnamed_80 = extern struct {
    ibv: __u64 = 0,
    sb: __u64 = 0,
    flags: __u32 = 0,
    noi: __u32 = 0,
    isc: __u8 = 0,
    sbo: __u8 = 0,
    pad: __u16 = 0,
};
const union_unnamed_79 = extern union {
    reg_aen: struct_unnamed_80,
    reserved: [8]__u64,
};
pub const struct_kvm_s390_zpci_op = extern struct {
    fh: __u32 = 0,
    op: __u8 = 0,
    pad: [3]__u8 = @import("std").mem.zeroes([3]__u8),
    u: union_unnamed_79 = @import("std").mem.zeroes(union_unnamed_79),
};
pub const struct_kvm_memory_attributes = extern struct {
    address: __u64 = 0,
    size: __u64 = 0,
    attributes: __u64 = 0,
    flags: __u64 = 0,
};
pub const struct_kvm_create_guest_memfd = extern struct {
    size: __u64 = 0,
    flags: __u64 = 0,
    reserved: [6]__u64 = @import("std").mem.zeroes([6]__u64),
};

pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __GNUC__ = @as(c_int, 7);
pub const __GNUC_MINOR__ = @as(c_int, 1);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 0);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_GCC__;
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:31:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:32:9
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __KL__ = @as(c_int, 1);
pub const __WIDEKL__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __WAITPKG__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __HRESET__ = @as(c_int, 1);
pub const __AVXVNNI__ = @as(c_int, 1);
pub const __SERIALIZE__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __ATOMIC_BOOL_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_SHORT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_INT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_POINTER_LOCK_FREE = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SCHAR_WIDTH__ = @as(c_int, 8);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LONG_LONG_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIG_ATOMIC_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __BITINT_MAXWIDTH__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 10);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTPTR_TYPE__ = c_long;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:153:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:155:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __SIZE_TYPE__ = c_ulong;
pub const __WCHAR_TYPE__ = c_int;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:176:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // <builtin>:198:9
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:206:9
pub const __UINT64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const INT_LEAST8_FMTd__ = "hhd";
pub const INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const UINT_LEAST8_FMTo__ = "hho";
pub const UINT_LEAST8_FMTu__ = "hhu";
pub const UINT_LEAST8_FMTx__ = "hhx";
pub const UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const INT_FAST8_FMTd__ = "hhd";
pub const INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const UINT_FAST8_FMTo__ = "hho";
pub const UINT_FAST8_FMTu__ = "hhu";
pub const UINT_FAST8_FMTx__ = "hhx";
pub const UINT_FAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const INT_LEAST16_FMTd__ = "hd";
pub const INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_FMTo__ = "ho";
pub const UINT_LEAST16_FMTu__ = "hu";
pub const UINT_LEAST16_FMTx__ = "hx";
pub const UINT_LEAST16_FMTX__ = "hX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const INT_FAST16_FMTd__ = "hd";
pub const INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_FAST16_FMTo__ = "ho";
pub const UINT_FAST16_FMTu__ = "hu";
pub const UINT_FAST16_FMTx__ = "hx";
pub const UINT_FAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const INT_LEAST32_FMTd__ = "d";
pub const INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_FMTo__ = "o";
pub const UINT_LEAST32_FMTu__ = "u";
pub const UINT_LEAST32_FMTx__ = "x";
pub const UINT_LEAST32_FMTX__ = "X";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const INT_FAST32_FMTd__ = "d";
pub const INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_FMTo__ = "o";
pub const UINT_FAST32_FMTu__ = "u";
pub const UINT_FAST32_FMTx__ = "x";
pub const UINT_FAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "ld";
pub const INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_LEAST64_FMTo__ = "lo";
pub const UINT_LEAST64_FMTu__ = "lu";
pub const UINT_LEAST64_FMTx__ = "lx";
pub const UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "ld";
pub const INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_FMTo__ = "lo";
pub const UINT_FAST64_FMTu__ = "lu";
pub const UINT_FAST64_FMTx__ = "lx";
pub const UINT_FAST64_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = "";
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = "";
pub const __FLT16_HAS_QUIET_NAN__ = "";
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = "";
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = "";
pub const __FLT_HAS_QUIET_NAN__ = "";
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = "";
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = "";
pub const __DBL_HAS_QUIET_NAN__ = "";
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __LINUX_KVM_H = "";
pub const _LINUX_CONST_H = "";
pub const __AC = @compileError("unable to translate C expr: expected ')' instead got '##'"); // /usr/include/linux/const.h:20:9
pub inline fn _AC(X: anytype, Y: anytype) @TypeOf(__AC(X, Y)) {
    _ = &X;
    _ = &Y;
    return __AC(X, Y);
}
pub const _AT = __helpers.CAST_OR_CALL;
pub const _UL = @compileError("unable to translate macro: undefined identifier `UL`"); // /usr/include/linux/const.h:25:9
pub const _ULL = @compileError("unable to translate macro: undefined identifier `ULL`"); // /usr/include/linux/const.h:26:9
pub inline fn _BITUL(x: anytype) @TypeOf(_UL(@as(c_int, 1)) << x) {
    _ = &x;
    return _UL(@as(c_int, 1)) << x;
}
pub inline fn _BITULL(x: anytype) @TypeOf(_ULL(@as(c_int, 1)) << x) {
    _ = &x;
    return _ULL(@as(c_int, 1)) << x;
}
pub const __ALIGN_KERNEL = @compileError("unable to translate C expr: unexpected token '__typeof__'"); // /usr/include/linux/const.h:31:9
pub inline fn __ALIGN_KERNEL_MASK(x: anytype, mask: anytype) @TypeOf((x + mask) & ~mask) {
    _ = &x;
    _ = &mask;
    return (x + mask) & ~mask;
}
pub inline fn __KERNEL_DIV_ROUND_UP(n: anytype, d: anytype) @TypeOf(__helpers.div((n + d) - @as(c_int, 1), d)) {
    _ = &n;
    _ = &d;
    return __helpers.div((n + d) - @as(c_int, 1), d);
}
pub const _LINUX_TYPES_H = "";
pub const _ASM_GENERIC_TYPES_H = "";
pub const _ASM_GENERIC_INT_LL64_H = "";
pub const __ASM_X86_BITSPERLONG_H = "";
pub const __BITS_PER_LONG = @as(c_int, 64);
pub const __ASM_GENERIC_BITS_PER_LONG = "";
pub const _LINUX_POSIX_TYPES_H = "";
pub const _LINUX_STDDEF_H = "";
pub const __always_inline = @compileError("unable to translate C expr: unexpected token '__inline__'"); // /usr/include/linux/stddef.h:8:9
pub inline fn __struct_group_tag(TAG: anytype) @TypeOf(TAG) {
    _ = &TAG;
    return TAG;
}
pub const __struct_group = @compileError("unable to translate C expr: expected 'an identifier' instead got '{'"); // /usr/include/linux/stddef.h:33:9
pub const __DECLARE_FLEX_ARRAY = @compileError("unable to translate macro: undefined identifier `__empty_`"); // /usr/include/linux/stddef.h:54:9
pub const __counted_by = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/linux/stddef.h:62:9
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _ASM_X86_POSIX_TYPES_64_H = "";
pub const __ASM_GENERIC_POSIX_TYPES_H = "";
pub const __bitwise = "";
pub const __bitwise__ = "";
pub const __aligned_u64 = @compileError("unable to translate macro: undefined identifier `aligned`"); // /usr/include/linux/types.h:50:9
pub const __aligned_be64 = @compileError("unable to translate macro: undefined identifier `aligned`"); // /usr/include/linux/types.h:51:9
pub const __aligned_le64 = @compileError("unable to translate macro: undefined identifier `aligned`"); // /usr/include/linux/types.h:52:9
pub const _LINUX_IOCTL_H = "";
pub const _ASM_GENERIC_IOCTL_H = "";
pub const _IOC_NRBITS = @as(c_int, 8);
pub const _IOC_TYPEBITS = @as(c_int, 8);
pub const _IOC_SIZEBITS = @as(c_int, 14);
pub const _IOC_DIRBITS = @as(c_int, 2);
pub const _IOC_NRMASK = (@as(c_int, 1) << _IOC_NRBITS) - @as(c_int, 1);
pub const _IOC_TYPEMASK = (@as(c_int, 1) << _IOC_TYPEBITS) - @as(c_int, 1);
pub const _IOC_SIZEMASK = (@as(c_int, 1) << _IOC_SIZEBITS) - @as(c_int, 1);
pub const _IOC_DIRMASK = (@as(c_int, 1) << _IOC_DIRBITS) - @as(c_int, 1);
pub const _IOC_NRSHIFT = @as(c_int, 0);
pub const _IOC_TYPESHIFT = _IOC_NRSHIFT + _IOC_NRBITS;
pub const _IOC_SIZESHIFT = _IOC_TYPESHIFT + _IOC_TYPEBITS;
pub const _IOC_DIRSHIFT = _IOC_SIZESHIFT + _IOC_SIZEBITS;
pub const _IOC_NONE = @as(c_uint, 0);
pub const _IOC_WRITE = @as(c_uint, 1);
pub const _IOC_READ = @as(c_uint, 2);
pub inline fn _IOC(dir: anytype, @"type": anytype, nr: anytype, size: anytype) @TypeOf((((dir << _IOC_DIRSHIFT) | (@"type" << _IOC_TYPESHIFT)) | (nr << _IOC_NRSHIFT)) | (size << _IOC_SIZESHIFT)) {
    _ = &dir;
    _ = &@"type";
    _ = &nr;
    _ = &size;
    return (((dir << _IOC_DIRSHIFT) | (@"type" << _IOC_TYPESHIFT)) | (nr << _IOC_NRSHIFT)) | (size << _IOC_SIZESHIFT);
}
pub inline fn _IOC_TYPECHECK(t: anytype) @TypeOf(__helpers.sizeof(t)) {
    _ = &t;
    return __helpers.sizeof(t);
}
pub inline fn _IO(@"type": anytype, nr: anytype) @TypeOf(_IOC(_IOC_NONE, @"type", nr, @as(c_int, 0))) {
    _ = &@"type";
    _ = &nr;
    return _IOC(_IOC_NONE, @"type", nr, @as(c_int, 0));
}
pub inline fn _IOR(@"type": anytype, nr: anytype, size: anytype) @TypeOf(_IOC(_IOC_READ, @"type", nr, _IOC_TYPECHECK(size))) {
    _ = &@"type";
    _ = &nr;
    _ = &size;
    return _IOC(_IOC_READ, @"type", nr, _IOC_TYPECHECK(size));
}
pub inline fn _IOW(@"type": anytype, nr: anytype, size: anytype) @TypeOf(_IOC(_IOC_WRITE, @"type", nr, _IOC_TYPECHECK(size))) {
    _ = &@"type";
    _ = &nr;
    _ = &size;
    return _IOC(_IOC_WRITE, @"type", nr, _IOC_TYPECHECK(size));
}
pub inline fn _IOWR(@"type": anytype, nr: anytype, size: anytype) @TypeOf(_IOC(_IOC_READ | _IOC_WRITE, @"type", nr, _IOC_TYPECHECK(size))) {
    _ = &@"type";
    _ = &nr;
    _ = &size;
    return _IOC(_IOC_READ | _IOC_WRITE, @"type", nr, _IOC_TYPECHECK(size));
}
pub inline fn _IOR_BAD(@"type": anytype, nr: anytype, size: anytype) @TypeOf(_IOC(_IOC_READ, @"type", nr, __helpers.sizeof(size))) {
    _ = &@"type";
    _ = &nr;
    _ = &size;
    return _IOC(_IOC_READ, @"type", nr, __helpers.sizeof(size));
}
pub inline fn _IOW_BAD(@"type": anytype, nr: anytype, size: anytype) @TypeOf(_IOC(_IOC_WRITE, @"type", nr, __helpers.sizeof(size))) {
    _ = &@"type";
    _ = &nr;
    _ = &size;
    return _IOC(_IOC_WRITE, @"type", nr, __helpers.sizeof(size));
}
pub inline fn _IOWR_BAD(@"type": anytype, nr: anytype, size: anytype) @TypeOf(_IOC(_IOC_READ | _IOC_WRITE, @"type", nr, __helpers.sizeof(size))) {
    _ = &@"type";
    _ = &nr;
    _ = &size;
    return _IOC(_IOC_READ | _IOC_WRITE, @"type", nr, __helpers.sizeof(size));
}
pub inline fn _IOC_DIR(nr: anytype) @TypeOf((nr >> _IOC_DIRSHIFT) & _IOC_DIRMASK) {
    _ = &nr;
    return (nr >> _IOC_DIRSHIFT) & _IOC_DIRMASK;
}
pub inline fn _IOC_TYPE(nr: anytype) @TypeOf((nr >> _IOC_TYPESHIFT) & _IOC_TYPEMASK) {
    _ = &nr;
    return (nr >> _IOC_TYPESHIFT) & _IOC_TYPEMASK;
}
pub inline fn _IOC_NR(nr: anytype) @TypeOf((nr >> _IOC_NRSHIFT) & _IOC_NRMASK) {
    _ = &nr;
    return (nr >> _IOC_NRSHIFT) & _IOC_NRMASK;
}
pub inline fn _IOC_SIZE(nr: anytype) @TypeOf((nr >> _IOC_SIZESHIFT) & _IOC_SIZEMASK) {
    _ = &nr;
    return (nr >> _IOC_SIZESHIFT) & _IOC_SIZEMASK;
}
pub const IOC_IN = _IOC_WRITE << _IOC_DIRSHIFT;
pub const IOC_OUT = _IOC_READ << _IOC_DIRSHIFT;
pub const IOC_INOUT = (_IOC_WRITE | _IOC_READ) << _IOC_DIRSHIFT;
pub const IOCSIZE_MASK = _IOC_SIZEMASK << _IOC_SIZESHIFT;
pub const IOCSIZE_SHIFT = _IOC_SIZESHIFT;
pub const _ASM_X86_KVM_H = "";
pub const KVM_PIO_PAGE_OFFSET = @as(c_int, 1);
pub const KVM_COALESCED_MMIO_PAGE_OFFSET = @as(c_int, 2);
pub const KVM_DIRTY_LOG_PAGE_OFFSET = @as(c_int, 64);
pub const DE_VECTOR = @as(c_int, 0);
pub const DB_VECTOR = @as(c_int, 1);
pub const BP_VECTOR = @as(c_int, 3);
pub const OF_VECTOR = @as(c_int, 4);
pub const BR_VECTOR = @as(c_int, 5);
pub const UD_VECTOR = @as(c_int, 6);
pub const NM_VECTOR = @as(c_int, 7);
pub const DF_VECTOR = @as(c_int, 8);
pub const TS_VECTOR = @as(c_int, 10);
pub const NP_VECTOR = @as(c_int, 11);
pub const SS_VECTOR = @as(c_int, 12);
pub const GP_VECTOR = @as(c_int, 13);
pub const PF_VECTOR = @as(c_int, 14);
pub const MF_VECTOR = @as(c_int, 16);
pub const AC_VECTOR = @as(c_int, 17);
pub const MC_VECTOR = @as(c_int, 18);
pub const XM_VECTOR = @as(c_int, 19);
pub const VE_VECTOR = @as(c_int, 20);
pub const __KVM_HAVE_PIT = "";
pub const __KVM_HAVE_IOAPIC = "";
pub const __KVM_HAVE_IRQ_LINE = "";
pub const __KVM_HAVE_MSI = "";
pub const __KVM_HAVE_USER_NMI = "";
pub const __KVM_HAVE_GUEST_DEBUG = "";
pub const __KVM_HAVE_MSIX = "";
pub const __KVM_HAVE_MCE = "";
pub const __KVM_HAVE_PIT_STATE2 = "";
pub const __KVM_HAVE_XEN_HVM = "";
pub const __KVM_HAVE_VCPU_EVENTS = "";
pub const __KVM_HAVE_DEBUGREGS = "";
pub const __KVM_HAVE_XSAVE = "";
pub const __KVM_HAVE_XCRS = "";
pub const __KVM_HAVE_READONLY_MEM = "";
pub const KVM_NR_INTERRUPTS = @as(c_int, 256);
pub const KVM_IOAPIC_NUM_PINS = @as(c_int, 24);
pub const KVM_IRQCHIP_PIC_MASTER = @as(c_int, 0);
pub const KVM_IRQCHIP_PIC_SLAVE = @as(c_int, 1);
pub const KVM_IRQCHIP_IOAPIC = @as(c_int, 2);
pub const KVM_NR_IRQCHIPS = @as(c_int, 3);
pub const KVM_RUN_X86_SMM = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_RUN_X86_BUS_LOCK = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_APIC_REG_SIZE = @as(c_int, 0x400);
pub const KVM_SREGS2_FLAGS_PDPTRS_VALID = @as(c_int, 1);
pub const KVM_MSR_FILTER_MAX_BITMAP_SIZE = @as(c_int, 0x600);
pub const KVM_MSR_FILTER_READ = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_MSR_FILTER_WRITE = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_MSR_FILTER_RANGE_VALID_MASK = KVM_MSR_FILTER_READ | KVM_MSR_FILTER_WRITE;
pub const KVM_MSR_FILTER_MAX_RANGES = @as(c_int, 16);
pub const KVM_MSR_FILTER_DEFAULT_ALLOW = @as(c_int, 0) << @as(c_int, 0);
pub const KVM_MSR_FILTER_DEFAULT_DENY = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_MSR_FILTER_VALID_MASK = KVM_MSR_FILTER_DEFAULT_DENY;
pub const KVM_CPUID_FLAG_SIGNIFCANT_INDEX = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_CPUID_FLAG_STATEFUL_FUNC = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_CPUID_FLAG_STATE_READ_NEXT = @as(c_int, 1) << @as(c_int, 2);
pub const KVM_GUESTDBG_USE_SW_BP = __helpers.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const KVM_GUESTDBG_USE_HW_BP = __helpers.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const KVM_GUESTDBG_INJECT_DB = __helpers.promoteIntLiteral(c_int, 0x00040000, .hex);
pub const KVM_GUESTDBG_INJECT_BP = __helpers.promoteIntLiteral(c_int, 0x00080000, .hex);
pub const KVM_GUESTDBG_BLOCKIRQ = __helpers.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const KVM_PIT_FLAGS_HPET_LEGACY = @as(c_int, 0x00000001);
pub const KVM_PIT_FLAGS_SPEAKER_DATA_ON = @as(c_int, 0x00000002);
pub const KVM_VCPUEVENT_VALID_NMI_PENDING = @as(c_int, 0x00000001);
pub const KVM_VCPUEVENT_VALID_SIPI_VECTOR = @as(c_int, 0x00000002);
pub const KVM_VCPUEVENT_VALID_SHADOW = @as(c_int, 0x00000004);
pub const KVM_VCPUEVENT_VALID_SMM = @as(c_int, 0x00000008);
pub const KVM_VCPUEVENT_VALID_PAYLOAD = @as(c_int, 0x00000010);
pub const KVM_VCPUEVENT_VALID_TRIPLE_FAULT = @as(c_int, 0x00000020);
pub const KVM_X86_SHADOW_INT_MOV_SS = @as(c_int, 0x01);
pub const KVM_X86_SHADOW_INT_STI = @as(c_int, 0x02);
pub const KVM_MAX_XCRS = @as(c_int, 16);
pub const KVM_SYNC_X86_REGS = @as(c_ulong, 1) << @as(c_int, 0);
pub const KVM_SYNC_X86_SREGS = @as(c_ulong, 1) << @as(c_int, 1);
pub const KVM_SYNC_X86_EVENTS = @as(c_ulong, 1) << @as(c_int, 2);
pub const KVM_SYNC_X86_VALID_FIELDS = (KVM_SYNC_X86_REGS | KVM_SYNC_X86_SREGS) | KVM_SYNC_X86_EVENTS;
pub const KVM_X86_QUIRK_LINT0_REENABLED = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_X86_QUIRK_CD_NW_CLEARED = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_X86_QUIRK_LAPIC_MMIO_HOLE = @as(c_int, 1) << @as(c_int, 2);
pub const KVM_X86_QUIRK_OUT_7E_INC_RIP = @as(c_int, 1) << @as(c_int, 3);
pub const KVM_X86_QUIRK_MISC_ENABLE_NO_MWAIT = @as(c_int, 1) << @as(c_int, 4);
pub const KVM_X86_QUIRK_FIX_HYPERCALL_INSN = @as(c_int, 1) << @as(c_int, 5);
pub const KVM_X86_QUIRK_MWAIT_NEVER_UD_FAULTS = @as(c_int, 1) << @as(c_int, 6);
pub const KVM_STATE_NESTED_FORMAT_VMX = @as(c_int, 0);
pub const KVM_STATE_NESTED_FORMAT_SVM = @as(c_int, 1);
pub const KVM_STATE_NESTED_GUEST_MODE = @as(c_int, 0x00000001);
pub const KVM_STATE_NESTED_RUN_PENDING = @as(c_int, 0x00000002);
pub const KVM_STATE_NESTED_EVMCS = @as(c_int, 0x00000004);
pub const KVM_STATE_NESTED_MTF_PENDING = @as(c_int, 0x00000008);
pub const KVM_STATE_NESTED_GIF_SET = @as(c_int, 0x00000100);
pub const KVM_STATE_NESTED_SMM_GUEST_MODE = @as(c_int, 0x00000001);
pub const KVM_STATE_NESTED_SMM_VMXON = @as(c_int, 0x00000002);
pub const KVM_STATE_NESTED_VMX_VMCS_SIZE = @as(c_int, 0x1000);
pub const KVM_STATE_NESTED_SVM_VMCB_SIZE = @as(c_int, 0x1000);
pub const KVM_STATE_VMX_PREEMPTION_TIMER_DEADLINE = @as(c_int, 0x00000001);
pub const KVM_X86_XCOMP_GUEST_SUPP = @as(c_int, 0);
pub const KVM_PMU_EVENT_ALLOW = @as(c_int, 0);
pub const KVM_PMU_EVENT_DENY = @as(c_int, 1);
pub const KVM_PMU_EVENT_FLAG_MASKED_EVENTS = @compileError("unable to translate macro: undefined identifier `BIT`"); // /usr/include/x86_64-linux-gnu/asm/kvm.h:527:9
pub const KVM_PMU_EVENT_FLAGS_VALID_MASK = KVM_PMU_EVENT_FLAG_MASKED_EVENTS;
pub inline fn KVM_PMU_ENCODE_MASKED_ENTRY(event_select: anytype, mask: anytype, match: anytype, exclude: anytype) @TypeOf(((((event_select & @as(c_ulonglong, 0xFF)) | ((event_select & @as(c_ulonglong, 0xF00)) << @as(c_int, 24))) | ((mask & @as(c_ulonglong, 0xFF)) << @as(c_int, 56))) | ((match & @as(c_ulonglong, 0xFF)) << @as(c_int, 8))) | (__helpers.cast(__u64, !!(exclude != 0)) << @as(c_int, 55))) {
    _ = &event_select;
    _ = &mask;
    _ = &match;
    _ = &exclude;
    return ((((event_select & @as(c_ulonglong, 0xFF)) | ((event_select & @as(c_ulonglong, 0xF00)) << @as(c_int, 24))) | ((mask & @as(c_ulonglong, 0xFF)) << @as(c_int, 56))) | ((match & @as(c_ulonglong, 0xFF)) << @as(c_int, 8))) | (__helpers.cast(__u64, !!(exclude != 0)) << @as(c_int, 55));
}
pub const KVM_PMU_MASKED_ENTRY_EVENT_SELECT = @compileError("unable to translate macro: undefined identifier `GENMASK_ULL`"); // /usr/include/x86_64-linux-gnu/asm/kvm.h:549:9
pub const KVM_PMU_MASKED_ENTRY_UMASK_MASK = @compileError("unable to translate macro: undefined identifier `GENMASK_ULL`"); // /usr/include/x86_64-linux-gnu/asm/kvm.h:551:9
pub const KVM_PMU_MASKED_ENTRY_UMASK_MATCH = @compileError("unable to translate macro: undefined identifier `GENMASK_ULL`"); // /usr/include/x86_64-linux-gnu/asm/kvm.h:552:9
pub const KVM_PMU_MASKED_ENTRY_EXCLUDE = @compileError("unable to translate macro: undefined identifier `BIT_ULL`"); // /usr/include/x86_64-linux-gnu/asm/kvm.h:553:9
pub const KVM_PMU_MASKED_ENTRY_UMASK_MASK_SHIFT = @as(c_int, 56);
pub const KVM_VCPU_TSC_CTRL = @as(c_int, 0);
pub const KVM_VCPU_TSC_OFFSET = @as(c_int, 0);
pub const KVM_EXIT_HYPERCALL_LONG_MODE = @compileError("unable to translate macro: undefined identifier `BIT`"); // /usr/include/x86_64-linux-gnu/asm/kvm.h:561:9
pub const KVM_X86_DEFAULT_VM = @as(c_int, 0);
pub const KVM_X86_SW_PROTECTED_VM = @as(c_int, 1);
pub const KVM_API_VERSION = @as(c_int, 12);
pub const KVM_MEM_LOG_DIRTY_PAGES = @as(c_ulong, 1) << @as(c_int, 0);
pub const KVM_MEM_READONLY = @as(c_ulong, 1) << @as(c_int, 1);
pub const KVM_MEM_GUEST_MEMFD = @as(c_ulong, 1) << @as(c_int, 2);
pub const KVM_PIT_SPEAKER_DUMMY = @as(c_int, 1);
pub const KVM_S390_CMMA_PEEK = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_EXIT_HYPERV_SYNIC = @as(c_int, 1);
pub const KVM_EXIT_HYPERV_HCALL = @as(c_int, 2);
pub const KVM_EXIT_HYPERV_SYNDBG = @as(c_int, 3);
pub const KVM_EXIT_XEN_HCALL = @as(c_int, 1);
pub const KVM_S390_GET_SKEYS_NONE = @as(c_int, 1);
pub const KVM_S390_SKEYS_MAX = __helpers.promoteIntLiteral(c_int, 1048576, .decimal);
pub const KVM_EXIT_UNKNOWN = @as(c_int, 0);
pub const KVM_EXIT_EXCEPTION = @as(c_int, 1);
pub const KVM_EXIT_IO = @as(c_int, 2);
pub const KVM_EXIT_HYPERCALL = @as(c_int, 3);
pub const KVM_EXIT_DEBUG = @as(c_int, 4);
pub const KVM_EXIT_HLT = @as(c_int, 5);
pub const KVM_EXIT_MMIO = @as(c_int, 6);
pub const KVM_EXIT_IRQ_WINDOW_OPEN = @as(c_int, 7);
pub const KVM_EXIT_SHUTDOWN = @as(c_int, 8);
pub const KVM_EXIT_FAIL_ENTRY = @as(c_int, 9);
pub const KVM_EXIT_INTR = @as(c_int, 10);
pub const KVM_EXIT_SET_TPR = @as(c_int, 11);
pub const KVM_EXIT_TPR_ACCESS = @as(c_int, 12);
pub const KVM_EXIT_S390_SIEIC = @as(c_int, 13);
pub const KVM_EXIT_S390_RESET = @as(c_int, 14);
pub const KVM_EXIT_DCR = @as(c_int, 15);
pub const KVM_EXIT_NMI = @as(c_int, 16);
pub const KVM_EXIT_INTERNAL_ERROR = @as(c_int, 17);
pub const KVM_EXIT_OSI = @as(c_int, 18);
pub const KVM_EXIT_PAPR_HCALL = @as(c_int, 19);
pub const KVM_EXIT_S390_UCONTROL = @as(c_int, 20);
pub const KVM_EXIT_WATCHDOG = @as(c_int, 21);
pub const KVM_EXIT_S390_TSCH = @as(c_int, 22);
pub const KVM_EXIT_EPR = @as(c_int, 23);
pub const KVM_EXIT_SYSTEM_EVENT = @as(c_int, 24);
pub const KVM_EXIT_S390_STSI = @as(c_int, 25);
pub const KVM_EXIT_IOAPIC_EOI = @as(c_int, 26);
pub const KVM_EXIT_HYPERV = @as(c_int, 27);
pub const KVM_EXIT_ARM_NISV = @as(c_int, 28);
pub const KVM_EXIT_X86_RDMSR = @as(c_int, 29);
pub const KVM_EXIT_X86_WRMSR = @as(c_int, 30);
pub const KVM_EXIT_DIRTY_RING_FULL = @as(c_int, 31);
pub const KVM_EXIT_AP_RESET_HOLD = @as(c_int, 32);
pub const KVM_EXIT_X86_BUS_LOCK = @as(c_int, 33);
pub const KVM_EXIT_XEN = @as(c_int, 34);
pub const KVM_EXIT_RISCV_SBI = @as(c_int, 35);
pub const KVM_EXIT_RISCV_CSR = @as(c_int, 36);
pub const KVM_EXIT_NOTIFY = @as(c_int, 37);
pub const KVM_EXIT_LOONGARCH_IOCSR = @as(c_int, 38);
pub const KVM_EXIT_MEMORY_FAULT = @as(c_int, 39);
pub const KVM_INTERNAL_ERROR_EMULATION = @as(c_int, 1);
pub const KVM_INTERNAL_ERROR_SIMUL_EX = @as(c_int, 2);
pub const KVM_INTERNAL_ERROR_DELIVERY_EV = @as(c_int, 3);
pub const KVM_INTERNAL_ERROR_UNEXPECTED_EXIT_REASON = @as(c_int, 4);
pub const KVM_INTERNAL_ERROR_EMULATION_FLAG_INSTRUCTION_BYTES = @as(c_ulonglong, 1) << @as(c_int, 0);
pub const KVM_EXIT_IO_IN = @as(c_int, 0);
pub const KVM_EXIT_IO_OUT = @as(c_int, 1);
pub const KVM_S390_RESET_POR = @as(c_int, 1);
pub const KVM_S390_RESET_CLEAR = @as(c_int, 2);
pub const KVM_S390_RESET_SUBSYSTEM = @as(c_int, 4);
pub const KVM_S390_RESET_CPU_INIT = @as(c_int, 8);
pub const KVM_S390_RESET_IPL = @as(c_int, 16);
pub const KVM_SYSTEM_EVENT_SHUTDOWN = @as(c_int, 1);
pub const KVM_SYSTEM_EVENT_RESET = @as(c_int, 2);
pub const KVM_SYSTEM_EVENT_CRASH = @as(c_int, 3);
pub const KVM_SYSTEM_EVENT_WAKEUP = @as(c_int, 4);
pub const KVM_SYSTEM_EVENT_SUSPEND = @as(c_int, 5);
pub const KVM_SYSTEM_EVENT_SEV_TERM = @as(c_int, 6);
pub const KVM_MSR_EXIT_REASON_INVAL = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_MSR_EXIT_REASON_UNKNOWN = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_MSR_EXIT_REASON_FILTER = @as(c_int, 1) << @as(c_int, 2);
pub const KVM_MSR_EXIT_REASON_VALID_MASK = (KVM_MSR_EXIT_REASON_INVAL | KVM_MSR_EXIT_REASON_UNKNOWN) | KVM_MSR_EXIT_REASON_FILTER;
pub const KVM_NOTIFY_CONTEXT_INVALID = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_MEMORY_EXIT_FLAG_PRIVATE = @as(c_ulonglong, 1) << @as(c_int, 3);
pub const SYNC_REGS_SIZE_BYTES = @as(c_int, 2048);
pub const KVM_COALESCED_MMIO_MAX = @compileError("unable to translate macro: undefined identifier `PAGE_SIZE`"); // /usr/include/linux/kvm.h:518:9
pub const KVM_S390_MEMOP_LOGICAL_READ = @as(c_int, 0);
pub const KVM_S390_MEMOP_LOGICAL_WRITE = @as(c_int, 1);
pub const KVM_S390_MEMOP_SIDA_READ = @as(c_int, 2);
pub const KVM_S390_MEMOP_SIDA_WRITE = @as(c_int, 3);
pub const KVM_S390_MEMOP_ABSOLUTE_READ = @as(c_int, 4);
pub const KVM_S390_MEMOP_ABSOLUTE_WRITE = @as(c_int, 5);
pub const KVM_S390_MEMOP_ABSOLUTE_CMPXCHG = @as(c_int, 6);
pub const KVM_S390_MEMOP_F_CHECK_ONLY = @as(c_ulonglong, 1) << @as(c_int, 0);
pub const KVM_S390_MEMOP_F_INJECT_EXCEPTION = @as(c_ulonglong, 1) << @as(c_int, 1);
pub const KVM_S390_MEMOP_F_SKEY_PROTECTION = @as(c_ulonglong, 1) << @as(c_int, 2);
pub const KVM_S390_MEMOP_EXTENSION_CAP_BASE = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_S390_MEMOP_EXTENSION_CAP_CMPXCHG = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_MP_STATE_RUNNABLE = @as(c_int, 0);
pub const KVM_MP_STATE_UNINITIALIZED = @as(c_int, 1);
pub const KVM_MP_STATE_INIT_RECEIVED = @as(c_int, 2);
pub const KVM_MP_STATE_HALTED = @as(c_int, 3);
pub const KVM_MP_STATE_SIPI_RECEIVED = @as(c_int, 4);
pub const KVM_MP_STATE_STOPPED = @as(c_int, 5);
pub const KVM_MP_STATE_CHECK_STOP = @as(c_int, 6);
pub const KVM_MP_STATE_OPERATING = @as(c_int, 7);
pub const KVM_MP_STATE_LOAD = @as(c_int, 8);
pub const KVM_MP_STATE_AP_RESET_HOLD = @as(c_int, 9);
pub const KVM_MP_STATE_SUSPENDED = @as(c_int, 10);
pub const KVM_S390_SIGP_STOP = __helpers.promoteIntLiteral(c_uint, 0xfffe0000, .hex);
pub const KVM_S390_PROGRAM_INT = __helpers.promoteIntLiteral(c_uint, 0xfffe0001, .hex);
pub const KVM_S390_SIGP_SET_PREFIX = __helpers.promoteIntLiteral(c_uint, 0xfffe0002, .hex);
pub const KVM_S390_RESTART = __helpers.promoteIntLiteral(c_uint, 0xfffe0003, .hex);
pub const KVM_S390_INT_PFAULT_INIT = __helpers.promoteIntLiteral(c_uint, 0xfffe0004, .hex);
pub const KVM_S390_INT_PFAULT_DONE = __helpers.promoteIntLiteral(c_uint, 0xfffe0005, .hex);
pub const KVM_S390_MCHK = __helpers.promoteIntLiteral(c_uint, 0xfffe1000, .hex);
pub const KVM_S390_INT_CLOCK_COMP = __helpers.promoteIntLiteral(c_uint, 0xffff1004, .hex);
pub const KVM_S390_INT_CPU_TIMER = __helpers.promoteIntLiteral(c_uint, 0xffff1005, .hex);
pub const KVM_S390_INT_VIRTIO = __helpers.promoteIntLiteral(c_uint, 0xffff2603, .hex);
pub const KVM_S390_INT_SERVICE = __helpers.promoteIntLiteral(c_uint, 0xffff2401, .hex);
pub const KVM_S390_INT_EMERGENCY = __helpers.promoteIntLiteral(c_uint, 0xffff1201, .hex);
pub const KVM_S390_INT_EXTERNAL_CALL = __helpers.promoteIntLiteral(c_uint, 0xffff1202, .hex);
pub inline fn KVM_S390_INT_IO(ai: anytype, cssid: anytype, ssid: anytype, schid: anytype) @TypeOf(((schid | (ssid << @as(c_int, 16))) | (cssid << @as(c_int, 18))) | (ai << @as(c_int, 26))) {
    _ = &ai;
    _ = &cssid;
    _ = &ssid;
    _ = &schid;
    return ((schid | (ssid << @as(c_int, 16))) | (cssid << @as(c_int, 18))) | (ai << @as(c_int, 26));
}
pub const KVM_S390_INT_IO_MIN = @as(c_uint, 0x00000000);
pub const KVM_S390_INT_IO_MAX = __helpers.promoteIntLiteral(c_uint, 0xfffdffff, .hex);
pub const KVM_S390_INT_IO_AI_MASK = __helpers.promoteIntLiteral(c_uint, 0x04000000, .hex);
pub const KVM_S390_PGM_FLAGS_ILC_VALID = @as(c_int, 0x01);
pub const KVM_S390_PGM_FLAGS_ILC_0 = @as(c_int, 0x02);
pub const KVM_S390_PGM_FLAGS_ILC_1 = @as(c_int, 0x04);
pub const KVM_S390_PGM_FLAGS_ILC_MASK = @as(c_int, 0x06);
pub const KVM_S390_PGM_FLAGS_NO_REWIND = @as(c_int, 0x08);
pub const KVM_S390_STOP_FLAG_STORE_STATUS = @as(c_int, 0x01);
pub const KVM_GUESTDBG_ENABLE = @as(c_int, 0x00000001);
pub const KVM_GUESTDBG_SINGLESTEP = @as(c_int, 0x00000002);
pub const KVM_IOEVENTFD_FLAG_DATAMATCH = @as(c_int, 1) << kvm_ioeventfd_flag_nr_datamatch;
pub const KVM_IOEVENTFD_FLAG_PIO = @as(c_int, 1) << kvm_ioeventfd_flag_nr_pio;
pub const KVM_IOEVENTFD_FLAG_DEASSIGN = @as(c_int, 1) << kvm_ioeventfd_flag_nr_deassign;
pub const KVM_IOEVENTFD_FLAG_VIRTIO_CCW_NOTIFY = @as(c_int, 1) << kvm_ioeventfd_flag_nr_virtio_ccw_notify;
pub const KVM_IOEVENTFD_VALID_FLAG_MASK = (@as(c_int, 1) << kvm_ioeventfd_flag_nr_max) - @as(c_int, 1);
pub const KVM_X86_DISABLE_EXITS_MWAIT = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_X86_DISABLE_EXITS_HLT = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_X86_DISABLE_EXITS_PAUSE = @as(c_int, 1) << @as(c_int, 2);
pub const KVM_X86_DISABLE_EXITS_CSTATE = @as(c_int, 1) << @as(c_int, 3);
pub const KVM_X86_DISABLE_VALID_EXITS = ((KVM_X86_DISABLE_EXITS_MWAIT | KVM_X86_DISABLE_EXITS_HLT) | KVM_X86_DISABLE_EXITS_PAUSE) | KVM_X86_DISABLE_EXITS_CSTATE;
pub const KVM_PPC_PVINFO_FLAGS_EV_IDLE = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_PPC_PAGE_SIZES_MAX_SZ = @as(c_int, 8);
pub const KVM_PPC_PAGE_SIZES_REAL = @as(c_int, 0x00000001);
pub const KVM_PPC_1T_SEGMENTS = @as(c_int, 0x00000002);
pub const KVM_PPC_NO_HASH = @as(c_int, 0x00000004);
pub const KVMIO = @as(c_int, 0xAE);
pub const KVM_VM_S390_UCONTROL = @as(c_int, 1);
pub const KVM_VM_PPC_HV = @as(c_int, 1);
pub const KVM_VM_PPC_PR = @as(c_int, 2);
pub const KVM_VM_MIPS_AUTO = @as(c_int, 0);
pub const KVM_VM_MIPS_VZ = @as(c_int, 1);
pub const KVM_VM_MIPS_TE = @as(c_int, 2);
pub const KVM_S390_SIE_PAGE_OFFSET = @as(c_int, 1);
pub const KVM_VM_TYPE_ARM_IPA_SIZE_MASK = @as(c_ulonglong, 0xff);
pub inline fn KVM_VM_TYPE_ARM_IPA_SIZE(x: anytype) @TypeOf(x & KVM_VM_TYPE_ARM_IPA_SIZE_MASK) {
    _ = &x;
    return x & KVM_VM_TYPE_ARM_IPA_SIZE_MASK;
}
pub const KVM_GET_API_VERSION = _IO(KVMIO, @as(c_int, 0x00));
pub const KVM_CREATE_VM = _IO(KVMIO, @as(c_int, 0x01));
pub const KVM_GET_MSR_INDEX_LIST = _IOWR(KVMIO, @as(c_int, 0x02), struct_kvm_msr_list);
pub const KVM_S390_ENABLE_SIE = _IO(KVMIO, @as(c_int, 0x06));
pub const KVM_CHECK_EXTENSION = _IO(KVMIO, @as(c_int, 0x03));
pub const KVM_GET_VCPU_MMAP_SIZE = _IO(KVMIO, @as(c_int, 0x04));
pub const KVM_GET_SUPPORTED_CPUID = _IOWR(KVMIO, @as(c_int, 0x05), struct_kvm_cpuid2);
pub const KVM_GET_EMULATED_CPUID = _IOWR(KVMIO, @as(c_int, 0x09), struct_kvm_cpuid2);
pub const KVM_GET_MSR_FEATURE_INDEX_LIST = _IOWR(KVMIO, @as(c_int, 0x0a), struct_kvm_msr_list);
pub const KVM_CAP_IRQCHIP = @as(c_int, 0);
pub const KVM_CAP_HLT = @as(c_int, 1);
pub const KVM_CAP_MMU_SHADOW_CACHE_CONTROL = @as(c_int, 2);
pub const KVM_CAP_USER_MEMORY = @as(c_int, 3);
pub const KVM_CAP_SET_TSS_ADDR = @as(c_int, 4);
pub const KVM_CAP_VAPIC = @as(c_int, 6);
pub const KVM_CAP_EXT_CPUID = @as(c_int, 7);
pub const KVM_CAP_CLOCKSOURCE = @as(c_int, 8);
pub const KVM_CAP_NR_VCPUS = @as(c_int, 9);
pub const KVM_CAP_NR_MEMSLOTS = @as(c_int, 10);
pub const KVM_CAP_PIT = @as(c_int, 11);
pub const KVM_CAP_NOP_IO_DELAY = @as(c_int, 12);
pub const KVM_CAP_PV_MMU = @as(c_int, 13);
pub const KVM_CAP_MP_STATE = @as(c_int, 14);
pub const KVM_CAP_COALESCED_MMIO = @as(c_int, 15);
pub const KVM_CAP_SYNC_MMU = @as(c_int, 16);
pub const KVM_CAP_IOMMU = @as(c_int, 18);
pub const KVM_CAP_DESTROY_MEMORY_REGION_WORKS = @as(c_int, 21);
pub const KVM_CAP_USER_NMI = @as(c_int, 22);
pub const KVM_CAP_SET_GUEST_DEBUG = @as(c_int, 23);
pub const KVM_CAP_REINJECT_CONTROL = @as(c_int, 24);
pub const KVM_CAP_IRQ_ROUTING = @as(c_int, 25);
pub const KVM_CAP_IRQ_INJECT_STATUS = @as(c_int, 26);
pub const KVM_CAP_ASSIGN_DEV_IRQ = @as(c_int, 29);
pub const KVM_CAP_JOIN_MEMORY_REGIONS_WORKS = @as(c_int, 30);
pub const KVM_CAP_MCE = @as(c_int, 31);
pub const KVM_CAP_IRQFD = @as(c_int, 32);
pub const KVM_CAP_PIT2 = @as(c_int, 33);
pub const KVM_CAP_SET_BOOT_CPU_ID = @as(c_int, 34);
pub const KVM_CAP_PIT_STATE2 = @as(c_int, 35);
pub const KVM_CAP_IOEVENTFD = @as(c_int, 36);
pub const KVM_CAP_SET_IDENTITY_MAP_ADDR = @as(c_int, 37);
pub const KVM_CAP_XEN_HVM = @as(c_int, 38);
pub const KVM_CAP_ADJUST_CLOCK = @as(c_int, 39);
pub const KVM_CAP_INTERNAL_ERROR_DATA = @as(c_int, 40);
pub const KVM_CAP_VCPU_EVENTS = @as(c_int, 41);
pub const KVM_CAP_S390_PSW = @as(c_int, 42);
pub const KVM_CAP_PPC_SEGSTATE = @as(c_int, 43);
pub const KVM_CAP_HYPERV = @as(c_int, 44);
pub const KVM_CAP_HYPERV_VAPIC = @as(c_int, 45);
pub const KVM_CAP_HYPERV_SPIN = @as(c_int, 46);
pub const KVM_CAP_PCI_SEGMENT = @as(c_int, 47);
pub const KVM_CAP_PPC_PAIRED_SINGLES = @as(c_int, 48);
pub const KVM_CAP_INTR_SHADOW = @as(c_int, 49);
pub const KVM_CAP_DEBUGREGS = @as(c_int, 50);
pub const KVM_CAP_X86_ROBUST_SINGLESTEP = @as(c_int, 51);
pub const KVM_CAP_PPC_OSI = @as(c_int, 52);
pub const KVM_CAP_PPC_UNSET_IRQ = @as(c_int, 53);
pub const KVM_CAP_ENABLE_CAP = @as(c_int, 54);
pub const KVM_CAP_XSAVE = @as(c_int, 55);
pub const KVM_CAP_XCRS = @as(c_int, 56);
pub const KVM_CAP_PPC_GET_PVINFO = @as(c_int, 57);
pub const KVM_CAP_PPC_IRQ_LEVEL = @as(c_int, 58);
pub const KVM_CAP_ASYNC_PF = @as(c_int, 59);
pub const KVM_CAP_TSC_CONTROL = @as(c_int, 60);
pub const KVM_CAP_GET_TSC_KHZ = @as(c_int, 61);
pub const KVM_CAP_PPC_BOOKE_SREGS = @as(c_int, 62);
pub const KVM_CAP_SPAPR_TCE = @as(c_int, 63);
pub const KVM_CAP_PPC_SMT = @as(c_int, 64);
pub const KVM_CAP_PPC_RMA = @as(c_int, 65);
pub const KVM_CAP_MAX_VCPUS = @as(c_int, 66);
pub const KVM_CAP_PPC_HIOR = @as(c_int, 67);
pub const KVM_CAP_PPC_PAPR = @as(c_int, 68);
pub const KVM_CAP_SW_TLB = @as(c_int, 69);
pub const KVM_CAP_ONE_REG = @as(c_int, 70);
pub const KVM_CAP_S390_GMAP = @as(c_int, 71);
pub const KVM_CAP_TSC_DEADLINE_TIMER = @as(c_int, 72);
pub const KVM_CAP_S390_UCONTROL = @as(c_int, 73);
pub const KVM_CAP_SYNC_REGS = @as(c_int, 74);
pub const KVM_CAP_PCI_2_3 = @as(c_int, 75);
pub const KVM_CAP_KVMCLOCK_CTRL = @as(c_int, 76);
pub const KVM_CAP_SIGNAL_MSI = @as(c_int, 77);
pub const KVM_CAP_PPC_GET_SMMU_INFO = @as(c_int, 78);
pub const KVM_CAP_S390_COW = @as(c_int, 79);
pub const KVM_CAP_PPC_ALLOC_HTAB = @as(c_int, 80);
pub const KVM_CAP_READONLY_MEM = @as(c_int, 81);
pub const KVM_CAP_IRQFD_RESAMPLE = @as(c_int, 82);
pub const KVM_CAP_PPC_BOOKE_WATCHDOG = @as(c_int, 83);
pub const KVM_CAP_PPC_HTAB_FD = @as(c_int, 84);
pub const KVM_CAP_S390_CSS_SUPPORT = @as(c_int, 85);
pub const KVM_CAP_PPC_EPR = @as(c_int, 86);
pub const KVM_CAP_ARM_PSCI = @as(c_int, 87);
pub const KVM_CAP_ARM_SET_DEVICE_ADDR = @as(c_int, 88);
pub const KVM_CAP_DEVICE_CTRL = @as(c_int, 89);
pub const KVM_CAP_IRQ_MPIC = @as(c_int, 90);
pub const KVM_CAP_PPC_RTAS = @as(c_int, 91);
pub const KVM_CAP_IRQ_XICS = @as(c_int, 92);
pub const KVM_CAP_ARM_EL1_32BIT = @as(c_int, 93);
pub const KVM_CAP_SPAPR_MULTITCE = @as(c_int, 94);
pub const KVM_CAP_EXT_EMUL_CPUID = @as(c_int, 95);
pub const KVM_CAP_HYPERV_TIME = @as(c_int, 96);
pub const KVM_CAP_IOAPIC_POLARITY_IGNORED = @as(c_int, 97);
pub const KVM_CAP_ENABLE_CAP_VM = @as(c_int, 98);
pub const KVM_CAP_S390_IRQCHIP = @as(c_int, 99);
pub const KVM_CAP_IOEVENTFD_NO_LENGTH = @as(c_int, 100);
pub const KVM_CAP_VM_ATTRIBUTES = @as(c_int, 101);
pub const KVM_CAP_ARM_PSCI_0_2 = @as(c_int, 102);
pub const KVM_CAP_PPC_FIXUP_HCALL = @as(c_int, 103);
pub const KVM_CAP_PPC_ENABLE_HCALL = @as(c_int, 104);
pub const KVM_CAP_CHECK_EXTENSION_VM = @as(c_int, 105);
pub const KVM_CAP_S390_USER_SIGP = @as(c_int, 106);
pub const KVM_CAP_S390_VECTOR_REGISTERS = @as(c_int, 107);
pub const KVM_CAP_S390_MEM_OP = @as(c_int, 108);
pub const KVM_CAP_S390_USER_STSI = @as(c_int, 109);
pub const KVM_CAP_S390_SKEYS = @as(c_int, 110);
pub const KVM_CAP_MIPS_FPU = @as(c_int, 111);
pub const KVM_CAP_MIPS_MSA = @as(c_int, 112);
pub const KVM_CAP_S390_INJECT_IRQ = @as(c_int, 113);
pub const KVM_CAP_S390_IRQ_STATE = @as(c_int, 114);
pub const KVM_CAP_PPC_HWRNG = @as(c_int, 115);
pub const KVM_CAP_DISABLE_QUIRKS = @as(c_int, 116);
pub const KVM_CAP_X86_SMM = @as(c_int, 117);
pub const KVM_CAP_MULTI_ADDRESS_SPACE = @as(c_int, 118);
pub const KVM_CAP_GUEST_DEBUG_HW_BPS = @as(c_int, 119);
pub const KVM_CAP_GUEST_DEBUG_HW_WPS = @as(c_int, 120);
pub const KVM_CAP_SPLIT_IRQCHIP = @as(c_int, 121);
pub const KVM_CAP_IOEVENTFD_ANY_LENGTH = @as(c_int, 122);
pub const KVM_CAP_HYPERV_SYNIC = @as(c_int, 123);
pub const KVM_CAP_S390_RI = @as(c_int, 124);
pub const KVM_CAP_SPAPR_TCE_64 = @as(c_int, 125);
pub const KVM_CAP_ARM_PMU_V3 = @as(c_int, 126);
pub const KVM_CAP_VCPU_ATTRIBUTES = @as(c_int, 127);
pub const KVM_CAP_MAX_VCPU_ID = @as(c_int, 128);
pub const KVM_CAP_X2APIC_API = @as(c_int, 129);
pub const KVM_CAP_S390_USER_INSTR0 = @as(c_int, 130);
pub const KVM_CAP_MSI_DEVID = @as(c_int, 131);
pub const KVM_CAP_PPC_HTM = @as(c_int, 132);
pub const KVM_CAP_SPAPR_RESIZE_HPT = @as(c_int, 133);
pub const KVM_CAP_PPC_MMU_RADIX = @as(c_int, 134);
pub const KVM_CAP_PPC_MMU_HASH_V3 = @as(c_int, 135);
pub const KVM_CAP_IMMEDIATE_EXIT = @as(c_int, 136);
pub const KVM_CAP_MIPS_VZ = @as(c_int, 137);
pub const KVM_CAP_MIPS_TE = @as(c_int, 138);
pub const KVM_CAP_MIPS_64BIT = @as(c_int, 139);
pub const KVM_CAP_S390_GS = @as(c_int, 140);
pub const KVM_CAP_S390_AIS = @as(c_int, 141);
pub const KVM_CAP_SPAPR_TCE_VFIO = @as(c_int, 142);
pub const KVM_CAP_X86_DISABLE_EXITS = @as(c_int, 143);
pub const KVM_CAP_ARM_USER_IRQ = @as(c_int, 144);
pub const KVM_CAP_S390_CMMA_MIGRATION = @as(c_int, 145);
pub const KVM_CAP_PPC_FWNMI = @as(c_int, 146);
pub const KVM_CAP_PPC_SMT_POSSIBLE = @as(c_int, 147);
pub const KVM_CAP_HYPERV_SYNIC2 = @as(c_int, 148);
pub const KVM_CAP_HYPERV_VP_INDEX = @as(c_int, 149);
pub const KVM_CAP_S390_AIS_MIGRATION = @as(c_int, 150);
pub const KVM_CAP_PPC_GET_CPU_CHAR = @as(c_int, 151);
pub const KVM_CAP_S390_BPB = @as(c_int, 152);
pub const KVM_CAP_GET_MSR_FEATURES = @as(c_int, 153);
pub const KVM_CAP_HYPERV_EVENTFD = @as(c_int, 154);
pub const KVM_CAP_HYPERV_TLBFLUSH = @as(c_int, 155);
pub const KVM_CAP_S390_HPAGE_1M = @as(c_int, 156);
pub const KVM_CAP_NESTED_STATE = @as(c_int, 157);
pub const KVM_CAP_ARM_INJECT_SERROR_ESR = @as(c_int, 158);
pub const KVM_CAP_MSR_PLATFORM_INFO = @as(c_int, 159);
pub const KVM_CAP_PPC_NESTED_HV = @as(c_int, 160);
pub const KVM_CAP_HYPERV_SEND_IPI = @as(c_int, 161);
pub const KVM_CAP_COALESCED_PIO = @as(c_int, 162);
pub const KVM_CAP_HYPERV_ENLIGHTENED_VMCS = @as(c_int, 163);
pub const KVM_CAP_EXCEPTION_PAYLOAD = @as(c_int, 164);
pub const KVM_CAP_ARM_VM_IPA_SIZE = @as(c_int, 165);
pub const KVM_CAP_MANUAL_DIRTY_LOG_PROTECT = @as(c_int, 166);
pub const KVM_CAP_HYPERV_CPUID = @as(c_int, 167);
pub const KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 = @as(c_int, 168);
pub const KVM_CAP_PPC_IRQ_XIVE = @as(c_int, 169);
pub const KVM_CAP_ARM_SVE = @as(c_int, 170);
pub const KVM_CAP_ARM_PTRAUTH_ADDRESS = @as(c_int, 171);
pub const KVM_CAP_ARM_PTRAUTH_GENERIC = @as(c_int, 172);
pub const KVM_CAP_PMU_EVENT_FILTER = @as(c_int, 173);
pub const KVM_CAP_ARM_IRQ_LINE_LAYOUT_2 = @as(c_int, 174);
pub const KVM_CAP_HYPERV_DIRECT_TLBFLUSH = @as(c_int, 175);
pub const KVM_CAP_PPC_GUEST_DEBUG_SSTEP = @as(c_int, 176);
pub const KVM_CAP_ARM_NISV_TO_USER = @as(c_int, 177);
pub const KVM_CAP_ARM_INJECT_EXT_DABT = @as(c_int, 178);
pub const KVM_CAP_S390_VCPU_RESETS = @as(c_int, 179);
pub const KVM_CAP_S390_PROTECTED = @as(c_int, 180);
pub const KVM_CAP_PPC_SECURE_GUEST = @as(c_int, 181);
pub const KVM_CAP_HALT_POLL = @as(c_int, 182);
pub const KVM_CAP_ASYNC_PF_INT = @as(c_int, 183);
pub const KVM_CAP_LAST_CPU = @as(c_int, 184);
pub const KVM_CAP_SMALLER_MAXPHYADDR = @as(c_int, 185);
pub const KVM_CAP_S390_DIAG318 = @as(c_int, 186);
pub const KVM_CAP_STEAL_TIME = @as(c_int, 187);
pub const KVM_CAP_X86_USER_SPACE_MSR = @as(c_int, 188);
pub const KVM_CAP_X86_MSR_FILTER = @as(c_int, 189);
pub const KVM_CAP_ENFORCE_PV_FEATURE_CPUID = @as(c_int, 190);
pub const KVM_CAP_SYS_HYPERV_CPUID = @as(c_int, 191);
pub const KVM_CAP_DIRTY_LOG_RING = @as(c_int, 192);
pub const KVM_CAP_X86_BUS_LOCK_EXIT = @as(c_int, 193);
pub const KVM_CAP_PPC_DAWR1 = @as(c_int, 194);
pub const KVM_CAP_SET_GUEST_DEBUG2 = @as(c_int, 195);
pub const KVM_CAP_SGX_ATTRIBUTE = @as(c_int, 196);
pub const KVM_CAP_VM_COPY_ENC_CONTEXT_FROM = @as(c_int, 197);
pub const KVM_CAP_PTP_KVM = @as(c_int, 198);
pub const KVM_CAP_HYPERV_ENFORCE_CPUID = @as(c_int, 199);
pub const KVM_CAP_SREGS2 = @as(c_int, 200);
pub const KVM_CAP_EXIT_HYPERCALL = @as(c_int, 201);
pub const KVM_CAP_PPC_RPT_INVALIDATE = @as(c_int, 202);
pub const KVM_CAP_BINARY_STATS_FD = @as(c_int, 203);
pub const KVM_CAP_EXIT_ON_EMULATION_FAILURE = @as(c_int, 204);
pub const KVM_CAP_ARM_MTE = @as(c_int, 205);
pub const KVM_CAP_VM_MOVE_ENC_CONTEXT_FROM = @as(c_int, 206);
pub const KVM_CAP_VM_GPA_BITS = @as(c_int, 207);
pub const KVM_CAP_XSAVE2 = @as(c_int, 208);
pub const KVM_CAP_SYS_ATTRIBUTES = @as(c_int, 209);
pub const KVM_CAP_PPC_AIL_MODE_3 = @as(c_int, 210);
pub const KVM_CAP_S390_MEM_OP_EXTENSION = @as(c_int, 211);
pub const KVM_CAP_PMU_CAPABILITY = @as(c_int, 212);
pub const KVM_CAP_DISABLE_QUIRKS2 = @as(c_int, 213);
pub const KVM_CAP_VM_TSC_CONTROL = @as(c_int, 214);
pub const KVM_CAP_SYSTEM_EVENT_DATA = @as(c_int, 215);
pub const KVM_CAP_ARM_SYSTEM_SUSPEND = @as(c_int, 216);
pub const KVM_CAP_S390_PROTECTED_DUMP = @as(c_int, 217);
pub const KVM_CAP_X86_TRIPLE_FAULT_EVENT = @as(c_int, 218);
pub const KVM_CAP_X86_NOTIFY_VMEXIT = @as(c_int, 219);
pub const KVM_CAP_VM_DISABLE_NX_HUGE_PAGES = @as(c_int, 220);
pub const KVM_CAP_S390_ZPCI_OP = @as(c_int, 221);
pub const KVM_CAP_S390_CPU_TOPOLOGY = @as(c_int, 222);
pub const KVM_CAP_DIRTY_LOG_RING_ACQ_REL = @as(c_int, 223);
pub const KVM_CAP_S390_PROTECTED_ASYNC_DISABLE = @as(c_int, 224);
pub const KVM_CAP_DIRTY_LOG_RING_WITH_BITMAP = @as(c_int, 225);
pub const KVM_CAP_PMU_EVENT_MASKED_EVENTS = @as(c_int, 226);
pub const KVM_CAP_COUNTER_OFFSET = @as(c_int, 227);
pub const KVM_CAP_ARM_EAGER_SPLIT_CHUNK_SIZE = @as(c_int, 228);
pub const KVM_CAP_ARM_SUPPORTED_BLOCK_SIZES = @as(c_int, 229);
pub const KVM_CAP_ARM_SUPPORTED_REG_MASK_RANGES = @as(c_int, 230);
pub const KVM_CAP_USER_MEMORY2 = @as(c_int, 231);
pub const KVM_CAP_MEMORY_FAULT_INFO = @as(c_int, 232);
pub const KVM_CAP_MEMORY_ATTRIBUTES = @as(c_int, 233);
pub const KVM_CAP_GUEST_MEMFD = @as(c_int, 234);
pub const KVM_CAP_VM_TYPES = @as(c_int, 235);
pub const KVM_IRQ_ROUTING_XEN_EVTCHN_PRIO_2LEVEL = __helpers.cast(__u32, -@as(c_int, 1));
pub const KVM_IRQ_ROUTING_IRQCHIP = @as(c_int, 1);
pub const KVM_IRQ_ROUTING_MSI = @as(c_int, 2);
pub const KVM_IRQ_ROUTING_S390_ADAPTER = @as(c_int, 3);
pub const KVM_IRQ_ROUTING_HV_SINT = @as(c_int, 4);
pub const KVM_IRQ_ROUTING_XEN_EVTCHN = @as(c_int, 5);
pub const KVM_XEN_HVM_CONFIG_HYPERCALL_MSR = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_XEN_HVM_CONFIG_INTERCEPT_HCALL = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_XEN_HVM_CONFIG_SHARED_INFO = @as(c_int, 1) << @as(c_int, 2);
pub const KVM_XEN_HVM_CONFIG_RUNSTATE = @as(c_int, 1) << @as(c_int, 3);
pub const KVM_XEN_HVM_CONFIG_EVTCHN_2LEVEL = @as(c_int, 1) << @as(c_int, 4);
pub const KVM_XEN_HVM_CONFIG_EVTCHN_SEND = @as(c_int, 1) << @as(c_int, 5);
pub const KVM_XEN_HVM_CONFIG_RUNSTATE_UPDATE_FLAG = @as(c_int, 1) << @as(c_int, 6);
pub const KVM_XEN_HVM_CONFIG_PVCLOCK_TSC_UNSTABLE = @as(c_int, 1) << @as(c_int, 7);
pub const KVM_IRQFD_FLAG_DEASSIGN = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_IRQFD_FLAG_RESAMPLE = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_CLOCK_TSC_STABLE = @as(c_int, 2);
pub const KVM_CLOCK_REALTIME = @as(c_int, 1) << @as(c_int, 2);
pub const KVM_CLOCK_HOST_TSC = @as(c_int, 1) << @as(c_int, 3);
pub const KVM_MMU_FSL_BOOKE_NOHV = @as(c_int, 0);
pub const KVM_MMU_FSL_BOOKE_HV = @as(c_int, 1);
pub const KVM_REG_ARCH_MASK = @as(c_ulonglong, 0xff00000000000000);
pub const KVM_REG_GENERIC = @as(c_ulonglong, 0x0000000000000000);
pub const KVM_REG_PPC = @as(c_ulonglong, 0x1000000000000000);
pub const KVM_REG_X86 = @as(c_ulonglong, 0x2000000000000000);
pub const KVM_REG_IA64 = @as(c_ulonglong, 0x3000000000000000);
pub const KVM_REG_ARM = @as(c_ulonglong, 0x4000000000000000);
pub const KVM_REG_S390 = @as(c_ulonglong, 0x5000000000000000);
pub const KVM_REG_ARM64 = @as(c_ulonglong, 0x6000000000000000);
pub const KVM_REG_MIPS = @as(c_ulonglong, 0x7000000000000000);
pub const KVM_REG_RISCV = @as(c_ulonglong, 0x8000000000000000);
pub const KVM_REG_LOONGARCH = @as(c_ulonglong, 0x9000000000000000);
pub const KVM_REG_SIZE_SHIFT = @as(c_int, 52);
pub const KVM_REG_SIZE_MASK = @as(c_ulonglong, 0x00f0000000000000);
pub const KVM_REG_SIZE_U8 = @as(c_ulonglong, 0x0000000000000000);
pub const KVM_REG_SIZE_U16 = @as(c_ulonglong, 0x0010000000000000);
pub const KVM_REG_SIZE_U32 = @as(c_ulonglong, 0x0020000000000000);
pub const KVM_REG_SIZE_U64 = @as(c_ulonglong, 0x0030000000000000);
pub const KVM_REG_SIZE_U128 = @as(c_ulonglong, 0x0040000000000000);
pub const KVM_REG_SIZE_U256 = @as(c_ulonglong, 0x0050000000000000);
pub const KVM_REG_SIZE_U512 = @as(c_ulonglong, 0x0060000000000000);
pub const KVM_REG_SIZE_U1024 = @as(c_ulonglong, 0x0070000000000000);
pub const KVM_REG_SIZE_U2048 = @as(c_ulonglong, 0x0080000000000000);
pub const KVM_MSI_VALID_DEVID = @as(c_uint, 1) << @as(c_int, 0);
pub const KVM_CREATE_DEVICE_TEST = @as(c_int, 1);
pub const KVM_DEV_VFIO_FILE = @as(c_int, 1);
pub const KVM_DEV_VFIO_FILE_ADD = @as(c_int, 1);
pub const KVM_DEV_VFIO_FILE_DEL = @as(c_int, 2);
pub const KVM_DEV_VFIO_GROUP = KVM_DEV_VFIO_FILE;
pub const KVM_DEV_VFIO_GROUP_ADD = KVM_DEV_VFIO_FILE_ADD;
pub const KVM_DEV_VFIO_GROUP_DEL = KVM_DEV_VFIO_FILE_DEL;
pub const KVM_DEV_VFIO_GROUP_SET_SPAPR_TCE = @as(c_int, 3);
pub const KVM_CREATE_VCPU = _IO(KVMIO, @as(c_int, 0x41));
pub const KVM_GET_DIRTY_LOG = _IOW(KVMIO, @as(c_int, 0x42), struct_kvm_dirty_log);
pub const KVM_SET_NR_MMU_PAGES = _IO(KVMIO, @as(c_int, 0x44));
pub const KVM_GET_NR_MMU_PAGES = _IO(KVMIO, @as(c_int, 0x45));
pub const KVM_SET_USER_MEMORY_REGION = _IOW(KVMIO, @as(c_int, 0x46), struct_kvm_userspace_memory_region);
pub const KVM_SET_TSS_ADDR = _IO(KVMIO, @as(c_int, 0x47));
pub const KVM_SET_IDENTITY_MAP_ADDR = _IOW(KVMIO, @as(c_int, 0x48), __u64);
pub const KVM_SET_USER_MEMORY_REGION2 = _IOW(KVMIO, @as(c_int, 0x49), struct_kvm_userspace_memory_region2);
pub const KVM_S390_UCAS_MAP = _IOW(KVMIO, @as(c_int, 0x50), struct_kvm_s390_ucas_mapping);
pub const KVM_S390_UCAS_UNMAP = _IOW(KVMIO, @as(c_int, 0x51), struct_kvm_s390_ucas_mapping);
pub const KVM_S390_VCPU_FAULT = _IOW(KVMIO, @as(c_int, 0x52), c_ulong);
pub const KVM_CREATE_IRQCHIP = _IO(KVMIO, @as(c_int, 0x60));
pub const KVM_IRQ_LINE = _IOW(KVMIO, @as(c_int, 0x61), struct_kvm_irq_level);
pub const KVM_GET_IRQCHIP = _IOWR(KVMIO, @as(c_int, 0x62), struct_kvm_irqchip);
pub const KVM_SET_IRQCHIP = _IOR(KVMIO, @as(c_int, 0x63), struct_kvm_irqchip);
pub const KVM_CREATE_PIT = _IO(KVMIO, @as(c_int, 0x64));
pub const KVM_GET_PIT = _IOWR(KVMIO, @as(c_int, 0x65), struct_kvm_pit_state);
pub const KVM_SET_PIT = _IOR(KVMIO, @as(c_int, 0x66), struct_kvm_pit_state);
pub const KVM_IRQ_LINE_STATUS = _IOWR(KVMIO, @as(c_int, 0x67), struct_kvm_irq_level);
pub const KVM_REGISTER_COALESCED_MMIO = _IOW(KVMIO, @as(c_int, 0x67), struct_kvm_coalesced_mmio_zone);
pub const KVM_UNREGISTER_COALESCED_MMIO = _IOW(KVMIO, @as(c_int, 0x68), struct_kvm_coalesced_mmio_zone);
pub const KVM_SET_GSI_ROUTING = _IOW(KVMIO, @as(c_int, 0x6a), struct_kvm_irq_routing);
pub const KVM_REINJECT_CONTROL = _IO(KVMIO, @as(c_int, 0x71));
pub const KVM_IRQFD = _IOW(KVMIO, @as(c_int, 0x76), struct_kvm_irqfd);
pub const KVM_CREATE_PIT2 = _IOW(KVMIO, @as(c_int, 0x77), struct_kvm_pit_config);
pub const KVM_SET_BOOT_CPU_ID = _IO(KVMIO, @as(c_int, 0x78));
pub const KVM_IOEVENTFD = _IOW(KVMIO, @as(c_int, 0x79), struct_kvm_ioeventfd);
pub const KVM_XEN_HVM_CONFIG = _IOW(KVMIO, @as(c_int, 0x7a), struct_kvm_xen_hvm_config);
pub const KVM_SET_CLOCK = _IOW(KVMIO, @as(c_int, 0x7b), struct_kvm_clock_data);
pub const KVM_GET_CLOCK = _IOR(KVMIO, @as(c_int, 0x7c), struct_kvm_clock_data);
pub const KVM_GET_PIT2 = _IOR(KVMIO, @as(c_int, 0x9f), struct_kvm_pit_state2);
pub const KVM_SET_PIT2 = _IOW(KVMIO, @as(c_int, 0xa0), struct_kvm_pit_state2);
pub const KVM_PPC_GET_PVINFO = _IOW(KVMIO, @as(c_int, 0xa1), struct_kvm_ppc_pvinfo);
pub const KVM_SET_TSC_KHZ = _IO(KVMIO, @as(c_int, 0xa2));
pub const KVM_GET_TSC_KHZ = _IO(KVMIO, @as(c_int, 0xa3));
pub const KVM_SIGNAL_MSI = _IOW(KVMIO, @as(c_int, 0xa5), struct_kvm_msi);
pub const KVM_PPC_GET_SMMU_INFO = _IOR(KVMIO, @as(c_int, 0xa6), struct_kvm_ppc_smmu_info);
pub const KVM_PPC_ALLOCATE_HTAB = _IOWR(KVMIO, @as(c_int, 0xa7), __u32);
pub const KVM_CREATE_SPAPR_TCE = @compileError("unable to translate macro: undefined identifier `kvm_create_spapr_tce`"); // /usr/include/linux/kvm.h:1487:9
pub const KVM_CREATE_SPAPR_TCE_64 = @compileError("unable to translate macro: undefined identifier `kvm_create_spapr_tce_64`"); // /usr/include/linux/kvm.h:1488:9
pub const KVM_ALLOCATE_RMA = @compileError("unable to translate macro: undefined identifier `kvm_allocate_rma`"); // /usr/include/linux/kvm.h:1491:9
pub const KVM_PPC_GET_HTAB_FD = @compileError("unable to translate macro: undefined identifier `kvm_get_htab_fd`"); // /usr/include/linux/kvm.h:1493:9
pub const KVM_ARM_SET_DEVICE_ADDR = _IOW(KVMIO, @as(c_int, 0xab), struct_kvm_arm_device_addr);
pub const KVM_PPC_RTAS_DEFINE_TOKEN = @compileError("unable to translate macro: undefined identifier `kvm_rtas_token_args`"); // /usr/include/linux/kvm.h:1497:9
pub const KVM_PPC_RESIZE_HPT_PREPARE = _IOR(KVMIO, @as(c_int, 0xad), struct_kvm_ppc_resize_hpt);
pub const KVM_PPC_RESIZE_HPT_COMMIT = _IOR(KVMIO, @as(c_int, 0xae), struct_kvm_ppc_resize_hpt);
pub const KVM_PPC_CONFIGURE_V3_MMU = @compileError("unable to translate macro: undefined identifier `kvm_ppc_mmuv3_cfg`"); // /usr/include/linux/kvm.h:1502:9
pub const KVM_PPC_GET_RMMU_INFO = @compileError("unable to translate macro: undefined identifier `kvm_ppc_rmmu_info`"); // /usr/include/linux/kvm.h:1504:9
pub const KVM_PPC_GET_CPU_CHAR = @compileError("unable to translate macro: undefined identifier `kvm_ppc_cpu_char`"); // /usr/include/linux/kvm.h:1506:9
pub const KVM_SET_PMU_EVENT_FILTER = _IOW(KVMIO, @as(c_int, 0xb2), struct_kvm_pmu_event_filter);
pub const KVM_PPC_SVM_OFF = _IO(KVMIO, @as(c_int, 0xb3));
pub const KVM_ARM_MTE_COPY_TAGS = @compileError("unable to translate macro: undefined identifier `kvm_arm_copy_mte_tags`"); // /usr/include/linux/kvm.h:1510:9
pub const KVM_ARM_SET_COUNTER_OFFSET = @compileError("unable to translate macro: undefined identifier `kvm_arm_counter_offset`"); // /usr/include/linux/kvm.h:1512:9
pub const KVM_ARM_GET_REG_WRITABLE_MASKS = @compileError("unable to translate macro: undefined identifier `reg_mask_range`"); // /usr/include/linux/kvm.h:1513:9
pub const KVM_CREATE_DEVICE = _IOWR(KVMIO, @as(c_int, 0xe0), struct_kvm_create_device);
pub const KVM_SET_DEVICE_ATTR = _IOW(KVMIO, @as(c_int, 0xe1), struct_kvm_device_attr);
pub const KVM_GET_DEVICE_ATTR = _IOW(KVMIO, @as(c_int, 0xe2), struct_kvm_device_attr);
pub const KVM_HAS_DEVICE_ATTR = _IOW(KVMIO, @as(c_int, 0xe3), struct_kvm_device_attr);
pub const KVM_RUN = _IO(KVMIO, @as(c_int, 0x80));
pub const KVM_GET_REGS = _IOR(KVMIO, @as(c_int, 0x81), struct_kvm_regs);
pub const KVM_SET_REGS = _IOW(KVMIO, @as(c_int, 0x82), struct_kvm_regs);
pub const KVM_GET_SREGS = _IOR(KVMIO, @as(c_int, 0x83), struct_kvm_sregs);
pub const KVM_SET_SREGS = _IOW(KVMIO, @as(c_int, 0x84), struct_kvm_sregs);
pub const KVM_TRANSLATE = _IOWR(KVMIO, @as(c_int, 0x85), struct_kvm_translation);
pub const KVM_INTERRUPT = _IOW(KVMIO, @as(c_int, 0x86), struct_kvm_interrupt);
pub const KVM_GET_MSRS = _IOWR(KVMIO, @as(c_int, 0x88), struct_kvm_msrs);
pub const KVM_SET_MSRS = _IOW(KVMIO, @as(c_int, 0x89), struct_kvm_msrs);
pub const KVM_SET_CPUID = _IOW(KVMIO, @as(c_int, 0x8a), struct_kvm_cpuid);
pub const KVM_SET_SIGNAL_MASK = _IOW(KVMIO, @as(c_int, 0x8b), struct_kvm_signal_mask);
pub const KVM_GET_FPU = _IOR(KVMIO, @as(c_int, 0x8c), struct_kvm_fpu);
pub const KVM_SET_FPU = _IOW(KVMIO, @as(c_int, 0x8d), struct_kvm_fpu);
pub const KVM_GET_LAPIC = _IOR(KVMIO, @as(c_int, 0x8e), struct_kvm_lapic_state);
pub const KVM_SET_LAPIC = _IOW(KVMIO, @as(c_int, 0x8f), struct_kvm_lapic_state);
pub const KVM_SET_CPUID2 = _IOW(KVMIO, @as(c_int, 0x90), struct_kvm_cpuid2);
pub const KVM_GET_CPUID2 = _IOWR(KVMIO, @as(c_int, 0x91), struct_kvm_cpuid2);
pub const KVM_TPR_ACCESS_REPORTING = _IOWR(KVMIO, @as(c_int, 0x92), struct_kvm_tpr_access_ctl);
pub const KVM_SET_VAPIC_ADDR = _IOW(KVMIO, @as(c_int, 0x93), struct_kvm_vapic_addr);
pub const KVM_S390_INTERRUPT = _IOW(KVMIO, @as(c_int, 0x94), struct_kvm_s390_interrupt);
pub const KVM_S390_STORE_STATUS_NOADDR = -@as(c_ulong, 1);
pub const KVM_S390_STORE_STATUS_PREFIXED = -@as(c_ulong, 2);
pub const KVM_S390_STORE_STATUS = _IOW(KVMIO, @as(c_int, 0x95), c_ulong);
pub const KVM_S390_SET_INITIAL_PSW = _IOW(KVMIO, @as(c_int, 0x96), struct_kvm_s390_psw);
pub const KVM_S390_INITIAL_RESET = _IO(KVMIO, @as(c_int, 0x97));
pub const KVM_GET_MP_STATE = _IOR(KVMIO, @as(c_int, 0x98), struct_kvm_mp_state);
pub const KVM_SET_MP_STATE = _IOW(KVMIO, @as(c_int, 0x99), struct_kvm_mp_state);
pub const KVM_NMI = _IO(KVMIO, @as(c_int, 0x9a));
pub const KVM_SET_GUEST_DEBUG = _IOW(KVMIO, @as(c_int, 0x9b), struct_kvm_guest_debug);
pub const KVM_X86_SETUP_MCE = _IOW(KVMIO, @as(c_int, 0x9c), __u64);
pub const KVM_X86_GET_MCE_CAP_SUPPORTED = _IOR(KVMIO, @as(c_int, 0x9d), __u64);
pub const KVM_X86_SET_MCE = _IOW(KVMIO, @as(c_int, 0x9e), struct_kvm_x86_mce);
pub const KVM_GET_VCPU_EVENTS = _IOR(KVMIO, @as(c_int, 0x9f), struct_kvm_vcpu_events);
pub const KVM_SET_VCPU_EVENTS = _IOW(KVMIO, @as(c_int, 0xa0), struct_kvm_vcpu_events);
pub const KVM_GET_DEBUGREGS = _IOR(KVMIO, @as(c_int, 0xa1), struct_kvm_debugregs);
pub const KVM_SET_DEBUGREGS = _IOW(KVMIO, @as(c_int, 0xa2), struct_kvm_debugregs);
pub const KVM_ENABLE_CAP = _IOW(KVMIO, @as(c_int, 0xa3), struct_kvm_enable_cap);
pub const KVM_GET_XSAVE = _IOR(KVMIO, @as(c_int, 0xa4), struct_kvm_xsave);
pub const KVM_SET_XSAVE = _IOW(KVMIO, @as(c_int, 0xa5), struct_kvm_xsave);
pub const KVM_GET_XCRS = _IOR(KVMIO, @as(c_int, 0xa6), struct_kvm_xcrs);
pub const KVM_SET_XCRS = _IOW(KVMIO, @as(c_int, 0xa7), struct_kvm_xcrs);
pub const KVM_DIRTY_TLB = _IOW(KVMIO, @as(c_int, 0xaa), struct_kvm_dirty_tlb);
pub const KVM_GET_ONE_REG = _IOW(KVMIO, @as(c_int, 0xab), struct_kvm_one_reg);
pub const KVM_SET_ONE_REG = _IOW(KVMIO, @as(c_int, 0xac), struct_kvm_one_reg);
pub const KVM_KVMCLOCK_CTRL = _IO(KVMIO, @as(c_int, 0xad));
pub const KVM_ARM_VCPU_INIT = @compileError("unable to translate macro: undefined identifier `kvm_vcpu_init`"); // /usr/include/linux/kvm.h:1591:9
pub const KVM_ARM_PREFERRED_TARGET = @compileError("unable to translate macro: undefined identifier `kvm_vcpu_init`"); // /usr/include/linux/kvm.h:1592:9
pub const KVM_GET_REG_LIST = _IOWR(KVMIO, @as(c_int, 0xb0), struct_kvm_reg_list);
pub const KVM_S390_MEM_OP = _IOW(KVMIO, @as(c_int, 0xb1), struct_kvm_s390_mem_op);
pub const KVM_S390_GET_SKEYS = _IOW(KVMIO, @as(c_int, 0xb2), struct_kvm_s390_skeys);
pub const KVM_S390_SET_SKEYS = _IOW(KVMIO, @as(c_int, 0xb3), struct_kvm_s390_skeys);
pub const KVM_S390_IRQ = _IOW(KVMIO, @as(c_int, 0xb4), struct_kvm_s390_irq);
pub const KVM_S390_SET_IRQ_STATE = _IOW(KVMIO, @as(c_int, 0xb5), struct_kvm_s390_irq_state);
pub const KVM_S390_GET_IRQ_STATE = _IOW(KVMIO, @as(c_int, 0xb6), struct_kvm_s390_irq_state);
pub const KVM_SMI = _IO(KVMIO, @as(c_int, 0xb7));
pub const KVM_S390_GET_CMMA_BITS = _IOWR(KVMIO, @as(c_int, 0xb8), struct_kvm_s390_cmma_log);
pub const KVM_S390_SET_CMMA_BITS = _IOW(KVMIO, @as(c_int, 0xb9), struct_kvm_s390_cmma_log);
pub const KVM_MEMORY_ENCRYPT_OP = _IOWR(KVMIO, @as(c_int, 0xba), c_ulong);
pub const KVM_MEMORY_ENCRYPT_REG_REGION = _IOR(KVMIO, @as(c_int, 0xbb), struct_kvm_enc_region);
pub const KVM_MEMORY_ENCRYPT_UNREG_REGION = _IOR(KVMIO, @as(c_int, 0xbc), struct_kvm_enc_region);
pub const KVM_HYPERV_EVENTFD = _IOW(KVMIO, @as(c_int, 0xbd), struct_kvm_hyperv_eventfd);
pub const KVM_GET_NESTED_STATE = _IOWR(KVMIO, @as(c_int, 0xbe), struct_kvm_nested_state);
pub const KVM_SET_NESTED_STATE = _IOW(KVMIO, @as(c_int, 0xbf), struct_kvm_nested_state);
pub const KVM_CLEAR_DIRTY_LOG = _IOWR(KVMIO, @as(c_int, 0xc0), struct_kvm_clear_dirty_log);
pub const KVM_GET_SUPPORTED_HV_CPUID = _IOWR(KVMIO, @as(c_int, 0xc1), struct_kvm_cpuid2);
pub const KVM_ARM_VCPU_FINALIZE = _IOW(KVMIO, @as(c_int, 0xc2), c_int);
pub const KVM_S390_NORMAL_RESET = _IO(KVMIO, @as(c_int, 0xc3));
pub const KVM_S390_CLEAR_RESET = _IO(KVMIO, @as(c_int, 0xc4));
pub const KVM_S390_PV_COMMAND = _IOWR(KVMIO, @as(c_int, 0xc5), struct_kvm_pv_cmd);
pub const KVM_X86_SET_MSR_FILTER = _IOW(KVMIO, @as(c_int, 0xc6), struct_kvm_msr_filter);
pub const KVM_RESET_DIRTY_RINGS = _IO(KVMIO, @as(c_int, 0xc7));
pub const KVM_XEN_HVM_GET_ATTR = _IOWR(KVMIO, @as(c_int, 0xc8), struct_kvm_xen_hvm_attr);
pub const KVM_XEN_HVM_SET_ATTR = _IOW(KVMIO, @as(c_int, 0xc9), struct_kvm_xen_hvm_attr);
pub const KVM_XEN_INVALID_GFN = __helpers.cast(__u64, -@as(c_int, 1));
pub const KVM_XEN_EVTCHN_DEASSIGN = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_XEN_EVTCHN_UPDATE = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_XEN_EVTCHN_RESET = @as(c_int, 1) << @as(c_int, 2);
pub const KVM_XEN_ATTR_TYPE_LONG_MODE = @as(c_int, 0x0);
pub const KVM_XEN_ATTR_TYPE_SHARED_INFO = @as(c_int, 0x1);
pub const KVM_XEN_ATTR_TYPE_UPCALL_VECTOR = @as(c_int, 0x2);
pub const KVM_XEN_ATTR_TYPE_EVTCHN = @as(c_int, 0x3);
pub const KVM_XEN_ATTR_TYPE_XEN_VERSION = @as(c_int, 0x4);
pub const KVM_XEN_ATTR_TYPE_RUNSTATE_UPDATE_FLAG = @as(c_int, 0x5);
pub const KVM_XEN_VCPU_GET_ATTR = _IOWR(KVMIO, @as(c_int, 0xca), struct_kvm_xen_vcpu_attr);
pub const KVM_XEN_VCPU_SET_ATTR = _IOW(KVMIO, @as(c_int, 0xcb), struct_kvm_xen_vcpu_attr);
pub const KVM_XEN_HVM_EVTCHN_SEND = _IOW(KVMIO, @as(c_int, 0xd0), struct_kvm_irq_routing_xen_evtchn);
pub const KVM_GET_SREGS2 = _IOR(KVMIO, @as(c_int, 0xcc), struct_kvm_sregs2);
pub const KVM_SET_SREGS2 = _IOW(KVMIO, @as(c_int, 0xcd), struct_kvm_sregs2);
pub const KVM_XEN_INVALID_GPA = __helpers.cast(__u64, -@as(c_int, 1));
pub const KVM_XEN_VCPU_ATTR_TYPE_VCPU_INFO = @as(c_int, 0x0);
pub const KVM_XEN_VCPU_ATTR_TYPE_VCPU_TIME_INFO = @as(c_int, 0x1);
pub const KVM_XEN_VCPU_ATTR_TYPE_RUNSTATE_ADDR = @as(c_int, 0x2);
pub const KVM_XEN_VCPU_ATTR_TYPE_RUNSTATE_CURRENT = @as(c_int, 0x3);
pub const KVM_XEN_VCPU_ATTR_TYPE_RUNSTATE_DATA = @as(c_int, 0x4);
pub const KVM_XEN_VCPU_ATTR_TYPE_RUNSTATE_ADJUST = @as(c_int, 0x5);
pub const KVM_XEN_VCPU_ATTR_TYPE_VCPU_ID = @as(c_int, 0x6);
pub const KVM_XEN_VCPU_ATTR_TYPE_TIMER = @as(c_int, 0x7);
pub const KVM_XEN_VCPU_ATTR_TYPE_UPCALL_VECTOR = @as(c_int, 0x8);
pub const KVM_DEV_ASSIGN_ENABLE_IOMMU = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_DEV_ASSIGN_PCI_2_3 = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_DEV_ASSIGN_MASK_INTX = @as(c_int, 1) << @as(c_int, 2);
pub const KVM_DEV_IRQ_HOST_INTX = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_DEV_IRQ_HOST_MSI = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_DEV_IRQ_HOST_MSIX = @as(c_int, 1) << @as(c_int, 2);
pub const KVM_DEV_IRQ_GUEST_INTX = @as(c_int, 1) << @as(c_int, 8);
pub const KVM_DEV_IRQ_GUEST_MSI = @as(c_int, 1) << @as(c_int, 9);
pub const KVM_DEV_IRQ_GUEST_MSIX = @as(c_int, 1) << @as(c_int, 10);
pub const KVM_DEV_IRQ_HOST_MASK = @as(c_int, 0x00ff);
pub const KVM_DEV_IRQ_GUEST_MASK = __helpers.promoteIntLiteral(c_int, 0xff00, .hex);
pub const KVM_MAX_MSIX_PER_DEV = @as(c_int, 256);
pub const KVM_X2APIC_API_USE_32BIT_IDS = @as(c_ulonglong, 1) << @as(c_int, 0);
pub const KVM_X2APIC_API_DISABLE_BROADCAST_QUIRK = @as(c_ulonglong, 1) << @as(c_int, 1);
pub const KVM_ARM_DEV_EL1_VTIMER = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_ARM_DEV_EL1_PTIMER = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_ARM_DEV_PMU = @as(c_int, 1) << @as(c_int, 2);
pub const KVM_HYPERV_CONN_ID_MASK = __helpers.promoteIntLiteral(c_int, 0x00ffffff, .hex);
pub const KVM_HYPERV_EVENTFD_DEASSIGN = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_DIRTY_LOG_INITIALLY_SET = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_DIRTY_GFN_F_DIRTY = _BITUL(@as(c_int, 0));
pub const KVM_DIRTY_GFN_F_RESET = _BITUL(@as(c_int, 1));
pub const KVM_DIRTY_GFN_F_MASK = @as(c_int, 0x3);
pub const KVM_BUS_LOCK_DETECTION_OFF = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_BUS_LOCK_DETECTION_EXIT = @as(c_int, 1) << @as(c_int, 1);
pub const KVM_PMU_CAP_DISABLE = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_STATS_TYPE_SHIFT = @as(c_int, 0);
pub const KVM_STATS_TYPE_MASK = @as(c_int, 0xF) << KVM_STATS_TYPE_SHIFT;
pub const KVM_STATS_TYPE_CUMULATIVE = @as(c_int, 0x0) << KVM_STATS_TYPE_SHIFT;
pub const KVM_STATS_TYPE_INSTANT = @as(c_int, 0x1) << KVM_STATS_TYPE_SHIFT;
pub const KVM_STATS_TYPE_PEAK = @as(c_int, 0x2) << KVM_STATS_TYPE_SHIFT;
pub const KVM_STATS_TYPE_LINEAR_HIST = @as(c_int, 0x3) << KVM_STATS_TYPE_SHIFT;
pub const KVM_STATS_TYPE_LOG_HIST = @as(c_int, 0x4) << KVM_STATS_TYPE_SHIFT;
pub const KVM_STATS_TYPE_MAX = KVM_STATS_TYPE_LOG_HIST;
pub const KVM_STATS_UNIT_SHIFT = @as(c_int, 4);
pub const KVM_STATS_UNIT_MASK = @as(c_int, 0xF) << KVM_STATS_UNIT_SHIFT;
pub const KVM_STATS_UNIT_NONE = @as(c_int, 0x0) << KVM_STATS_UNIT_SHIFT;
pub const KVM_STATS_UNIT_BYTES = @as(c_int, 0x1) << KVM_STATS_UNIT_SHIFT;
pub const KVM_STATS_UNIT_SECONDS = @as(c_int, 0x2) << KVM_STATS_UNIT_SHIFT;
pub const KVM_STATS_UNIT_CYCLES = @as(c_int, 0x3) << KVM_STATS_UNIT_SHIFT;
pub const KVM_STATS_UNIT_BOOLEAN = @as(c_int, 0x4) << KVM_STATS_UNIT_SHIFT;
pub const KVM_STATS_UNIT_MAX = KVM_STATS_UNIT_BOOLEAN;
pub const KVM_STATS_BASE_SHIFT = @as(c_int, 8);
pub const KVM_STATS_BASE_MASK = @as(c_int, 0xF) << KVM_STATS_BASE_SHIFT;
pub const KVM_STATS_BASE_POW10 = @as(c_int, 0x0) << KVM_STATS_BASE_SHIFT;
pub const KVM_STATS_BASE_POW2 = @as(c_int, 0x1) << KVM_STATS_BASE_SHIFT;
pub const KVM_STATS_BASE_MAX = KVM_STATS_BASE_POW2;
pub const KVM_GET_STATS_FD = _IO(KVMIO, @as(c_int, 0xce));
pub const KVM_GET_XSAVE2 = _IOR(KVMIO, @as(c_int, 0xcf), struct_kvm_xsave);
pub const KVM_S390_PV_CPU_COMMAND = _IOWR(KVMIO, @as(c_int, 0xd0), struct_kvm_pv_cmd);
pub const KVM_X86_NOTIFY_VMEXIT_ENABLED = @as(c_ulonglong, 1) << @as(c_int, 0);
pub const KVM_X86_NOTIFY_VMEXIT_USER = @as(c_ulonglong, 1) << @as(c_int, 1);
pub const KVM_S390_ZPCI_OP = _IOW(KVMIO, @as(c_int, 0xd1), struct_kvm_s390_zpci_op);
pub const KVM_S390_ZPCIOP_REG_AEN = @as(c_int, 0);
pub const KVM_S390_ZPCIOP_DEREG_AEN = @as(c_int, 1);
pub const KVM_S390_ZPCIOP_REGAEN_HOST = @as(c_int, 1) << @as(c_int, 0);
pub const KVM_SET_MEMORY_ATTRIBUTES = _IOW(KVMIO, @as(c_int, 0xd2), struct_kvm_memory_attributes);
pub const KVM_MEMORY_ATTRIBUTE_PRIVATE = @as(c_ulonglong, 1) << @as(c_int, 3);
pub const KVM_CREATE_GUEST_MEMFD = _IOWR(KVMIO, @as(c_int, 0xd4), struct_kvm_create_guest_memfd);
pub const kvm_pic_state = struct_kvm_pic_state;
pub const kvm_ioapic_state = struct_kvm_ioapic_state;
pub const kvm_regs = struct_kvm_regs;
pub const kvm_lapic_state = struct_kvm_lapic_state;
pub const kvm_segment = struct_kvm_segment;
pub const kvm_dtable = struct_kvm_dtable;
pub const kvm_sregs = struct_kvm_sregs;
pub const kvm_sregs2 = struct_kvm_sregs2;
pub const kvm_fpu = struct_kvm_fpu;
pub const kvm_msr_entry = struct_kvm_msr_entry;
pub const kvm_msrs = struct_kvm_msrs;
pub const kvm_msr_list = struct_kvm_msr_list;
pub const kvm_msr_filter_range = struct_kvm_msr_filter_range;
pub const kvm_msr_filter = struct_kvm_msr_filter;
pub const kvm_cpuid_entry = struct_kvm_cpuid_entry;
pub const kvm_cpuid = struct_kvm_cpuid;
pub const kvm_cpuid_entry2 = struct_kvm_cpuid_entry2;
pub const kvm_cpuid2 = struct_kvm_cpuid2;
pub const kvm_pit_channel_state = struct_kvm_pit_channel_state;
pub const kvm_debug_exit_arch = struct_kvm_debug_exit_arch;
pub const kvm_guest_debug_arch = struct_kvm_guest_debug_arch;
pub const kvm_pit_state = struct_kvm_pit_state;
pub const kvm_pit_state2 = struct_kvm_pit_state2;
pub const kvm_reinject_control = struct_kvm_reinject_control;
pub const kvm_vcpu_events = struct_kvm_vcpu_events;
pub const kvm_debugregs = struct_kvm_debugregs;
pub const kvm_xsave = struct_kvm_xsave;
pub const kvm_xcr = struct_kvm_xcr;
pub const kvm_xcrs = struct_kvm_xcrs;
pub const kvm_sync_regs = struct_kvm_sync_regs;
pub const kvm_vmx_nested_state_data = struct_kvm_vmx_nested_state_data;
pub const kvm_vmx_nested_state_hdr = struct_kvm_vmx_nested_state_hdr;
pub const kvm_svm_nested_state_data = struct_kvm_svm_nested_state_data;
pub const kvm_svm_nested_state_hdr = struct_kvm_svm_nested_state_hdr;
pub const kvm_nested_state = struct_kvm_nested_state;
pub const kvm_pmu_event_filter = struct_kvm_pmu_event_filter;
pub const kvm_userspace_memory_region = struct_kvm_userspace_memory_region;
pub const kvm_userspace_memory_region2 = struct_kvm_userspace_memory_region2;
pub const kvm_irq_level = struct_kvm_irq_level;
pub const kvm_irqchip = struct_kvm_irqchip;
pub const kvm_pit_config = struct_kvm_pit_config;
pub const kvm_s390_skeys = struct_kvm_s390_skeys;
pub const kvm_s390_cmma_log = struct_kvm_s390_cmma_log;
pub const kvm_hyperv_exit = struct_kvm_hyperv_exit;
pub const kvm_xen_exit = struct_kvm_xen_exit;
pub const kvm_run = struct_kvm_run;
pub const kvm_coalesced_mmio_zone = struct_kvm_coalesced_mmio_zone;
pub const kvm_coalesced_mmio = struct_kvm_coalesced_mmio;
pub const kvm_coalesced_mmio_ring = struct_kvm_coalesced_mmio_ring;
pub const kvm_translation = struct_kvm_translation;
pub const kvm_s390_mem_op = struct_kvm_s390_mem_op;
pub const kvm_interrupt = struct_kvm_interrupt;
pub const kvm_dirty_log = struct_kvm_dirty_log;
pub const kvm_clear_dirty_log = struct_kvm_clear_dirty_log;
pub const kvm_signal_mask = struct_kvm_signal_mask;
pub const kvm_tpr_access_ctl = struct_kvm_tpr_access_ctl;
pub const kvm_vapic_addr = struct_kvm_vapic_addr;
pub const kvm_mp_state = struct_kvm_mp_state;
pub const kvm_s390_psw = struct_kvm_s390_psw;
pub const kvm_s390_interrupt = struct_kvm_s390_interrupt;
pub const kvm_s390_io_info = struct_kvm_s390_io_info;
pub const kvm_s390_ext_info = struct_kvm_s390_ext_info;
pub const kvm_s390_pgm_info = struct_kvm_s390_pgm_info;
pub const kvm_s390_prefix_info = struct_kvm_s390_prefix_info;
pub const kvm_s390_extcall_info = struct_kvm_s390_extcall_info;
pub const kvm_s390_emerg_info = struct_kvm_s390_emerg_info;
pub const kvm_s390_stop_info = struct_kvm_s390_stop_info;
pub const kvm_s390_mchk_info = struct_kvm_s390_mchk_info;
pub const kvm_s390_irq = struct_kvm_s390_irq;
pub const kvm_s390_irq_state = struct_kvm_s390_irq_state;
pub const kvm_guest_debug = struct_kvm_guest_debug;
pub const kvm_ioeventfd = struct_kvm_ioeventfd;
pub const kvm_enable_cap = struct_kvm_enable_cap;
pub const kvm_ppc_pvinfo = struct_kvm_ppc_pvinfo;
pub const kvm_ppc_one_page_size = struct_kvm_ppc_one_page_size;
pub const kvm_ppc_one_seg_page_size = struct_kvm_ppc_one_seg_page_size;
pub const kvm_ppc_smmu_info = struct_kvm_ppc_smmu_info;
pub const kvm_ppc_resize_hpt = struct_kvm_ppc_resize_hpt;
pub const kvm_irq_routing_irqchip = struct_kvm_irq_routing_irqchip;
pub const kvm_irq_routing_msi = struct_kvm_irq_routing_msi;
pub const kvm_irq_routing_s390_adapter = struct_kvm_irq_routing_s390_adapter;
pub const kvm_irq_routing_hv_sint = struct_kvm_irq_routing_hv_sint;
pub const kvm_irq_routing_xen_evtchn = struct_kvm_irq_routing_xen_evtchn;
pub const kvm_irq_routing_entry = struct_kvm_irq_routing_entry;
pub const kvm_irq_routing = struct_kvm_irq_routing;
pub const kvm_x86_mce = struct_kvm_x86_mce;
pub const kvm_xen_hvm_config = struct_kvm_xen_hvm_config;
pub const kvm_irqfd = struct_kvm_irqfd;
pub const kvm_clock_data = struct_kvm_clock_data;
pub const kvm_config_tlb = struct_kvm_config_tlb;
pub const kvm_dirty_tlb = struct_kvm_dirty_tlb;
pub const kvm_reg_list = struct_kvm_reg_list;
pub const kvm_one_reg = struct_kvm_one_reg;
pub const kvm_msi = struct_kvm_msi;
pub const kvm_arm_device_addr = struct_kvm_arm_device_addr;
pub const kvm_create_device = struct_kvm_create_device;
pub const kvm_device_attr = struct_kvm_device_attr;
pub const kvm_device_type = enum_kvm_device_type;
pub const kvm_vfio_spapr_tce = struct_kvm_vfio_spapr_tce;
pub const kvm_s390_ucas_mapping = struct_kvm_s390_ucas_mapping;
pub const kvm_enc_region = struct_kvm_enc_region;
pub const kvm_s390_pv_sec_parm = struct_kvm_s390_pv_sec_parm;
pub const kvm_s390_pv_unp = struct_kvm_s390_pv_unp;
pub const pv_cmd_dmp_id = enum_pv_cmd_dmp_id;
pub const kvm_s390_pv_dmp = struct_kvm_s390_pv_dmp;
pub const pv_cmd_info_id = enum_pv_cmd_info_id;
pub const kvm_s390_pv_info_dump = struct_kvm_s390_pv_info_dump;
pub const kvm_s390_pv_info_vm = struct_kvm_s390_pv_info_vm;
pub const kvm_s390_pv_info_header = struct_kvm_s390_pv_info_header;
pub const kvm_s390_pv_info = struct_kvm_s390_pv_info;
pub const pv_cmd_id = enum_pv_cmd_id;
pub const kvm_pv_cmd = struct_kvm_pv_cmd;
pub const kvm_xen_hvm_attr = struct_kvm_xen_hvm_attr;
pub const kvm_xen_vcpu_attr = struct_kvm_xen_vcpu_attr;
pub const sev_cmd_id = enum_sev_cmd_id;
pub const kvm_sev_cmd = struct_kvm_sev_cmd;
pub const kvm_sev_launch_start = struct_kvm_sev_launch_start;
pub const kvm_sev_launch_update_data = struct_kvm_sev_launch_update_data;
pub const kvm_sev_launch_secret = struct_kvm_sev_launch_secret;
pub const kvm_sev_launch_measure = struct_kvm_sev_launch_measure;
pub const kvm_sev_guest_status = struct_kvm_sev_guest_status;
pub const kvm_sev_dbg = struct_kvm_sev_dbg;
pub const kvm_sev_attestation_report = struct_kvm_sev_attestation_report;
pub const kvm_sev_send_start = struct_kvm_sev_send_start;
pub const kvm_sev_send_update_data = struct_kvm_sev_send_update_data;
pub const kvm_sev_receive_start = struct_kvm_sev_receive_start;
pub const kvm_sev_receive_update_data = struct_kvm_sev_receive_update_data;
pub const kvm_assigned_pci_dev = struct_kvm_assigned_pci_dev;
pub const kvm_assigned_irq = struct_kvm_assigned_irq;
pub const kvm_assigned_msix_nr = struct_kvm_assigned_msix_nr;
pub const kvm_assigned_msix_entry = struct_kvm_assigned_msix_entry;
pub const kvm_hyperv_eventfd = struct_kvm_hyperv_eventfd;
pub const kvm_dirty_gfn = struct_kvm_dirty_gfn;
pub const kvm_stats_header = struct_kvm_stats_header;
pub const kvm_stats_desc = struct_kvm_stats_desc;
pub const kvm_s390_zpci_op = struct_kvm_s390_zpci_op;
pub const kvm_memory_attributes = struct_kvm_memory_attributes;
pub const kvm_create_guest_memfd = struct_kvm_create_guest_memfd;
