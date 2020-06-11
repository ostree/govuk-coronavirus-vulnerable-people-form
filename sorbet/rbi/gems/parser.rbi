# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/parser/all/parser.rbi
#
# parser-2.7.1.3

module Parser
end
module Parser::Messages
  def self.compile(reason, arguments); end
end
module Parser::Deprecation
  def warn_of_deprecation; end
  def warned_of_deprecation=(arg0); end
end
module Parser::AST
end
class Parser::AST::Node < AST::Node
  def assign_properties(properties); end
  def loc; end
  def location; end
end
class Parser::AST::Processor < AST::Processor
  def on_alias(node); end
  def on_and(node); end
  def on_and_asgn(node); end
  def on_arg(node); end
  def on_arg_expr(node); end
  def on_args(node); end
  def on_argument(node); end
  def on_array(node); end
  def on_array_pattern(node); end
  def on_array_pattern_with_tail(node); end
  def on_back_ref(node); end
  def on_begin(node); end
  def on_block(node); end
  def on_block_pass(node); end
  def on_blockarg(node); end
  def on_blockarg_expr(node); end
  def on_break(node); end
  def on_case(node); end
  def on_case_match(node); end
  def on_casgn(node); end
  def on_class(node); end
  def on_const(node); end
  def on_const_pattern(node); end
  def on_csend(node); end
  def on_cvar(node); end
  def on_cvasgn(node); end
  def on_def(node); end
  def on_def_e(node); end
  def on_defined?(node); end
  def on_defs(node); end
  def on_defs_e(node); end
  def on_dstr(node); end
  def on_dsym(node); end
  def on_eflipflop(node); end
  def on_empty_else(node); end
  def on_ensure(node); end
  def on_erange(node); end
  def on_for(node); end
  def on_gvar(node); end
  def on_gvasgn(node); end
  def on_hash(node); end
  def on_hash_pattern(node); end
  def on_if(node); end
  def on_if_guard(node); end
  def on_iflipflop(node); end
  def on_in_match(node); end
  def on_in_pattern(node); end
  def on_index(node); end
  def on_indexasgn(node); end
  def on_irange(node); end
  def on_ivar(node); end
  def on_ivasgn(node); end
  def on_kwarg(node); end
  def on_kwbegin(node); end
  def on_kwoptarg(node); end
  def on_kwrestarg(node); end
  def on_kwsplat(node); end
  def on_lambda(node); end
  def on_lvar(node); end
  def on_lvasgn(node); end
  def on_masgn(node); end
  def on_match_alt(node); end
  def on_match_as(node); end
  def on_match_current_line(node); end
  def on_match_rest(node); end
  def on_match_var(node); end
  def on_match_with_lvasgn(node); end
  def on_mlhs(node); end
  def on_module(node); end
  def on_mrasgn(node); end
  def on_next(node); end
  def on_not(node); end
  def on_nth_ref(node); end
  def on_numblock(node); end
  def on_op_asgn(node); end
  def on_optarg(node); end
  def on_or(node); end
  def on_or_asgn(node); end
  def on_pair(node); end
  def on_pin(node); end
  def on_postexe(node); end
  def on_preexe(node); end
  def on_procarg0(node); end
  def on_rasgn(node); end
  def on_redo(node); end
  def on_regexp(node); end
  def on_resbody(node); end
  def on_rescue(node); end
  def on_restarg(node); end
  def on_restarg_expr(node); end
  def on_retry(node); end
  def on_return(node); end
  def on_sclass(node); end
  def on_send(node); end
  def on_shadowarg(node); end
  def on_splat(node); end
  def on_super(node); end
  def on_undef(node); end
  def on_unless_guard(node); end
  def on_until(node); end
  def on_until_post(node); end
  def on_var(node); end
  def on_vasgn(node); end
  def on_when(node); end
  def on_while(node); end
  def on_while_post(node); end
  def on_xstr(node); end
  def on_yield(node); end
  def process_argument_node(node); end
  def process_regular_node(node); end
  def process_var_asgn_node(node); end
  def process_variable_node(node); end
