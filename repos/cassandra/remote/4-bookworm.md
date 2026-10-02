## `cassandra:4-bookworm`

```console
$ docker pull cassandra@sha256:512832ceb2f77f2b4a69567bf21bb58d9d5f7f581891314b6ad325f4b5947ea1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `cassandra:4-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:ad36af0d323201b3bbc2f050683b0e07c627a80eaa9b48d7343eb04a093dee7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149195656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6317dbcb8f5d2b4097d4c93cb89df97b5d281172b7c3da5f70c8a4db6620b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:42:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Fri, 02 Oct 2026 02:42:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Fri, 02 Oct 2026 02:42:52 GMT
ENV GOSU_VERSION=1.19
# Fri, 02 Oct 2026 02:42:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 02 Oct 2026 02:42:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:42:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:42:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:53 GMT
RUN java --version # buildkit
# Fri, 02 Oct 2026 02:42:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Fri, 02 Oct 2026 02:42:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Fri, 02 Oct 2026 02:42:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Fri, 02 Oct 2026 02:42:53 GMT
ENV CASSANDRA_VERSION=4.1.12
# Fri, 02 Oct 2026 02:42:53 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Fri, 02 Oct 2026 02:43:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Fri, 02 Oct 2026 02:43:08 GMT
VOLUME [/var/lib/cassandra]
# Fri, 02 Oct 2026 02:43:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 02:43:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:43:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Fri, 02 Oct 2026 02:43:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0dda04aadc450856e76b1085e64008c415bba4d752e22a339e247649cd8c6`  
		Last Modified: Fri, 02 Oct 2026 02:43:21 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8533c3edce5b439e92bec1593f086403c06647939e24c8b3e1a42625fdb3637c`  
		Last Modified: Fri, 02 Oct 2026 02:43:22 GMT  
		Size: 18.2 MB (18159787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4000afc0872af20523df1d702380bb3f85ec4736ab11e56288eb85f033bb5910`  
		Last Modified: Fri, 02 Oct 2026 02:43:21 GMT  
		Size: 1.3 MB (1267039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1d42f3e83213008c8b453f49e0cfe473fbb908461fc174d9de53ba594e9c25`  
		Last Modified: Fri, 02 Oct 2026 02:43:23 GMT  
		Size: 47.3 MB (47325735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76276378311fef79100d5408d1f62bac14bfa57f7b90270bafae783f17881822`  
		Last Modified: Fri, 02 Oct 2026 02:43:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c006036fb9758d70b2aed6772f6ebebc12e31376e6026ef91ab32a4e54791dd6`  
		Last Modified: Fri, 02 Oct 2026 02:43:24 GMT  
		Size: 54.2 MB (54202189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebd272e97e8b5d49ceb77cb4a992da8857a416f46f34c7e8cbefc1d498ad86c`  
		Last Modified: Fri, 02 Oct 2026 02:43:23 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:848ad2cfd1b6cd9ad6beec203e469b158cb4d410bdae6a1f046a8977894434a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e792c653ffdcf78de34f301ce19b3bcddd9f868d21681cb020a1c12553b7a463`

```dockerfile
```

-	Layers:
	-	`sha256:02b05a426e5c7585f2d4c8606a9100b02e9482b96e1aa88d26144dd2b19d069a`  
		Last Modified: Fri, 02 Oct 2026 02:43:21 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6276a248494e6a81cced6516c5b0fa4ce47c81eb752c6f3ff4e6a80956fd38ab`  
		Last Modified: Fri, 02 Oct 2026 02:43:21 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:8d4eff40350ede500b4f3c5d31ab80657ad3facd330db9f0f0cb87138d8d495a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141041757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18b30576f6097c42d7d1ece3b2147cbdc6198e0c4feaf748ceadb68fb77d77e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:18:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Fri, 02 Oct 2026 02:18:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Fri, 02 Oct 2026 02:18:39 GMT
ENV GOSU_VERSION=1.19
# Fri, 02 Oct 2026 02:18:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 02 Oct 2026 02:18:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:18:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:18:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:18:39 GMT
RUN java --version # buildkit
# Fri, 02 Oct 2026 02:18:39 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Fri, 02 Oct 2026 02:18:39 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Fri, 02 Oct 2026 02:18:39 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:18:39 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Fri, 02 Oct 2026 02:18:39 GMT
ENV CASSANDRA_VERSION=4.1.12
# Fri, 02 Oct 2026 02:18:39 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Fri, 02 Oct 2026 02:18:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Fri, 02 Oct 2026 02:18:58 GMT
VOLUME [/var/lib/cassandra]
# Fri, 02 Oct 2026 02:18:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 02:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:18:58 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Fri, 02 Oct 2026 02:18:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7a1108c7ed800ad7a6456836dd8e0b8f87029137ea2de51202f6ee7ca872a7`  
		Last Modified: Fri, 02 Oct 2026 02:19:10 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6885c28b4a0013efccb968cedae256c5b0a1b59a083e08766e2f6f03b1b5040`  
		Last Modified: Fri, 02 Oct 2026 02:19:11 GMT  
		Size: 16.2 MB (16227384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2f4bd41ec6ea7c62e23bb68fa227901319fcba69a40bc477095d247bc900dd`  
		Last Modified: Fri, 02 Oct 2026 02:19:10 GMT  
		Size: 1.2 MB (1233088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2204c6bcc4d9caa3bb212a2a982eb972fba2ae27f3c283d16aef12c2cb8f7240`  
		Last Modified: Fri, 02 Oct 2026 02:19:12 GMT  
		Size: 45.4 MB (45433513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082fe4bbf8ac5ad25d257ce5e267d998b099020876491d838122e6f5d41ea503`  
		Last Modified: Fri, 02 Oct 2026 02:19:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81e6515a795dd54dfa99d8ba0b11ec9878542eefee32a61cef0d4f1a5fb626b`  
		Last Modified: Fri, 02 Oct 2026 02:19:13 GMT  
		Size: 54.2 MB (54202196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ecb54af8975f186b1590694ea420356254fc187c9d45a222c9ef222cec99d66`  
		Last Modified: Fri, 02 Oct 2026 02:19:13 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:25f49278fb47c2752f66f79992f29f9efc65dd8ad57632a3a8af49c5d1ff289e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74652340d5ec3f03454c0436592560a46e1498f2423df818b4bb5541af2cb0ce`

```dockerfile
```

-	Layers:
	-	`sha256:3f8a2728e3758bd54f158738db51912373f8c7b002ad2bf35e817936b5a353fb`  
		Last Modified: Fri, 02 Oct 2026 02:19:11 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90b351e13fe7d989b5b25adc05026be1500da18fb0d74093f5ff977554806509`  
		Last Modified: Fri, 02 Oct 2026 02:19:10 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:66a3cc30a45658fe6e9b6a6eb484ed5d1c3d289e6b7970b5e76ed5d2fe819088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147085317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f5ef59c79aa74cdfbb8d6c10b14da58b186786550847c2258e9fafab4c1137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:42:30 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Fri, 02 Oct 2026 02:42:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Fri, 02 Oct 2026 02:42:46 GMT
ENV GOSU_VERSION=1.19
# Fri, 02 Oct 2026 02:42:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 02 Oct 2026 02:42:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:42:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:42:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:47 GMT
RUN java --version # buildkit
# Fri, 02 Oct 2026 02:42:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Fri, 02 Oct 2026 02:42:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Fri, 02 Oct 2026 02:42:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Fri, 02 Oct 2026 02:42:47 GMT
ENV CASSANDRA_VERSION=4.1.12
# Fri, 02 Oct 2026 02:42:47 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Fri, 02 Oct 2026 02:43:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Fri, 02 Oct 2026 02:43:04 GMT
VOLUME [/var/lib/cassandra]
# Fri, 02 Oct 2026 02:43:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 02:43:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:43:04 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Fri, 02 Oct 2026 02:43:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720049fa2040fb6758dfbc23f0640492c4ee3bad3644ee43ceaa4b6585f99567`  
		Last Modified: Fri, 02 Oct 2026 02:43:16 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2765ec4edfc811b5854ece3599204a0513a88a6411b49613c6b4c4d00107f53`  
		Last Modified: Fri, 02 Oct 2026 02:43:17 GMT  
		Size: 17.9 MB (17903415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cdf7e4b2d6d9a957b56cf4b66b816ca76ecdae5a3e7ea26d74292dbfc4555c6`  
		Last Modified: Fri, 02 Oct 2026 02:43:16 GMT  
		Size: 1.2 MB (1220580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba076cdcf9a193f669e24f1d95e2cd2c5fb7dbcd2d5009e9a0c46da22cd853c9`  
		Last Modified: Fri, 02 Oct 2026 02:43:18 GMT  
		Size: 45.6 MB (45632945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34891e57838f0cf41cd7a2c12846d3c08f5cd6db16a3cf7d18f1f2d08b381f56`  
		Last Modified: Fri, 02 Oct 2026 02:43:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4469936d42d44002b2b54fbf88ae67160dc88810b4aefd6293da275f359bce43`  
		Last Modified: Fri, 02 Oct 2026 02:43:19 GMT  
		Size: 54.2 MB (54202239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354a9d074abda84bed781469636e6bd8706ee43223a4c7312ead958858bd61a6`  
		Last Modified: Fri, 02 Oct 2026 02:43:18 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:e043978621b26ad9974fd43657ebe466989e607c2e0bf07569be96d305853f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5588119a9257b7177213edad4ea299d142f7a7ac02b9425b8e5855beccaf56`

```dockerfile
```

-	Layers:
	-	`sha256:491bfcba85761f0c84a62cbd2f5517e081de56e86d143e68212e9f3222f7a764`  
		Last Modified: Fri, 02 Oct 2026 02:43:16 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ab0097647912976b6393e192f433ed3bf095e57ebef7125b5640f361bcbbfbd`  
		Last Modified: Fri, 02 Oct 2026 02:43:16 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:fe936085abc99d3e3d91e2160676b879f386e2543d55cb33c2568a7ba60070c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149813723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39be781ed8f506c68043c8b5145474fcbd9d1002b4e963f0b78fd5a715176a89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:35:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 26 Sep 2026 03:36:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 26 Sep 2026 03:36:30 GMT
ENV GOSU_VERSION=1.19
# Sat, 26 Sep 2026 03:36:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 26 Sep 2026 03:36:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:36:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:36:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:36:31 GMT
RUN java --version # buildkit
# Sat, 26 Sep 2026 03:36:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 26 Sep 2026 03:36:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 26 Sep 2026 03:36:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:36:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 26 Sep 2026 03:36:31 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 26 Sep 2026 03:36:31 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 26 Sep 2026 03:37:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 26 Sep 2026 03:37:02 GMT
VOLUME [/var/lib/cassandra]
# Sat, 26 Sep 2026 03:37:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 26 Sep 2026 03:37:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 Sep 2026 03:37:02 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 26 Sep 2026 03:37:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ed16c7d18eda98a6ca4b711f101f992fc473a7021b2821bd67431f65d9b0a`  
		Last Modified: Sat, 26 Sep 2026 03:37:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bcbbfc207bb24494c75a0256ee246d8acc2c079ae6ce94f5af3980dab4eaf0`  
		Last Modified: Sat, 26 Sep 2026 03:37:32 GMT  
		Size: 19.5 MB (19509061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d6aef1fc701a0f88e358d6b10a41779ae8d597a96bd9bcbbbcf27a9f8d0114`  
		Last Modified: Sat, 26 Sep 2026 03:37:31 GMT  
		Size: 1.2 MB (1226016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c94546e491760990dfd0eb77c0fbc4219959bc7789b20d5b81eaf7ef24816a`  
		Last Modified: Sat, 26 Sep 2026 03:37:32 GMT  
		Size: 42.8 MB (42790198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509d8a5edd8e627146fe1a92b931e1bd54f2fef09f2331b89dea23968c11bf3a`  
		Last Modified: Sat, 26 Sep 2026 03:37:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d30d2d56465194683a08981d3a1084aab13920ed94fefe4bdb7f92d608d9f3`  
		Last Modified: Sat, 26 Sep 2026 03:37:33 GMT  
		Size: 54.2 MB (54202423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4cc582f6ed7208e68a6ea237a99fcc754a309be882a947ffb5f49c59889455`  
		Last Modified: Sat, 26 Sep 2026 03:37:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:f7569cffbbe46003453de4a57cc1d36eff09f668bc54dae5900f528aa65ac50f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f136ceef0eac1f3a13f89a110abc51ecea149e47e70838abf5f3b826684b4522`

```dockerfile
```

-	Layers:
	-	`sha256:f3ba5df3e7b42f1390a638c30a1c8fcb85094b63c094ab49c543fd2c7b279b63`  
		Last Modified: Sat, 26 Sep 2026 03:37:31 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9b2bccd040fd9ee715630f59184260e285ddda33654c9d5cada80318fde19d1`  
		Last Modified: Sat, 26 Sep 2026 03:37:31 GMT  
		Size: 36.6 KB (36551 bytes)  
		MIME: application/vnd.in-toto+json
