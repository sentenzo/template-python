import asyncio
from time import sleep

import pytest


def test__true_is_true(always_true: bool) -> None:
    assert always_true


@pytest.mark.slow
def test__true_is_true_for_real(always_true: bool) -> None:
    sleep(1)
    assert always_true


async def test_a_true_is_true(always_true: bool) -> None:
    assert always_true


@pytest.mark.slow
async def test_a_true_is_true_for_real(always_true: bool) -> None:
    await asyncio.sleep(1)
    assert always_true