end
module Parser::Meta
end
module Parser::Source
end
class Parser::Source::Buffer
  def column_for_position(position); end
  def decompose_position(position); end
  def first_line; end
  def initialize(name, first_line = nil, source: nil); end
  def last_line; end
  def line_begins; end
  def line_for(position); end
  def line_for_position(position); end
  def line_range(lineno); end
  def name; end
  def raw_source=(input); end
  def read; end
  def self.recognize_encoding(string); end
  def self.reencode_string(input); end
  def slice(range); end
  def source; end
  def source=(input); end
  def source_line(lineno); end
  def source_lines; end
  def source_range; end
end
class Parser::Source::Range
  def <=>(other); end
  def adjust(begin_pos: nil, end_pos: nil); end
  def begin; end
  def begin_pos; end
  def column; end
  def column_range; end
  def contained?(other); end
  def contains?(other); end
  def crossing?(other); end
  def disjoint?(other); end
  def empty?; end
  def end; end
  def end_pos; end
  def eql?(arg0); end
  def first_line; end
  def hash; end
  def initialize(source_buffer, begin_pos, end_pos); end
  def inspect; end
  def intersect(other); end
  def is?(*what); end
  def join(other); end
  def last_column; end
  def last_line; end
  def length; end
  def line; end
  def overlaps?(other); end
  def resize(new_size); end
  def size; end
  def source; end
  def source_buffer; end
  def source_line; end
  def to_a; end
  def to_range; end
  def to_s; end
  def with(begin_pos: nil, end_pos: nil); end
  include Comparable
end
class Parser::Source::Comment
  def ==(other); end
  def document?; end
  def initialize(range); end
  def inline?; end
  def inspect; end
  def loc; end
  def location; end
  def self.associate(ast, comments); end
  def self.associate_locations(ast, comments); end
  def text; end
  def type; end
end
class Parser::Source::Comment::Associator
  def advance_comment; end
  def advance_through_directives; end
  def associate; end
  def associate_and_advance_comment(node); end
  def associate_locations; end
  def children_in_source_order(node); end
  def current_comment_before?(node); end
  def current_comment_before_end?(node); end
  def current_comment_decorates?(node); end
  def do_associate; end
  def initialize(ast, comments); end
  def process_leading_comments(node); end
  def process_trailing_comments(node); end
  def skip_directives; end
  def skip_directives=(arg0); end
  def visit(node); end
end
class Parser::Source::Rewriter
  def active_clobber; end
  def active_clobber=(value); end
  def active_insertions; end
  def active_insertions=(value); end
  def active_queue; end
  def adjacent?(range1, range2); end
  def adjacent_insertion_mask(range); end
  def adjacent_insertions?(range); end
  def adjacent_position_mask(range); end
  def adjacent_updates?(range); end
  def append(action); end
  def can_merge?(action, existing); end
  def clobbered_insertion?(insertion); end
  def clobbered_position_mask(range); end
  def diagnostics; end
  def in_transaction?; end
  def initialize(source_buffer); end
  def insert_after(range, content); end
  def insert_after_multi(range, content); end
  def insert_before(range, content); end
  def insert_before_multi(range, content); end
  def merge_actions!(action, existing); end
  def merge_actions(action, existing); end
  def merge_replacements(actions); end
  def process; end
  def raise_clobber_error(action, existing); end
  def record_insertion(range); end
  def record_replace(range); end
  def remove(range); end
  def replace(range, content); end
  def replace_actions(old, updated); end
  def replace_compatible_with_insertion?(replace, insertion); end
  def source_buffer; end
  def transaction; end
  def wrap(range, before, after); end
  extend Parser::Deprecation
end
class Parser::Source::Rewriter::Action
  def <=>(other); end
  def allow_multiple_insertions; end
  def allow_multiple_insertions?; end
  def initialize(range, replacement = nil, allow_multiple_insertions = nil, order = nil); end
  def order; end
  def range; end
  def replacement; end
  def to_s; end
  include Comparable
end
class Parser::Source::TreeRewriter
  def action_root; end
  def check_policy_validity; end
  def check_range_validity(range); end
  def combine(range, attributes); end
  def diagnostics; end
  def empty?; end
  def enforce_policy(event); end
  def in_transaction?; end
  def initialize(source_buffer, crossing_deletions: nil, different_replacements: nil, swallowed_insertions: nil); end
  def insert_after(range, content); end
  def insert_after_multi(range, text); end
  def insert_before(range, content); end
  def insert_before_multi(range, text); end
  def merge!(with); end
  def merge(with); end
  def process; end
  def remove(range); end
  def replace(range, content); end
  def source_buffer; end
  def transaction; end
  def trigger_policy(event, range: nil, conflict: nil, **arguments); end
  def wrap(range, insert_before, insert_after); end
  extend Parser::Deprecation
