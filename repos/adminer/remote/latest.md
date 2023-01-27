## `adminer:latest`

```console
$ docker pull adminer@sha256:c5d79d592a97648800516189e0ccb343353bea581825b5b93c2870217a8c1f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `adminer:latest` - linux; amd64

```console
$ docker pull adminer@sha256:2ca89c714c8adc4fa870c08198d72f51878039e6dfe974386e0a166814a24f55
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.9 MB (95900890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fed5dcb2cc13f128bce9fde1a99aa635e24eaa95e77033298e9c44e82e71e24f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:58:04 GMT
STOPSIGNAL SIGINT
# Wed, 11 Jan 2023 02:58:28 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y 		php7.4-cli 		php7.4-fpm 		php7.4-mbstring 		php7.4-mysql 		php7.4-odbc 		php7.4-pdo-dblib 		php7.4-pgsql 		php7.4-sqlite3 &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:58:28 GMT
RUN echo "upload_max_filesize = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "variables_order = \"EGPCS\"" >> /etc/php/7.4/cli/conf.d/0-env.ini &&	cp /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini /etc/php/7.4/fpm/conf.d/0-upload_large_dumps.ini
# Wed, 11 Jan 2023 02:58:29 GMT
RUN groupadd -r adminer &&	useradd -r -g adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 11 Jan 2023 02:58:29 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 02:58:29 GMT
COPY multi:8e2583c31626149dac766c1e81b6ba87f4289e683e42823f52b952fbab069922 in /var/www/html/ 
# Wed, 11 Jan 2023 02:58:30 GMT
ENV ADMINER_VERSION=4.8.1
# Wed, 11 Jan 2023 02:58:30 GMT
ENV ADMINER_DOWNLOAD_SHA256=2fd7e6d8f987b243ab1839249551f62adce19704c47d3d0c8dd9e57ea5b9c6b3
# Wed, 11 Jan 2023 02:58:30 GMT
ENV ADMINER_COMMIT=1f173e18bdf0be29182e0d67989df56eadea4754
# Wed, 11 Jan 2023 02:58:42 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='git curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php" -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	git clone --recurse-submodules=designs --depth 1 --shallow-submodules --branch "v$ADMINER_VERSION" https://github.com/vrana/adminer.git /tmp/adminer &&	commit="$(git -C /tmp/adminer/ rev-parse HEAD)" &&	[ "$commit" = "$ADMINER_COMMIT" ] &&	cp -r /tmp/adminer/designs/ /tmp/adminer/plugins/ . &&	rm -rf /tmp/adminer/ &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 02:58:42 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 11 Jan 2023 02:58:42 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 02:58:42 GMT
USER adminer
# Wed, 11 Jan 2023 02:58:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 11 Jan 2023 02:58:43 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b968dccc7e1f4be9e1a535df953f06efddd40acbba207f00137628ba701438`  
		Last Modified: Wed, 11 Jan 2023 02:59:27 GMT  
		Size: 39.5 MB (39486184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd6d69793072538a45ff2c3868c8c885188564c192a7c1dd3b9c857a62ab04e`  
		Last Modified: Wed, 11 Jan 2023 02:59:19 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5694c6147308ec0c980896c76e1aed5ef69c35f81b02020307b3809dafc87eab`  
		Last Modified: Wed, 11 Jan 2023 02:59:19 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03ab2def1a968ffed6e8ec99195a29b4a6ab1f335bfee47f39ae37671da061b`  
		Last Modified: Wed, 11 Jan 2023 02:59:19 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd1cddd5008cb8eab7266f76bed86ee59538eebff3f0a0a6f7fd2b2951ea720`  
		Last Modified: Wed, 11 Jan 2023 02:59:20 GMT  
		Size: 1.4 MB (1385258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f49a2ac8ec9fce44010b42455bc8ed14515fca6cbc2d98e2e547880104f72ab`  
		Last Modified: Wed, 11 Jan 2023 02:59:19 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; arm variant v5

```console
$ docker pull adminer@sha256:7b2edd089ffb6906c31cb12686403a9799c8267c0c31c604ba5e06d360ef5101
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.2 MB (91166077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0908131f0ca7079b0fbbfbdf93d33cd3b49d1646d0dfab0a2eef3aae27e750ce`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:21 GMT
ADD file:37f880fde966ca6538f60068c4025b396f3e23cdf2cbc8d99c7ab2f6bb46a82d in / 
# Wed, 11 Jan 2023 01:55:22 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:19:08 GMT
STOPSIGNAL SIGINT
# Wed, 11 Jan 2023 02:19:39 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y 		php7.4-cli 		php7.4-fpm 		php7.4-mbstring 		php7.4-mysql 		php7.4-odbc 		php7.4-pdo-dblib 		php7.4-pgsql 		php7.4-sqlite3 &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:19:40 GMT
RUN echo "upload_max_filesize = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "variables_order = \"EGPCS\"" >> /etc/php/7.4/cli/conf.d/0-env.ini &&	cp /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini /etc/php/7.4/fpm/conf.d/0-upload_large_dumps.ini
# Wed, 11 Jan 2023 02:19:41 GMT
RUN groupadd -r adminer &&	useradd -r -g adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 11 Jan 2023 02:19:41 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 02:19:41 GMT
COPY multi:8e2583c31626149dac766c1e81b6ba87f4289e683e42823f52b952fbab069922 in /var/www/html/ 
# Wed, 11 Jan 2023 02:19:41 GMT
ENV ADMINER_VERSION=4.8.1
# Wed, 11 Jan 2023 02:19:41 GMT
ENV ADMINER_DOWNLOAD_SHA256=2fd7e6d8f987b243ab1839249551f62adce19704c47d3d0c8dd9e57ea5b9c6b3
# Wed, 11 Jan 2023 02:19:41 GMT
ENV ADMINER_COMMIT=1f173e18bdf0be29182e0d67989df56eadea4754
# Wed, 11 Jan 2023 02:19:57 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='git curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php" -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	git clone --recurse-submodules=designs --depth 1 --shallow-submodules --branch "v$ADMINER_VERSION" https://github.com/vrana/adminer.git /tmp/adminer &&	commit="$(git -C /tmp/adminer/ rev-parse HEAD)" &&	[ "$commit" = "$ADMINER_COMMIT" ] &&	cp -r /tmp/adminer/designs/ /tmp/adminer/plugins/ . &&	rm -rf /tmp/adminer/ &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 02:19:57 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 11 Jan 2023 02:19:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 02:19:57 GMT
USER adminer
# Wed, 11 Jan 2023 02:19:57 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 11 Jan 2023 02:19:57 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:07e0d63e97bf89a5c9e120008604cfeebc92d155c136c0f88685e1f70c16fd1a`  
		Last Modified: Wed, 11 Jan 2023 02:00:09 GMT  
		Size: 52.5 MB (52529956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b4009e413a9a86217e8b854a8850dbf62a1fa0b1c92749283586acf3714591`  
		Last Modified: Wed, 11 Jan 2023 02:21:09 GMT  
		Size: 37.2 MB (37246954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a51df24c052470acbb5d60a7bbbd6fe979a4798a37265d3c8e880e0278fb83`  
		Last Modified: Wed, 11 Jan 2023 02:21:00 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35686e3783a2c61e28efd2dbf4b1e59a0b673e98c8cffd78cf244d0ec7664e`  
		Last Modified: Wed, 11 Jan 2023 02:21:00 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b29a3b72bbb2ec0f28adebf4dcb0fcd07ffe8ad22bb2bcb04236248033f562`  
		Last Modified: Wed, 11 Jan 2023 02:21:00 GMT  
		Size: 1.5 KB (1480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4f1f0fd19136bca40b582eb7d07381abddbda7faaa97b5859d2703eca360ce`  
		Last Modified: Wed, 11 Jan 2023 02:21:00 GMT  
		Size: 1.4 MB (1384968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044d6064dbd7bff19011631f4f51bd6160f6e5cecd9c887890bd0e45c81afea5`  
		Last Modified: Wed, 11 Jan 2023 02:20:59 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; arm variant v7

```console
$ docker pull adminer@sha256:437107228ad60f45b55604f2338ab10034da43ba2fb0086e346b6f1342846c9a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87762924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd9fd923e82368ee3bb2b57ed89ca75c98a41a6752d1b966511808f7b4c16a3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:17 GMT
ADD file:48f6407691a382c3ad731f05f78d4210efd40f1a00abfd6c043d8401c6ca1811 in / 
# Wed, 11 Jan 2023 04:00:18 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:27:48 GMT
STOPSIGNAL SIGINT
# Wed, 11 Jan 2023 04:28:12 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y 		php7.4-cli 		php7.4-fpm 		php7.4-mbstring 		php7.4-mysql 		php7.4-odbc 		php7.4-pdo-dblib 		php7.4-pgsql 		php7.4-sqlite3 &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:28:13 GMT
RUN echo "upload_max_filesize = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "variables_order = \"EGPCS\"" >> /etc/php/7.4/cli/conf.d/0-env.ini &&	cp /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini /etc/php/7.4/fpm/conf.d/0-upload_large_dumps.ini
# Wed, 11 Jan 2023 04:28:13 GMT
RUN groupadd -r adminer &&	useradd -r -g adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 11 Jan 2023 04:28:13 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 04:28:14 GMT
COPY multi:8e2583c31626149dac766c1e81b6ba87f4289e683e42823f52b952fbab069922 in /var/www/html/ 
# Wed, 11 Jan 2023 04:28:14 GMT
ENV ADMINER_VERSION=4.8.1
# Wed, 11 Jan 2023 04:28:14 GMT
ENV ADMINER_DOWNLOAD_SHA256=2fd7e6d8f987b243ab1839249551f62adce19704c47d3d0c8dd9e57ea5b9c6b3
# Wed, 11 Jan 2023 04:28:14 GMT
ENV ADMINER_COMMIT=1f173e18bdf0be29182e0d67989df56eadea4754
# Wed, 11 Jan 2023 04:28:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='git curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php" -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	git clone --recurse-submodules=designs --depth 1 --shallow-submodules --branch "v$ADMINER_VERSION" https://github.com/vrana/adminer.git /tmp/adminer &&	commit="$(git -C /tmp/adminer/ rev-parse HEAD)" &&	[ "$commit" = "$ADMINER_COMMIT" ] &&	cp -r /tmp/adminer/designs/ /tmp/adminer/plugins/ . &&	rm -rf /tmp/adminer/ &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 04:28:27 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 11 Jan 2023 04:28:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 04:28:28 GMT
USER adminer
# Wed, 11 Jan 2023 04:28:28 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 11 Jan 2023 04:28:28 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:d705c97ea3a2300e9dda9a18ff662a98c2811b41147a15d4f4791f475ce8be47`  
		Last Modified: Wed, 11 Jan 2023 04:07:17 GMT  
		Size: 50.2 MB (50190808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a2b86347028efeeb6736d363a533c0b3250cdc022c20746b4c79c23bdf1774`  
		Last Modified: Wed, 11 Jan 2023 04:29:37 GMT  
		Size: 36.2 MB (36182880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581874ea0a70acb2b346c8fe65db2ed3667a5cf88f17983ae2b3e0837556165d`  
		Last Modified: Wed, 11 Jan 2023 04:29:27 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c9a5092cf50a2bd5703f215b7178860b342cb8f52c1b9aca602a6bc080d806`  
		Last Modified: Wed, 11 Jan 2023 04:29:27 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba24f7356d13859c57c120ee15ee8688e101ae8d522f73e589202c03a6a74419`  
		Last Modified: Wed, 11 Jan 2023 04:29:27 GMT  
		Size: 1.5 KB (1481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34e090ca20fcf19747328e0fb4c884227b25a7fe040388f542ee2d34aabf235`  
		Last Modified: Wed, 11 Jan 2023 04:29:28 GMT  
		Size: 1.4 MB (1385035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613b7766e8beeba0c21b97eebdd745f0f5de818652f99f1f699ae64f39765884`  
		Last Modified: Wed, 11 Jan 2023 04:29:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:33b31f6367b257aec29029015f34e4d4c3aba0223249b0ec0ab94c5b272a3454
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94313422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a2a815918b967b40749825676fcad9d42cdda2d48ca2c19b9896092bb2b028`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:20:03 GMT
STOPSIGNAL SIGINT
# Wed, 11 Jan 2023 03:20:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y 		php7.4-cli 		php7.4-fpm 		php7.4-mbstring 		php7.4-mysql 		php7.4-odbc 		php7.4-pdo-dblib 		php7.4-pgsql 		php7.4-sqlite3 &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:20:24 GMT
RUN echo "upload_max_filesize = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "variables_order = \"EGPCS\"" >> /etc/php/7.4/cli/conf.d/0-env.ini &&	cp /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini /etc/php/7.4/fpm/conf.d/0-upload_large_dumps.ini
# Wed, 11 Jan 2023 03:20:24 GMT
RUN groupadd -r adminer &&	useradd -r -g adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 11 Jan 2023 03:20:24 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 03:20:24 GMT
COPY multi:8e2583c31626149dac766c1e81b6ba87f4289e683e42823f52b952fbab069922 in /var/www/html/ 
# Wed, 11 Jan 2023 03:20:24 GMT
ENV ADMINER_VERSION=4.8.1
# Wed, 11 Jan 2023 03:20:25 GMT
ENV ADMINER_DOWNLOAD_SHA256=2fd7e6d8f987b243ab1839249551f62adce19704c47d3d0c8dd9e57ea5b9c6b3
# Wed, 11 Jan 2023 03:20:25 GMT
ENV ADMINER_COMMIT=1f173e18bdf0be29182e0d67989df56eadea4754
# Wed, 11 Jan 2023 03:20:36 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='git curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php" -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	git clone --recurse-submodules=designs --depth 1 --shallow-submodules --branch "v$ADMINER_VERSION" https://github.com/vrana/adminer.git /tmp/adminer &&	commit="$(git -C /tmp/adminer/ rev-parse HEAD)" &&	[ "$commit" = "$ADMINER_COMMIT" ] &&	cp -r /tmp/adminer/designs/ /tmp/adminer/plugins/ . &&	rm -rf /tmp/adminer/ &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 03:20:36 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 11 Jan 2023 03:20:36 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 03:20:36 GMT
USER adminer
# Wed, 11 Jan 2023 03:20:36 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 11 Jan 2023 03:20:36 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0673cb22ee782f0e393e20b7d4ef0fea647790d489bb2c51fadb9eda1008fa03`  
		Last Modified: Wed, 11 Jan 2023 03:21:16 GMT  
		Size: 39.2 MB (39242211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6498aa55a193ac51b290810479bef0486c212100bdd7f909a77c0f6128e9df`  
		Last Modified: Wed, 11 Jan 2023 03:21:08 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c099daf4ff9108013a5cc05b94114d179ce4f31a40501e02894715e2d9a689c6`  
		Last Modified: Wed, 11 Jan 2023 03:21:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71af41e6c42e99498daab81d27ba3df837516d7d96dcebb820fb344c90cd3af9`  
		Last Modified: Wed, 11 Jan 2023 03:21:08 GMT  
		Size: 1.5 KB (1476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d217cc7a40392444b89b0377e3745b3ff05e5c85d1539c35f01ef77096065c7`  
		Last Modified: Wed, 11 Jan 2023 03:21:09 GMT  
		Size: 1.4 MB (1385116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1add34fed9a2823ac956e7229c6e0c7534944c4e028cd8f877219455f9d4e2`  
		Last Modified: Wed, 11 Jan 2023 03:21:08 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; 386

```console
$ docker pull adminer@sha256:f71286dd853c11522d2eb5ee4dfa4e5f80a3744061880b14389dc78563a418bf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96953342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53ff8db55916405ff620a466e0b2d3957a2b229d607eaeaacfeb8de1fe99d23`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 11 Jan 2023 03:15:51 GMT
ADD file:92d8f809db3287489506ac143940f0e87d91ffd2d40c99318ab865e9fae1e6d4 in / 
# Wed, 11 Jan 2023 03:15:52 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:41:31 GMT
STOPSIGNAL SIGINT
# Wed, 11 Jan 2023 03:41:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y 		php7.4-cli 		php7.4-fpm 		php7.4-mbstring 		php7.4-mysql 		php7.4-odbc 		php7.4-pdo-dblib 		php7.4-pgsql 		php7.4-sqlite3 &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:41:53 GMT
RUN echo "upload_max_filesize = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "variables_order = \"EGPCS\"" >> /etc/php/7.4/cli/conf.d/0-env.ini &&	cp /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini /etc/php/7.4/fpm/conf.d/0-upload_large_dumps.ini
# Wed, 11 Jan 2023 03:41:54 GMT
RUN groupadd -r adminer &&	useradd -r -g adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 11 Jan 2023 03:41:55 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 03:41:57 GMT
COPY multi:8e2583c31626149dac766c1e81b6ba87f4289e683e42823f52b952fbab069922 in /var/www/html/ 
# Wed, 11 Jan 2023 03:41:57 GMT
ENV ADMINER_VERSION=4.8.1
# Wed, 11 Jan 2023 03:41:58 GMT
ENV ADMINER_DOWNLOAD_SHA256=2fd7e6d8f987b243ab1839249551f62adce19704c47d3d0c8dd9e57ea5b9c6b3
# Wed, 11 Jan 2023 03:41:59 GMT
ENV ADMINER_COMMIT=1f173e18bdf0be29182e0d67989df56eadea4754
# Wed, 11 Jan 2023 03:42:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='git curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php" -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	git clone --recurse-submodules=designs --depth 1 --shallow-submodules --branch "v$ADMINER_VERSION" https://github.com/vrana/adminer.git /tmp/adminer &&	commit="$(git -C /tmp/adminer/ rev-parse HEAD)" &&	[ "$commit" = "$ADMINER_COMMIT" ] &&	cp -r /tmp/adminer/designs/ /tmp/adminer/plugins/ . &&	rm -rf /tmp/adminer/ &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 03:42:15 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 11 Jan 2023 03:42:15 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 03:42:16 GMT
USER adminer
# Wed, 11 Jan 2023 03:42:17 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 11 Jan 2023 03:42:18 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:e322a78778338013392b4956017b1d3ad99541f9ce0749e46105a6a52ddfb637`  
		Last Modified: Wed, 11 Jan 2023 03:21:32 GMT  
		Size: 56.0 MB (56005290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b638c7a4a256ca5a01b739c6d4a893ebaf05b40779d54011db5aa21ae9d9330`  
		Last Modified: Wed, 11 Jan 2023 03:43:20 GMT  
		Size: 39.6 MB (39558519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526d6358e3e096fe517caf7792d005856e4c9062dbef805c8e1f3273f6eb2389`  
		Last Modified: Wed, 11 Jan 2023 03:43:13 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d30f0b8fb9dfedff6c60c5b68286e38663da47de2b487b0c9274392d524e36e`  
		Last Modified: Wed, 11 Jan 2023 03:43:12 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f041ee3c50ad89d10f1222a881fde6379f64250216d24a93ad5f3306f026fed`  
		Last Modified: Wed, 11 Jan 2023 03:43:13 GMT  
		Size: 1.5 KB (1484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc295a616a6bba57b0fc8d42dd2c22a0100c6fe75f69a9b8487318a3886b7f3`  
		Last Modified: Wed, 11 Jan 2023 03:43:13 GMT  
		Size: 1.4 MB (1385438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ff76c055b897a6d9fc0bc45cdd941b8441b4f73ace673a4f99e72c0cf475fb`  
		Last Modified: Wed, 11 Jan 2023 03:43:12 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; mips64le

```console
$ docker pull adminer@sha256:878697ba46a6bd602d27fc6bc9787c13bc5231fa25fa157cfc8a1e87d07a5725
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92588530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52168944cd71fa64c9d4e604add7b44251c8ba8791b94eb57fa7a306cdd1f0ac`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 11 Jan 2023 16:33:42 GMT
ADD file:8c29f17eac3e24c302d9d5569b89e9c08432801b4ae509971a7b4981c1946a6e in / 
# Wed, 11 Jan 2023 16:33:48 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:03:49 GMT
STOPSIGNAL SIGINT
# Wed, 11 Jan 2023 17:05:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y 		php7.4-cli 		php7.4-fpm 		php7.4-mbstring 		php7.4-mysql 		php7.4-odbc 		php7.4-pdo-dblib 		php7.4-pgsql 		php7.4-sqlite3 &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:05:59 GMT
RUN echo "upload_max_filesize = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "variables_order = \"EGPCS\"" >> /etc/php/7.4/cli/conf.d/0-env.ini &&	cp /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini /etc/php/7.4/fpm/conf.d/0-upload_large_dumps.ini
# Wed, 11 Jan 2023 17:06:05 GMT
RUN groupadd -r adminer &&	useradd -r -g adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 11 Jan 2023 17:06:09 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 17:06:12 GMT
COPY multi:8e2583c31626149dac766c1e81b6ba87f4289e683e42823f52b952fbab069922 in /var/www/html/ 
# Wed, 11 Jan 2023 17:06:15 GMT
ENV ADMINER_VERSION=4.8.1
# Wed, 11 Jan 2023 17:06:18 GMT
ENV ADMINER_DOWNLOAD_SHA256=2fd7e6d8f987b243ab1839249551f62adce19704c47d3d0c8dd9e57ea5b9c6b3
# Wed, 11 Jan 2023 17:06:21 GMT
ENV ADMINER_COMMIT=1f173e18bdf0be29182e0d67989df56eadea4754
# Wed, 11 Jan 2023 17:07:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='git curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php" -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	git clone --recurse-submodules=designs --depth 1 --shallow-submodules --branch "v$ADMINER_VERSION" https://github.com/vrana/adminer.git /tmp/adminer &&	commit="$(git -C /tmp/adminer/ rev-parse HEAD)" &&	[ "$commit" = "$ADMINER_COMMIT" ] &&	cp -r /tmp/adminer/designs/ /tmp/adminer/plugins/ . &&	rm -rf /tmp/adminer/ &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 17:07:22 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 11 Jan 2023 17:07:25 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 17:07:29 GMT
USER adminer
# Wed, 11 Jan 2023 17:07:32 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 11 Jan 2023 17:07:35 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:ed9c81424eb02ba70b9582fe73080191ccd4486689354a607c1eb45a6129c865`  
		Last Modified: Wed, 11 Jan 2023 16:42:37 GMT  
		Size: 53.2 MB (53245158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc63cc5f5f898481bb1a9e61e5372d4f34eb8e5317e7a85faa2d54a353f06149`  
		Last Modified: Wed, 11 Jan 2023 17:10:07 GMT  
		Size: 38.0 MB (37953089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77b35c2897784bd435e4f049156b411e617d9e14ae9bb5afe5a497659b60ca9`  
		Last Modified: Wed, 11 Jan 2023 17:09:38 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef4c44f9c70b74bd43a2cfd4aacb0c704012d5fcb309490126cb6de3833bd31`  
		Last Modified: Wed, 11 Jan 2023 17:09:38 GMT  
		Size: 1.7 KB (1727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b159f8ad7c58d646b8279896838bb21e344956031e9311ae1848f945893ee`  
		Last Modified: Wed, 11 Jan 2023 17:09:38 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f0b54a8fbb621a08bec2c21115be7d15ab3d7da836e42b6aaebbb205d33bc6`  
		Last Modified: Wed, 11 Jan 2023 17:09:39 GMT  
		Size: 1.4 MB (1386187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56872ddc2c5170d153590c54472e527f3150a008b0fdc243e2d78619060d74`  
		Last Modified: Wed, 11 Jan 2023 17:09:39 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; ppc64le

```console
$ docker pull adminer@sha256:dab44ef9e1d20a6866d7955e60dc19b4a8b842c93231b4ee3a8d4457a505fb16
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101226569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a0fc15318deef80dfe3a4e83e157ddd4176e21bdd6264e5531e95d424eae6aa`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:05 GMT
ADD file:9b8f1afc3870e9ea3bacdbf146017c3fdebee0140a9ad896fca12bc5a1927c0a in / 
# Wed, 11 Jan 2023 03:49:09 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:14:26 GMT
STOPSIGNAL SIGINT
# Wed, 11 Jan 2023 04:15:10 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y 		php7.4-cli 		php7.4-fpm 		php7.4-mbstring 		php7.4-mysql 		php7.4-odbc 		php7.4-pdo-dblib 		php7.4-pgsql 		php7.4-sqlite3 &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:15:12 GMT
RUN echo "upload_max_filesize = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "variables_order = \"EGPCS\"" >> /etc/php/7.4/cli/conf.d/0-env.ini &&	cp /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini /etc/php/7.4/fpm/conf.d/0-upload_large_dumps.ini
# Wed, 11 Jan 2023 04:15:14 GMT
RUN groupadd -r adminer &&	useradd -r -g adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 11 Jan 2023 04:15:14 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 04:15:14 GMT
COPY multi:8e2583c31626149dac766c1e81b6ba87f4289e683e42823f52b952fbab069922 in /var/www/html/ 
# Wed, 11 Jan 2023 04:15:15 GMT
ENV ADMINER_VERSION=4.8.1
# Wed, 11 Jan 2023 04:15:15 GMT
ENV ADMINER_DOWNLOAD_SHA256=2fd7e6d8f987b243ab1839249551f62adce19704c47d3d0c8dd9e57ea5b9c6b3
# Wed, 11 Jan 2023 04:15:15 GMT
ENV ADMINER_COMMIT=1f173e18bdf0be29182e0d67989df56eadea4754
# Wed, 11 Jan 2023 04:15:38 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='git curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php" -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	git clone --recurse-submodules=designs --depth 1 --shallow-submodules --branch "v$ADMINER_VERSION" https://github.com/vrana/adminer.git /tmp/adminer &&	commit="$(git -C /tmp/adminer/ rev-parse HEAD)" &&	[ "$commit" = "$ADMINER_COMMIT" ] &&	cp -r /tmp/adminer/designs/ /tmp/adminer/plugins/ . &&	rm -rf /tmp/adminer/ &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 04:15:38 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 11 Jan 2023 04:15:38 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 04:15:39 GMT
USER adminer
# Wed, 11 Jan 2023 04:15:39 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 11 Jan 2023 04:15:39 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:ab68a4092b73f1d14a0c9ccbe7c004408a6b0123b637274d22899b983919c917`  
		Last Modified: Wed, 11 Jan 2023 03:54:58 GMT  
		Size: 58.9 MB (58897136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a368dd79573c27388e916dbf14eb7ad7581d62c2211784ce81c75d3bee5ee9`  
		Last Modified: Wed, 11 Jan 2023 04:17:00 GMT  
		Size: 40.9 MB (40939951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f227b594adc79958a0290f7c68ebec84f6920d1e85b4a2b61be9cb148adbf6f0`  
		Last Modified: Wed, 11 Jan 2023 04:16:48 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4967b8407492af28aca88175532dd21cfb06120c7c1583425e06a52840edec0d`  
		Last Modified: Wed, 11 Jan 2023 04:16:48 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89046ef3ab968092ced180d53b970f182baa4bd3fa64c2994c422c1a7e641215`  
		Last Modified: Wed, 11 Jan 2023 04:16:48 GMT  
		Size: 1.5 KB (1480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ba54ed8820abcd9e0b415e583b19364ebf154412fd500de805d2e222fab304`  
		Last Modified: Wed, 11 Jan 2023 04:16:48 GMT  
		Size: 1.4 MB (1385233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7cae45479a59539cdfc388166928cd5911d6e99e5bfaa0092c1a721368321e`  
		Last Modified: Wed, 11 Jan 2023 04:16:48 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adminer:latest` - linux; s390x

```console
$ docker pull adminer@sha256:16158b68b3356454821f05eed74f1ef46b9bf7d6ae69be1a10db742e721259f2
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93667237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb22e73fd732a92927dc7eaa93fe51808e7243d76dcac55602813728150a41c9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:04 GMT
ADD file:a605485c9a58f2aaddd6bfcf07e5151b73e50e298efd5e961994458a9e5a0198 in / 
# Wed, 11 Jan 2023 02:22:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:44:13 GMT
STOPSIGNAL SIGINT
# Wed, 11 Jan 2023 02:44:34 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y 		php7.4-cli 		php7.4-fpm 		php7.4-mbstring 		php7.4-mysql 		php7.4-odbc 		php7.4-pdo-dblib 		php7.4-pgsql 		php7.4-sqlite3 &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:44:38 GMT
RUN echo "upload_max_filesize = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini &&	echo "variables_order = \"EGPCS\"" >> /etc/php/7.4/cli/conf.d/0-env.ini &&	cp /etc/php/7.4/cli/conf.d/0-upload_large_dumps.ini /etc/php/7.4/fpm/conf.d/0-upload_large_dumps.ini
# Wed, 11 Jan 2023 02:44:39 GMT
RUN groupadd -r adminer &&	useradd -r -g adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html
# Wed, 11 Jan 2023 02:44:39 GMT
WORKDIR /var/www/html
# Wed, 11 Jan 2023 02:44:39 GMT
COPY multi:8e2583c31626149dac766c1e81b6ba87f4289e683e42823f52b952fbab069922 in /var/www/html/ 
# Wed, 11 Jan 2023 02:44:39 GMT
ENV ADMINER_VERSION=4.8.1
# Wed, 11 Jan 2023 02:44:40 GMT
ENV ADMINER_DOWNLOAD_SHA256=2fd7e6d8f987b243ab1839249551f62adce19704c47d3d0c8dd9e57ea5b9c6b3
# Wed, 11 Jan 2023 02:44:40 GMT
ENV ADMINER_COMMIT=1f173e18bdf0be29182e0d67989df56eadea4754
# Wed, 11 Jan 2023 02:44:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='git curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php" -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	git clone --recurse-submodules=designs --depth 1 --shallow-submodules --branch "v$ADMINER_VERSION" https://github.com/vrana/adminer.git /tmp/adminer &&	commit="$(git -C /tmp/adminer/ rev-parse HEAD)" &&	[ "$commit" = "$ADMINER_COMMIT" ] &&	cp -r /tmp/adminer/designs/ /tmp/adminer/plugins/ . &&	rm -rf /tmp/adminer/ &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 02:44:50 GMT
COPY file:5ff0be587f5dd9166f7a558457b0e656c889de46d3bb2afd41f1714ab2c02ceb in /usr/local/bin/ 
# Wed, 11 Jan 2023 02:44:50 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 11 Jan 2023 02:44:50 GMT
USER adminer
# Wed, 11 Jan 2023 02:44:50 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 11 Jan 2023 02:44:51 GMT
EXPOSE 8080
```

-	Layers:
	-	`sha256:88b68ca7ea4f57b6a28bed828673ab2975209726cda9d30ec7f98f640c0edecc`  
		Last Modified: Wed, 11 Jan 2023 02:26:32 GMT  
		Size: 53.3 MB (53258446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0793cc699014766546611974f565869ed642426483e27980b32824ef6afc1c51`  
		Last Modified: Wed, 11 Jan 2023 02:45:49 GMT  
		Size: 39.0 MB (39019347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f95a558ca8cc63f8480be0dce87144a6a15ec88d61158002b30e16e6864b6a`  
		Last Modified: Wed, 11 Jan 2023 02:45:43 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a213fac96f40aa05407a64a9d600049ec711885e00f96e8dcf677038b5d835`  
		Last Modified: Wed, 11 Jan 2023 02:45:43 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dcd09a7894ff08b0c6e6655c708ff2029297785add956fac47ff6d8db66b89`  
		Last Modified: Wed, 11 Jan 2023 02:45:42 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7272a022f514ea7b43b745f585e9d4cfb9b305609fca5f18f19c0e2faa4f574e`  
		Last Modified: Wed, 11 Jan 2023 02:45:43 GMT  
		Size: 1.4 MB (1385206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f08206b7680e99cfe67ee4557aafe7838f6d66b8a02dd40780f4f87ce34a79d`  
		Last Modified: Wed, 11 Jan 2023 02:45:42 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
