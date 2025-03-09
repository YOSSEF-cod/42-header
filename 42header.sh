#!/bin/bash

# Get the filename
FILE_NAME=$(basename "$1")

# Get the login (42 login or system username)
LOGIN=${USER}

# Get the date
DATE=$(date "+%Y/%m/%d %H:%M:%S")

HEADER="/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   $FILE_NAME                                          :+:      :+:    :+:  */
/*                                                    +:+ +:+         +:+     */
/*   By: $LOGIN <email@example.com>                +#+  +:+       +#+         */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: $DATE by $LOGIN                        #+#    #+#               */
/*   Updated: $DATE by $LOGIN                       ###   ########.fr         */
/*                                                                            */
/* ************************************************************************** */"

# Insert header at the beginning of the file
echo "$HEADER" | cat - "$1" > temp && mv temp "$1"