end
class Parser::Source::TreeRewriter::Action
  def analyse_hierarchy(action); end
  def bsearch_child_index(from = nil); end
  def call_enforcer_for_merge(action); end
  def check_fusible(action, *fusible); end
  def children; end
  def combine(action); end
  def combine_children(more_children); end
  def do_combine(action); end
  def empty?; end
  def fuse_deletions(action, fusible, other_sibblings); end
  def initialize(range, enforcer, insert_before: nil, replacement: nil, insert_after: nil, children: nil); end
  def insert_after; end
  def insert_before; end
  def insertion?; end
  def merge(action); end
  def ordered_replacements; end
  def place_in_hierarchy(action); end
  def range; end
  def replacement; end
  def swallow(children); end
  def with(range: nil, enforcer: nil, children: nil, insert_before: nil, replacement: nil, insert_after: nil); end
end
class Parser::Source::Map
  def ==(other); end
  def column; end
  def expression; end
  def first_line; end
  def initialize(expression); end
  def initialize_copy(other); end
  def last_column; end
  def last_line; end
  def line; end
  def node; end
  def node=(node); end
  def to_hash; end
  def update_expression(expression_l); end
  def with(&block); end
  def with_expression(expression_l); end
end
class Parser::Source::Map::Operator < Parser::Source::Map
  def initialize(operator, expression); end
  def operator; end
end
class Parser::Source::Map::Collection < Parser::Source::Map
  def begin; end
  def end; end
  def initialize(begin_l, end_l, expression_l); end
end
class Parser::Source::Map::Constant < Parser::Source::Map
  def double_colon; end
  def initialize(double_colon, name, expression); end
  def name; end
  def operator; end
  def update_operator(operator_l); end
  def with_operator(operator_l); end
end
class Parser::Source::Map::Variable < Parser::Source::Map
  def initialize(name_l, expression_l = nil); end
  def name; end
  def operator; end
  def update_operator(operator_l); end
  def with_operator(operator_l); end
end
class Parser::Source::Map::Keyword < Parser::Source::Map
  def begin; end
  def end; end
  def initialize(keyword_l, begin_l, end_l, expression_l); end
  def keyword; end
end
class Parser::Source::Map::Definition < Parser::Source::Map
  def end; end
  def initialize(keyword_l, operator_l, name_l, end_l); end
  def keyword; end
  def name; end
  def operator; end
end
class Parser::Source::Map::EndlessDefinition < Parser::Source::Map
  def assignment; end
  def initialize(keyword_l, operator_l, name_l, assignment_l, body_l); end
  def keyword; end
  def name; end
  def operator; end
end
class Parser::Source::Map::Send < Parser::Source::Map
  def begin; end
  def dot; end
  def end; end
  def initialize(dot_l, selector_l, begin_l, end_l, expression_l); end
  def operator; end
  def selector; end
  def update_operator(operator_l); end
  def with_operator(operator_l); end
end
class Parser::Source::Map::Index < Parser::Source::Map
  def begin; end
  def end; end
  def initialize(begin_l, end_l, expression_l); end
  def operator; end
  def update_operator(operator_l); end
  def with_operator(operator_l); end
end
class Parser::Source::Map::Condition < Parser::Source::Map
  def begin; end
  def else; end
  def end; end
  def initialize(keyword_l, begin_l, else_l, end_l, expression_l); end
  def keyword; end
end
class Parser::Source::Map::Ternary < Parser::Source::Map
  def colon; end
  def initialize(question_l, colon_l, expression_l); end
  def question; end
end
class Parser::Source::Map::For < Parser::Source::Map
  def begin; end
  def end; end
  def in; end
  def initialize(keyword_l, in_l, begin_l, end_l, expression_l); end
  def keyword; end
end
class Parser::Source::Map::RescueBody < Parser::Source::Map
  def assoc; end
  def begin; end
  def initialize(keyword_l, assoc_l, begin_l, expression_l); end
  def keyword; end
