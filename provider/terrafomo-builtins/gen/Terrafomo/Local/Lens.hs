-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude    #-}
{-# LANGUAGE UndecidableInstances #-}

-- |
-- Module      : Terrafomo.Local.Lens
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Local.Lens
    (
    -- * Overloaded Fields
    -- ** Arguments
      HasContent (..)
    , HasSensitiveContent (..)
    , HasFilename (..)

    -- ** Computed Attributes
    , HasComputedContent (..)
    ) where

import GHC.Base ((.))

import qualified Lens.Micro       as P
import qualified Terrafomo.Schema as TF

class HasContent a b | a -> b where
    content :: P.Lens' a b

instance HasContent a b => HasContent (TF.Schema l p a) b where
    content = TF.configuration . content

class HasSensitiveContent a b | a -> b where
    sensitiveContent :: P.Lens' a b

instance HasSensitiveContent a b => HasSensitiveContent (TF.Schema l p a) b where
    sensitiveContent = TF.configuration . sensitiveContent

class HasFilename a b | a -> b where
    filename :: P.Lens' a b

instance HasFilename a b => HasFilename (TF.Schema l p a) b where
    filename = TF.configuration . filename

class HasComputedContent a b | a -> b where
    computedContent :: a -> b