import Control.Applicative
import Control.Monad.Trans.Except
import Data.Functor.Identity
import Data.Monoid

data Foo = Foo

instance Monoid Foo where
    mempty = Foo
    mappend _ _ = Foo

newtype Bar a = Bar { unBar :: ExceptT Foo Identity a }
  deriving (Functor, Applicative, Monad, Alternative)