end
class Parser::Source::Map::Heredoc < Parser::Source::Map
  def heredoc_body; end
  def heredoc_end; end
  def initialize(begin_l, body_l, end_l); end
end
class Parser::Source::Map::ObjcKwarg < Parser::Source::Map
  def argument; end
  def initialize(keyword_l, operator_l, argument_l, expression_l); end
  def keyword; end
  def operator; end
end
class Parser::SyntaxError < StandardError
  def diagnostic; end
  def initialize(diagnostic); end
end
class Parser::ClobberingError < RuntimeError
end
class Parser::Diagnostic
  def arguments; end
  def first_line_only(range); end
  def highlights; end
  def initialize(level, reason, arguments, location, highlights = nil); end
  def last_line_only(range); end
  def level; end
  def location; end
  def message; end
  def reason; end
  def render; end
  def render_line(range, ellipsis = nil, range_end = nil); end
end
class Parser::Diagnostic::Engine
  def all_errors_are_fatal; end
  def all_errors_are_fatal=(arg0); end
  def consumer; end
  def consumer=(arg0); end
  def ignore?(diagnostic); end
  def ignore_warnings; end
  def ignore_warnings=(arg0); end
  def initialize(consumer = nil); end
  def process(diagnostic); end
  def raise?(diagnostic); end
end
class Parser::StaticEnvironment
  def declare(name); end
  def declare_forward_args; end
  def declared?(name); end
  def declared_forward_args?; end
  def extend_dynamic; end
  def extend_static; end
  def initialize; end
  def reset; end
  def unextend; end
end
class Parser::Lexer
  def advance; end
  def arg_or_cmdarg(cmd_state); end
  def cmdarg; end
  def cmdarg=(arg0); end
  def command_start; end
  def command_start=(arg0); end
  def comments; end
  def comments=(arg0); end
  def cond; end
  def cond=(arg0); end
  def context; end
  def context=(arg0); end
  def dedent_level; end
  def diagnostic(type, reason, arguments = nil, location = nil, highlights = nil); end
  def diagnostics; end
  def diagnostics=(arg0); end
  def emit(type, value = nil, s = nil, e = nil); end
  def emit_comment(s = nil, e = nil); end
  def emit_do(do_block = nil); end
  def emit_table(table, s = nil, e = nil); end
  def encode_escape(ord); end
  def encoding; end
  def eof_codepoint?(point); end
  def force_utf32; end
  def force_utf32=(arg0); end
  def in_kwarg; end
  def in_kwarg=(arg0); end
  def initialize(version); end
  def literal; end
  def next_state_for_literal(literal); end
  def pop_cmdarg; end
  def pop_cond; end
  def pop_literal; end
  def push_cmdarg; end
  def push_cond; end
  def push_literal(*args); end
  def range(s = nil, e = nil); end
  def reset(reset_state = nil); end
  def self._lex_eof_trans; end
  def self._lex_eof_trans=(arg0); end
  def self._lex_from_state_actions; end
  def self._lex_from_state_actions=(arg0); end
  def self._lex_index_offsets; end
  def self._lex_index_offsets=(arg0); end
  def self._lex_indicies; end
  def self._lex_indicies=(arg0); end
  def self._lex_key_spans; end
  def self._lex_key_spans=(arg0); end
  def self._lex_to_state_actions; end
  def self._lex_to_state_actions=(arg0); end
  def self._lex_trans_actions; end
  def self._lex_trans_actions=(arg0); end
  def self._lex_trans_keys; end
  def self._lex_trans_keys=(arg0); end
  def self._lex_trans_targs; end
  def self._lex_trans_targs=(arg0); end
  def self.lex_en_expr_arg; end
  def self.lex_en_expr_arg=(arg0); end
  def self.lex_en_expr_beg; end
  def self.lex_en_expr_beg=(arg0); end
  def self.lex_en_expr_cmdarg; end
  def self.lex_en_expr_cmdarg=(arg0); end
  def self.lex_en_expr_dot; end
  def self.lex_en_expr_dot=(arg0); end
  def self.lex_en_expr_end; end
  def self.lex_en_expr_end=(arg0); end
  def self.lex_en_expr_endarg; end
  def self.lex_en_expr_endarg=(arg0); end
  def self.lex_en_expr_endfn; end
  def self.lex_en_expr_endfn=(arg0); end
  def self.lex_en_expr_fname; end
  def self.lex_en_expr_fname=(arg0); end
  def self.lex_en_expr_labelarg; end
  def self.lex_en_expr_labelarg=(arg0); end
  def self.lex_en_expr_mid; end
  def self.lex_en_expr_mid=(arg0); end
  def self.lex_en_expr_value; end
  def self.lex_en_expr_value=(arg0); end
  def self.lex_en_expr_variable; end
  def self.lex_en_expr_variable=(arg0); end
  def self.lex_en_interp_backslash_delimited; end
  def self.lex_en_interp_backslash_delimited=(arg0); end
  def self.lex_en_interp_backslash_delimited_words; end
  def self.lex_en_interp_backslash_delimited_words=(arg0); end
  def self.lex_en_interp_string; end
  def self.lex_en_interp_string=(arg0); end
  def self.lex_en_interp_words; end
  def self.lex_en_interp_words=(arg0); end
  def self.lex_en_leading_dot; end
  def self.lex_en_leading_dot=(arg0); end
  def self.lex_en_line_begin; end
  def self.lex_en_line_begin=(arg0); end
  def self.lex_en_line_comment; end
  def self.lex_en_line_comment=(arg0); end
  def self.lex_en_plain_backslash_delimited; end
  def self.lex_en_plain_backslash_delimited=(arg0); end
  def self.lex_en_plain_backslash_delimited_words; end
  def self.lex_en_plain_backslash_delimited_words=(arg0); end
  def self.lex_en_plain_string; end
  def self.lex_en_plain_string=(arg0); end
  def self.lex_en_plain_words; end
  def self.lex_en_plain_words=(arg0); end
  def self.lex_en_regexp_modifiers; end
  def self.lex_en_regexp_modifiers=(arg0); end
  def self.lex_error; end
  def self.lex_error=(arg0); end
  def self.lex_start; end
  def self.lex_start=(arg0); end
  def source_buffer; end
  def source_buffer=(source_buffer); end
  def stack_pop; end
  def state; end
  def state=(state); end
  def static_env; end
  def static_env=(arg0); end
  def tok(s = nil, e = nil); end
  def tokens; end
  def tokens=(arg0); end
  def version?(*versions); end
