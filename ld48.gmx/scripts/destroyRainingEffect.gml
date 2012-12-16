if (object_exists(rainEffect))
        {
            with(rainEffect)
            {
                if (part_system_exists(rain))
            {
                part_system_destroy(rainEffect.rain);
            }
    }
   
}
