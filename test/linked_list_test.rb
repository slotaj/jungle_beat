require 'linked_list'

class LinkedListTest < Minitest::Test

  def test_it_connects
    node = LinkedList.new("test")
    assert_equal "test", node.head.data
  end

  def test_heads_next_node_is_null
    node = LinkedList.new("test_nil")
    assert_equal nil, node.head.next_node
  end

  def test_it_accepts_zero_data
    node = LinkedList.new(nil)
    assert_equal nil, node.head.data
  end

  def test_it_knows_the_tail
    node = LinkedList.new("tail")
    assert_equal "tail", node.tail.data
  end

  def test_it_gets_tail_data
    node = LinkedList.new("tail")
    assert_equal "tail", node.tail_data
  end

  def test_it_gets_head_data
    node = LinkedList.new("head")
    assert_equal "head", node.head_data
  end

  def test_it_appends
    node = LinkedList.new("new tail")
    node.append("reddit")
    assert_equal "reddit", node.tail_data
  end

  def test_it_prepends
    node = LinkedList.new("head")
    node.prepends("new first head")
    assert_equal "new first head", node.head_data
  end

  def test_it_inserts
    node = LinkedList.new("head")
    node.append("jersey mike")
    node.insert("tangarang", 1)
    node.insert("hola", 1)
    assert_equal "jersey mike", node.tail_data
  end

  def test_it_lists_them_all
    node = LinkedList.new("first node")
    node.append("jersey mike second node")
    node.append("tangarang third node")
    assert_equal "first node jersey mike second node tangarang third node", node.all
  end

  def test_inserts_in_a_kewler_way
    node = LinkedList.new("head")
    node.append("jersey mike")
    node.insert("tangarang", 1)
    node.insert("hola", 1)
    assert_equal "head hola tangarang jersey mike", node.all
  end

  def test_what_if_we_insert_at_zero
    node = LinkedList.new("head_second")
    node.append("jersey mike")
    node.insert("hola", 0)
    assert_equal "hola head_second jersey mike", node.all
  end

  def test_lets_insert_at_the_end
    node = LinkedList.new("head")
    node.append("jersey mike")
    node.insert("tail", 2)
    assert_equal "head jersey mike tail", node.all
  end

  def test_does_it_include?
    node = LinkedList.new("head")
    node.append("jersey mike")
    node.insert("tail", 1)
    assert_equal true, node.includes?("tail")
  end

  def test_its_a_liar?
    node = LinkedList.new("head")
    node.append("jersey mike")
    node.insert("tail", 1)
    assert_equal false, node.includes?("Raiders Rule")
  end

  def test_it_knows_the_count
    node = LinkedList.new("head")
    node.append("jersey")
    node.insert("tail", 1)
    assert_equal 3, node.count
  end

  def test_it_pops_a_lop
    node = LinkedList.new("head")
    node.append("jersey")
    node.append("tyler")
    node.append("john")
    assert_equal "john", node.pop
    assert_equal "tyler", node.tail_data
  end

  def test_it_finds_kewl_things
    node = LinkedList.new("head")
    node.append("second")
    node.append("third")
    assert_equal "second", node.find(1)
  end

end