end
class Parser::Lexer::Literal
  def backslash_delimited?; end
  def clear_buffer; end
  def coerce_encoding(string); end
  def dedent_level; end
  def delimiter?(delimiter); end
  def emit(token, type, s, e); end
  def emit_start_tok; end
  def end_interp_brace_and_try_closing; end
  def extend_content; end
  def extend_space(ts, te); end
  def extend_string(string, ts, te); end
  def flush_string; end
  def heredoc?; end
  def heredoc_e; end
  def infer_indent_level(line); end
  def initialize(lexer, str_type, delimiter, str_s, heredoc_e = nil, indent = nil, dedent_body = nil, label_allowed = nil); end
  def interpolate?; end
  def munge_escape?(character); end
  def nest_and_try_closing(delimiter, ts, te, lookahead = nil); end
  def plain_heredoc?; end
  def regexp?; end
  def saved_herebody_s; end
  def saved_herebody_s=(arg0); end
  def squiggly_heredoc?; end
  def start_interp_brace; end
  def str_s; end
  def supports_line_continuation_via_slash?; end
  def type; end
  def words?; end
end
class Parser::Lexer::StackState
  def active?; end
  def clear; end
  def empty?; end
  def initialize(name); end
  def inspect; end
  def lexpop; end
  def pop; end
  def push(bit); end
  def to_s; end
end
class Parser::Lexer::Dedenter
  def dedent(string); end
  def initialize(dedent_level); end
  def interrupt; end
