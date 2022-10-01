# This is an autogenerated file for dynamic methods in Blazer::Query
# Please rerun bundle exec rake rails_rbi:models[Blazer::Query] to regenerate.

# typed: strong
module Blazer::Query::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Blazer::Query::GeneratedAttributeMethods
  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(T.nilable(Integer)) }
  def creator_id; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def creator_id=(value); end

  sig { returns(T::Boolean) }
  def creator_id?; end

  sig { returns(T.nilable(String)) }
  def data_source; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def data_source=(value); end

  sig { returns(T::Boolean) }
  def data_source?; end

  sig { returns(T.nilable(String)) }
  def description; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def description=(value); end

  sig { returns(T::Boolean) }
  def description?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(T.nilable(String)) }
  def name; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def name=(value); end

  sig { returns(T::Boolean) }
  def name?; end

  sig { returns(String) }
  def statement; end

  sig { params(value: T.any(String, Symbol)).void }
  def statement=(value); end

  sig { returns(T::Boolean) }
  def statement?; end

  sig { returns(T.nilable(String)) }
  def status; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def status=(value); end

  sig { returns(T::Boolean) }
  def status?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module Blazer::Query::GeneratedAssociationMethods
  sig { returns(::Blazer::Audit::ActiveRecord_Associations_CollectionProxy) }
  def audits; end

  sig { returns(T::Array[Integer]) }
  def audit_ids; end

  sig { params(value: T::Enumerable[::Blazer::Audit]).void }
  def audits=(value); end

  sig { returns(::Blazer::Check::ActiveRecord_Associations_CollectionProxy) }
  def checks; end

  sig { returns(T::Array[Integer]) }
  def check_ids; end

  sig { params(value: T::Enumerable[::Blazer::Check]).void }
  def checks=(value); end

  sig { returns(T.nilable(::User)) }
  def creator; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def build_creator(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def create_creator(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def create_creator!(*args, &block); end

  sig { params(value: T.nilable(::User)).void }
  def creator=(value); end

  sig { returns(T.nilable(::User)) }
  def reload_creator; end

  sig { returns(::Blazer::DashboardQuery::ActiveRecord_Associations_CollectionProxy) }
  def dashboard_queries; end

  sig { returns(T::Array[Integer]) }
  def dashboard_query_ids; end

  sig { params(value: T::Enumerable[::Blazer::DashboardQuery]).void }
  def dashboard_queries=(value); end

  sig { returns(::Blazer::Dashboard::ActiveRecord_Associations_CollectionProxy) }
  def dashboards; end

  sig { returns(T::Array[Integer]) }
  def dashboard_ids; end

  sig { params(value: T::Enumerable[::Blazer::Dashboard]).void }
  def dashboards=(value); end
end

module Blazer::Query::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Blazer::Query]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Blazer::Query]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Blazer::Query]) }
  def find_n(*args); end

  sig { params(id: T.nilable(Integer)).returns(T.nilable(Blazer::Query)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Blazer::Query) }
  def find_by_id!(id); end
end

class Blazer::Query < Blazer::Record
  include Blazer::Query::GeneratedAttributeMethods
  include Blazer::Query::GeneratedAssociationMethods
  extend Blazer::Query::CustomFinderMethods
  extend Blazer::Query::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Blazer::Query::ActiveRecord_Relation, Blazer::Query::ActiveRecord_Associations_CollectionProxy, Blazer::Query::ActiveRecord_AssociationRelation) }

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def self.active(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def self.named(*args); end

  sig { params(num: T.nilable(Integer)).returns(Blazer::Query::ActiveRecord_Relation) }
  def self.page(num = nil); end

  sig { params(num: Integer, max_per_page: T.nilable(Integer)).returns(Blazer::Query::ActiveRecord_Relation) }
  def self.per(num, max_per_page = nil); end

  sig { params(num: Integer).returns(Blazer::Query::ActiveRecord_Relation) }
  def self.padding(num); end

  sig { returns(Integer) }
  def self.default_per_page; end
end

class Blazer::Query::ActiveRecord_Relation < ActiveRecord::Relation
  include Blazer::Query::ActiveRelation_WhereNot
  include Blazer::Query::CustomFinderMethods
  include Blazer::Query::QueryMethodsReturningRelation
  Elem = type_member {{fixed: Blazer::Query}}

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def active(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def named(*args); end

  sig { params(num: T.nilable(Integer)).returns(Blazer::Query::ActiveRecord_Relation) }
  def page(num = nil); end

  sig { params(num: Integer, max_per_page: T.nilable(Integer)).returns(Blazer::Query::ActiveRecord_Relation) }
  def per(num, max_per_page = nil); end

  sig { params(num: Integer).returns(Blazer::Query::ActiveRecord_Relation) }
  def padding(num); end

  sig { returns(T::Boolean) }
  def last_page?; end
end

class Blazer::Query::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Blazer::Query::ActiveRelation_WhereNot
  include Blazer::Query::CustomFinderMethods
  include Blazer::Query::QueryMethodsReturningAssociationRelation
  Elem = type_member {{fixed: Blazer::Query}}

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def active(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def named(*args); end

  sig { params(num: T.nilable(Integer)).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def page(num = nil); end

  sig { params(num: Integer, max_per_page: T.nilable(Integer)).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def per(num, max_per_page = nil); end

  sig { params(num: Integer).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def padding(num); end

  sig { returns(T::Boolean) }
  def last_page?; end
end

class Blazer::Query::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Blazer::Query::CustomFinderMethods
  include Blazer::Query::QueryMethodsReturningAssociationRelation
  Elem = type_member {{fixed: Blazer::Query}}

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def active(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def named(*args); end

  sig { params(records: T.any(Blazer::Query, T::Array[Blazer::Query])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Blazer::Query, T::Array[Blazer::Query])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Blazer::Query, T::Array[Blazer::Query])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Blazer::Query, T::Array[Blazer::Query])).returns(T.self_type) }
  def concat(*records); end

  sig { params(num: T.nilable(Integer)).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def page(num = nil); end

  sig { params(num: Integer, max_per_page: T.nilable(Integer)).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def per(num, max_per_page = nil); end

  sig { params(num: Integer).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def padding(num); end

  sig { returns(T::Boolean) }
  def last_page?; end
end

module Blazer::Query::QueryMethodsReturningRelation
  sig { returns(Blazer::Query::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Blazer::Query::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: Blazer::Query).returns(T::Boolean)).returns(T::Array[Blazer::Query]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(Blazer::Query::ActiveRecord_Relation) }
  def select_columns(*args); end

  sig { params(args: Symbol).returns(Blazer::Query::ActiveRecord_Relation) }
  def where_missing(*args); end

  sig { params(column: Symbol, values: T::Array[T.untyped]).returns(Blazer::Query::ActiveRecord_Relation) }
  def in_order_of(column, values); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Blazer::Query::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Blazer::Query::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module Blazer::Query::QueryMethodsReturningAssociationRelation
  sig { returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Blazer::Query::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: Blazer::Query).returns(T::Boolean)).returns(T::Array[Blazer::Query]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def select_columns(*args); end

  sig { params(args: Symbol).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def where_missing(*args); end

  sig { params(column: Symbol, values: T::Array[T.untyped]).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def in_order_of(column, values); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Blazer::Query::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Blazer::Query::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end
