defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna([]), do: []

  def to_rna([head | tail]) do
    rna_map = %{
      ?A => ?U,
      ?C => ?G,
      ?T => ?A,
      ?G => ?C
    }

    [rna_map[head] | to_rna(tail)]
  end
end