end
class Parser::Builders::Default
  def __ENCODING__(__ENCODING__t); end
  def __FILE__(__FILE__t); end
  def __LINE__(__LINE__t); end
  def accessible(node); end
  def alias(alias_t, to, from); end
  def arg(name_t); end
  def arg_expr(expr); end
  def arg_name_collides?(this_name, that_name); end
  def arg_prefix_map(op_t, name_t = nil); end
  def args(begin_t, args, end_t, check_args = nil); end
  def array(begin_t, elements, end_t); end
  def array_pattern(lbrack_t, elements, rbrack_t); end
  def assign(lhs, eql_t, rhs); end
  def assignable(node); end
  def associate(begin_t, pairs, end_t); end
  def attr_asgn(receiver, dot_t, selector_t); end
  def back_ref(token); end
  def begin(begin_t, body, end_t); end
  def begin_body(compound_stmt, rescue_bodies = nil, else_t = nil, else_ = nil, ensure_t = nil, ensure_ = nil); end
  def begin_keyword(begin_t, body, end_t); end
  def binary_op(receiver, operator_t, arg); end
  def binary_op_map(left_e, op_t, right_e); end
  def block(method_call, begin_t, args, body, end_t); end
  def block_map(receiver_l, begin_t, end_t); end
  def block_pass(amper_t, arg); end
  def blockarg(amper_t, name_t); end
  def blockarg_expr(amper_t, expr); end
  def call_lambda(lambda_t); end
  def call_method(receiver, dot_t, selector_t, lparen_t = nil, args = nil, rparen_t = nil); end
  def call_type_for_dot(dot_t); end
  def case(case_t, expr, when_bodies, else_t, else_body, end_t); end
  def case_match(case_t, expr, in_bodies, else_t, else_body, end_t); end
  def character(char_t); end
  def check_assignment_to_numparam(node); end
  def check_condition(cond); end
  def check_duplicate_arg(this_arg, map = nil); end
  def check_duplicate_args(args, map = nil); end
  def check_duplicate_pattern_key(name, loc); end
  def check_duplicate_pattern_variable(name, loc); end
  def check_lvar_name(name, loc); end
  def collapse_string_parts?(parts); end
  def collection_map(begin_t, parts, end_t); end
  def complex(complex_t); end
  def compstmt(statements); end
  def condition(cond_t, cond, then_t, if_true, else_t, if_false, end_t); end
  def condition_map(keyword_t, cond_e, begin_t, body_e, else_t, else_e, end_t); end
  def condition_mod(if_true, if_false, cond_t, cond); end
  def const(name_t); end
  def const_fetch(scope, t_colon2, name_t); end
  def const_global(t_colon3, name_t); end
  def const_op_assignable(node); end
  def const_pattern(const, ldelim_t, pattern, rdelim_t); end
  def constant_map(scope, colon2_t, name_t); end
  def cvar(token); end
  def dedent_string(node, dedent_level); end
  def def_class(class_t, name, lt_t, superclass, body, end_t); end
  def def_endless_method(def_t, name_t, args, assignment_t, body); end
  def def_endless_singleton(def_t, definee, dot_t, name_t, args, assignment_t, body); end
  def def_method(def_t, name_t, args, body, end_t); end
  def def_module(module_t, name, body, end_t); end
  def def_sclass(class_t, lshft_t, expr, body, end_t); end
  def def_singleton(def_t, definee, dot_t, name_t, args, body, end_t); end
  def definition_map(keyword_t, operator_t, name_t, end_t); end
  def delimited_string_map(string_t); end
  def diagnostic(type, reason, arguments, location, highlights = nil); end
  def eh_keyword_map(compstmt_e, keyword_t, body_es, else_t, else_e); end
  def emit_file_line_as_literals; end
  def emit_file_line_as_literals=(arg0); end
  def endless_definition_map(keyword_t, operator_t, name_t, assignment_t, body_e); end
  def expr_map(loc); end
  def false(false_t); end
  def float(float_t); end
  def for(for_t, iterator, in_t, iteratee, do_t, body, end_t); end
  def for_map(keyword_t, in_t, begin_t, end_t); end
  def forward_args(begin_t, dots_t, end_t); end
  def forwarded_args(dots_t); end
  def guard_map(keyword_t, guard_body_e); end
  def gvar(token); end
  def hash_pattern(lbrace_t, kwargs, rbrace_t); end
  def ident(token); end
  def if_guard(if_t, if_body); end
  def in_match(lhs, in_t, rhs); end
  def in_pattern(in_t, pattern, guard, then_t, body); end
  def index(receiver, lbrack_t, indexes, rbrack_t); end
  def index_asgn(receiver, lbrack_t, indexes, rbrack_t); end
  def index_map(receiver_e, lbrack_t, rbrack_t); end
  def initialize; end
  def integer(integer_t); end
  def ivar(token); end
  def join_exprs(left_expr, right_expr); end
  def keyword_cmd(type, keyword_t, lparen_t = nil, args = nil, rparen_t = nil); end
  def keyword_map(keyword_t, begin_t, args, end_t); end
  def keyword_mod_map(pre_e, keyword_t, post_e); end
  def kwarg(name_t); end
  def kwarg_map(name_t, value_e = nil); end
  def kwnilarg(dstar_t, nil_t); end
  def kwoptarg(name_t, value); end
  def kwrestarg(dstar_t, name_t = nil); end
  def kwsplat(dstar_t, arg); end
  def loc(token); end
  def logical_op(type, lhs, op_t, rhs); end
  def loop(type, keyword_t, cond, do_t, body, end_t); end
  def loop_mod(type, body, keyword_t, cond); end
  def match_alt(left, pipe_t, right); end
  def match_as(value, assoc_t, as); end
  def match_hash_var(name_t); end
  def match_hash_var_from_str(begin_t, strings, end_t); end
  def match_label(label_type, label); end
  def match_nil_pattern(dstar_t, nil_t); end
  def match_op(receiver, match_t, arg); end
  def match_pair(label_type, label, value); end
  def match_rest(star_t, name_t = nil); end
  def match_var(name_t); end
  def match_with_trailing_comma(match, comma_t); end
  def module_definition_map(keyword_t, name_e, operator_t, end_t); end
  def multi_assign(lhs, eql_t, rhs); end
  def multi_lhs(begin_t, items, end_t); end
  def multi_rassign(lhs, assoc_t, rhs); end
  def n(type, children, source_map); end
  def n0(type, source_map); end
  def nil(nil_t); end
  def not_op(not_t, begin_t = nil, receiver = nil, end_t = nil); end
  def nth_ref(token); end
  def numargs(max_numparam); end
  def numeric(kind, token); end
  def objc_kwarg(kwname_t, assoc_t, name_t); end
  def objc_restarg(star_t, name = nil); end
  def objc_varargs(pair, rest_of_varargs); end
  def op_assign(lhs, op_t, rhs); end
  def optarg(name_t, eql_t, value); end
  def pair(key, assoc_t, value); end
  def pair_keyword(key_t, value); end
  def pair_keyword_map(key_t, value_e); end
  def pair_list_18(list); end
  def pair_quoted(begin_t, parts, end_t, value); end
  def pair_quoted_map(begin_t, end_t, value_e); end
  def parser; end
  def parser=(arg0); end
  def pin(pin_t, var); end
  def postexe(postexe_t, lbrace_t, compstmt, rbrace_t); end
  def preexe(preexe_t, lbrace_t, compstmt, rbrace_t); end
  def prefix_string_map(symbol); end
  def procarg0(arg); end
  def range_exclusive(lhs, dot3_t, rhs); end
  def range_inclusive(lhs, dot2_t, rhs); end
  def range_map(start_e, op_t, end_e); end
  def rassign(lhs, assoc_t, rhs); end
  def rational(rational_t); end
  def regexp_compose(begin_t, parts, end_t, options); end
  def regexp_map(begin_t, end_t, options_e); end
  def regexp_options(regopt_t); end
  def rescue_body(rescue_t, exc_list, assoc_t, exc_var, then_t, compound_stmt); end
  def rescue_body_map(keyword_t, exc_list_e, assoc_t, exc_var_e, then_t, compstmt_e); end
  def restarg(star_t, name_t = nil); end
  def restarg_expr(star_t, expr = nil); end
  def self(token); end
  def self.emit_arg_inside_procarg0; end
  def self.emit_arg_inside_procarg0=(arg0); end
  def self.emit_encoding; end
  def self.emit_encoding=(arg0); end
  def self.emit_index; end
  def self.emit_index=(arg0); end
  def self.emit_lambda; end
  def self.emit_lambda=(arg0); end
  def self.emit_procarg0; end
  def self.emit_procarg0=(arg0); end
  def self.modernize; end
  def send_binary_op_map(lhs_e, selector_t, rhs_e); end
  def send_index_map(receiver_e, lbrack_t, rbrack_t); end
  def send_map(receiver_e, dot_t, selector_t, begin_t = nil, args = nil, end_t = nil); end
  def send_unary_op_map(selector_t, arg_e); end
  def shadowarg(name_t); end
  def splat(star_t, arg = nil); end
  def static_regexp(parts, options); end
  def static_regexp_node(node); end
  def static_string(nodes); end
  def string(string_t); end
  def string_compose(begin_t, parts, end_t); end
  def string_internal(string_t); end
  def string_map(begin_t, parts, end_t); end
  def string_value(token); end
  def symbol(symbol_t); end
  def symbol_compose(begin_t, parts, end_t); end
  def symbol_internal(symbol_t); end
  def symbols_compose(begin_t, parts, end_t); end
  def ternary(cond, question_t, if_true, colon_t, if_false); end
  def ternary_map(begin_e, question_t, mid_e, colon_t, end_e); end
  def token_map(token); end
  def true(true_t); end
  def unary_num(unary_t, numeric); end
  def unary_op(op_t, receiver); end
  def unary_op_map(op_t, arg_e = nil); end
  def undef_method(undef_t, names); end
  def unless_guard(unless_t, unless_body); end
  def unquoted_map(token); end
  def validate_definee(definee); end
  def value(token); end
  def var_send_map(variable_e); end
  def variable_map(name_t); end
  def when(when_t, patterns, then_t, body); end
  def word(parts); end
  def words_compose(begin_t, parts, end_t); end
  def xstring_compose(begin_t, parts, end_t); end
