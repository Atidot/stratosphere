{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticfilesystem-filesystem-lifecyclepolicy.html

module Stratosphere.ResourceProperties.EFSFileSystemLifecyclePolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for EFSFileSystemLifecyclePolicy. See
-- 'efsFileSystemLifecyclePolicy' for a more convenient constructor.
data EFSFileSystemLifecyclePolicy =
  EFSFileSystemLifecyclePolicy
  { _eFSFileSystemLifecyclePolicyTransitionToIA :: Val Text
  } deriving (Show, Eq)

instance ToJSON EFSFileSystemLifecyclePolicy where
  toJSON EFSFileSystemLifecyclePolicy{..} =
    object $
    catMaybes
    [ (Just . ("TransitionToIA",) . toJSON) _eFSFileSystemLifecyclePolicyTransitionToIA
    ]

-- | Constructor for 'EFSFileSystemLifecyclePolicy' containing required fields
-- as arguments.
efsFileSystemLifecyclePolicy
  :: Val Text -- ^ 'efsfslpTransitionToIA'
  -> EFSFileSystemLifecyclePolicy
efsFileSystemLifecyclePolicy transitionToIAarg =
  EFSFileSystemLifecyclePolicy
  { _eFSFileSystemLifecyclePolicyTransitionToIA = transitionToIAarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticfilesystem-filesystem-lifecyclepolicy.html#cfn-elasticfilesystem-filesystem-lifecyclepolicy-transitiontoia
efsfslpTransitionToIA :: Lens' EFSFileSystemLifecyclePolicy (Val Text)
efsfslpTransitionToIA = lens _eFSFileSystemLifecyclePolicyTransitionToIA (\s a -> s { _eFSFileSystemLifecyclePolicyTransitionToIA = a })