end
class Parser::Context
  def class_definition_allowed?; end
  def dynamic_const_definition_allowed?; end
  def in_block?; end
  def in_class?; end
  def in_dynamic_block?; end
  def in_lambda?; end
  def indirectly_in_def?; end
  def initialize; end
  def module_definition_allowed?; end
  def pop; end
  def push(state); end
  def reset; end
  def stack; end
end
class Parser::MaxNumparamStack
  def has_numparams?; end
  def has_ordinary_params!; end
  def has_ordinary_params?; end
  def initialize; end
  def pop; end
  def push; end
  def register(numparam); end
  def set(value); end
  def stack; end
  def top; end
end
class Parser::CurrentArgStack
  def initialize; end
  def pop; end
  def push(value); end
  def reset; end
  def set(value); end
  def stack; end
  def top; end
end
class Parser::VariablesStack
  def declare(name); end
  def declared?(name); end
  def initialize; end
  def pop; end
  def push; end
  def reset; end
end
class Parser::Base < Racc::Parser
  def builder; end
  def check_kwarg_name(name_t); end
  def context; end
  def current_arg_stack; end
  def diagnostic(level, reason, arguments, location_t, highlights_ts = nil); end
  def diagnostics; end
  def initialize(builder = nil); end
  def max_numparam_stack; end
  def next_token; end
  def on_error(error_token_id, error_value, value_stack); end
  def parse(source_buffer); end
  def parse_with_comments(source_buffer); end
  def pattern_hash_keys; end
  def pattern_variables; end
  def reset; end
  def self.default_parser; end
  def self.parse(string, file = nil, line = nil); end
  def self.parse_file(filename); end
  def self.parse_file_with_comments(filename); end
  def self.parse_with_comments(string, file = nil, line = nil); end
  def self.setup_source_buffer(file, line, string, encoding); end
  def source_buffer; end
  def static_env; end
  def tokenize(source_buffer, recover = nil); end
end
class Parser::Rewriter < Parser::AST::Processor
  def assignment?(node); end
  def initialize(*arg0); end
  def insert_after(range, content); end
  def insert_before(range, content); end
  def remove(range); end
  def replace(range, content); end
  def rewrite(source_buffer, ast); end
  def wrap(range, before, after); end
  extend Parser::Deprecation
end
class Parser::TreeRewriter < Parser::AST::Processor
  def assignment?(node); end
  def insert_after(range, content); end
  def insert_before(range, content); end
  def remove(range); end
  def replace(range, content); end
  def rewrite(source_buffer, ast, **policy); end
  def wrap(range, before, after); end
end
module Parser::Builders
end
