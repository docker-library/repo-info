<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:4`](#cassandra4)
-	[`cassandra:4-bookworm`](#cassandra4-bookworm)
-	[`cassandra:4.0`](#cassandra40)
-	[`cassandra:4.0-bookworm`](#cassandra40-bookworm)
-	[`cassandra:4.0.20`](#cassandra4020)
-	[`cassandra:4.0.20-bookworm`](#cassandra4020-bookworm)
-	[`cassandra:4.1`](#cassandra41)
-	[`cassandra:4.1-bookworm`](#cassandra41-bookworm)
-	[`cassandra:4.1.11`](#cassandra4111)
-	[`cassandra:4.1.11-bookworm`](#cassandra4111-bookworm)
-	[`cassandra:5`](#cassandra5)
-	[`cassandra:5-bookworm`](#cassandra5-bookworm)
-	[`cassandra:5.0`](#cassandra50)
-	[`cassandra:5.0-bookworm`](#cassandra50-bookworm)
-	[`cassandra:5.0.8`](#cassandra508)
-	[`cassandra:5.0.8-bookworm`](#cassandra508-bookworm)
-	[`cassandra:bookworm`](#cassandrabookworm)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:4`

```console
$ docker pull cassandra@sha256:d25e8ee78d648fade002d0d176b7e8c953c69164b9f316ccbccf62f524c9dfbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:4` - linux; amd64

```console
$ docker pull cassandra@sha256:f44af1ae1cc5f6aa8982c8926032b06f39fcba85e538cac16a12fa7a2f548030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3a1447d447d4d40dce98b78750d59dc979c23cb0064232d99bc9c2a8691e11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:22:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:22:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:22:14 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:22:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0daf6179f22050424be2566bb137029a601d0d567dcfa2158749500534976f`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 47.3 MB (47336009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a26c88ed6ef425fe3395f6f87eacd0c8f8671930a41f02e1ad6a9fb0ac79a`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8adb70d5fa2392ea6446b47cbfa67ab9ad9b9f110496c6c439192f4f11762d`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 54.2 MB (54194354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c871ee9a4c717731f6267513513587a82346249f51bf1a01afd700861fb0748f`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:1a8a4ecd6d08ff0aeba3d395016628e271443cd8ce2abaec66326845e60c6bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f85d5ef04b8d6d6c37662ac2d4da4cff5595e5d2e3c823c4ae28960b3d1c27`

```dockerfile
```

-	Layers:
	-	`sha256:6ff82ffd26627f5d758f0a091bddbe82a02d5cbfacdade3c6b4117e10bc76dae`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec0b4c7662e4c100e515c702923319c22b4d73a9e9a9bbf2bbc713738c40f7b5`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:83e9cd855e972cf6766391cfd19acb54b5541514ca20eaf96c8dd64eeea3b50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4732a15d4efc8aa2d2c6eef224649baa6e09751d426cd9bee14e281102bbcf9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:14:13 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:14:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:14:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:14:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:14:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb74b534763c538f1e79a7ee42dde28c5bb48524373cf74f4b3b72e548aa8e9e`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9ac80b65b49a3b763c4249f61ca5e668fb92a3e0211e0a4e582af9c3457ed4`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 16.2 MB (16217465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38223602804facf32afdfe5c1bdbdf5206ed38daf49e10952841fe08e0bd936`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.2 MB (1232605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a62bf9c6da4fef336bc375d5c9c61f302690363786019ac955de58ea22e693`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 45.4 MB (45445023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec6dfcf164f0dd05a0adb57353737427d2fda9f59f8197978bec893ea94db9f`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae43cb41b51f48b25423282722a8ef7569649438130f9fd4a3037b05fe3cde8`  
		Last Modified: Thu, 16 Jul 2026 01:15:12 GMT  
		Size: 54.2 MB (54194443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144db921fb3f4252fb6860f4b669c1999875d582704a1b2f4d0051d07514e27`  
		Last Modified: Thu, 16 Jul 2026 01:15:11 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:7ae1ea318bc515d9709c8c1b3102cea567599d8ac4c4e284d6740e85dfce7bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46858ea0ff52d76cffdf9684546d1b4ed89ef0ac7fa9ced6006440344c8ad130`

```dockerfile
```

-	Layers:
	-	`sha256:eceff39ecd4dff052a482920f0004645239299cd38c5b73bd4b6b98291b1b5c7`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8152c13b9419347b2e8e973303e6e7da8fcf34ba8be84da6cb4306d89c59b145`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4966290ad15fe9dde2eb1b8a48f61cd82edcc4fe919f153b50f242f2b47f36f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddc20d8c067735664d0494ee866bfcab53bd31f78a963695e2e3e478923c6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:18:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21348197d145aa9a70e7f6f8259e18e26c7b479f4a237885c8da630efe3c6b5c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42036887571451a8e4f36d71c9a517dc5401e267e7fc8df643f3605af2e98294`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b20a1dd0e787ec8cf58a999087512abd73a88b0aa91a2989e7f23958010e348`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb68afefca8f6ae94b1d6f6982f290d376bb908aecdc6c5b9b397d79f2914ad`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 45.7 MB (45652841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c7f39798946cabb37e758e7f239e1a65c995700465cde48aaea0b63708ac48`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 54.2 MB (54194455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669c350a6a883ce1a62369c2662ca2656c6403e51ff6e0f470d4acfb5af7fe71`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:9b548066354c34ee96f0c1aa588cceffa0f7261ef6e437a012afe50a0dc10eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea33b9d8a988c90371f4e4fcd6a1f94f7459659ebc2bdf6fe12176aedf1a988`

```dockerfile
```

-	Layers:
	-	`sha256:ca4801f4d62cb7445ca663ccb3eb5ce3dbdd54537c5710176884cdc7bd4c2ff3`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517aab035da72a321f82e2f14e05560dba038081c5bdbcc01d656dbc44728d49`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; ppc64le

```console
$ docker pull cassandra@sha256:be9fc62eddcebc9713f0079ebb892473fb230d5cb23e6f529a1ec10cdf1abf15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f452a473e3207102c120e445768707792aeb2a11b22ed2f618df578af99a344`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:16:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 02:16:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:16:35 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:16:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:16:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:16:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:16:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efefba5c977a5e3d3efcfacf7b01cf840ff6b827da6bc8c8fc9cf3b2dcc3b7`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 42.8 MB (42801383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2772c4e54793170b2f28f48ea229fd847fb11bd34e244ca31b8caba764872c65`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223baed69ca51d52ac304389e33fc78481b478e8bc43bb01d2d799a42c645ff0`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 54.2 MB (54194717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35bf29e1fd6f90fc6c182576f61dda3a9725ea015d69795562491894658eea9`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:02c9a7c91ddbae529f3e7c310820da57f46ab97f4eed613467397c9946c0361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b2b7846f773bc164299c5a72a09f57db4cf6b258b0b0666de9626a0e439766`

```dockerfile
```

-	Layers:
	-	`sha256:41b30ba05bda3b0d66b4cab6f29b775eb8a41d5c9fd2ac425e90a5271972c0c8`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177f2573b3e811236d1e5c296c64775469b4efff5529e4d62016ad52989f1c4a`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; s390x

```console
$ docker pull cassandra@sha256:3658280cea2a266ed8715dd98bb469c198ee39d2cca1c03d3800342a2249bb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141136910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ea1f2ff91d7df9018c2653a08e4aa4057e8c9edf5fb974b9ce611245cec2c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:39:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:39:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:39:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:39:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:39:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c9350f44f24160d9cf411e49dbc323e94dd740660f92ebf8a90fa32def3c5`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 41.4 MB (41354057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72540e254bb042a473e9b07a32faaada13ede18dac7ac1e436f863c55d5c8489`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88bfce1ebb5b410ad05c514dcb8f6dcffa8e053b10d677792c60a696a10a1e0d`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 54.2 MB (54194434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7de62ec4943d56363cea5d9d160df04a97a5add682e0e96ad36d8d2fccb2697`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:17a6660db2d3e619c15abf4c04668ae4f3d34f26a0716b856ed121433a18ea9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e0bd19fe9a93bd91dc293af3d861034f2b3558c3fe32a363400b85ebf09b3e`

```dockerfile
```

-	Layers:
	-	`sha256:48438ee50f1123f3a45db436e97813a61f89f7ca25338d9e94f254e872fb5ef9`  
		Last Modified: Thu, 16 Jul 2026 01:40:10 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:992eb34d577ead2f4b7216559ca15a9dda4829f8e1a203f4ed1335db85986439`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4-bookworm`

```console
$ docker pull cassandra@sha256:d25e8ee78d648fade002d0d176b7e8c953c69164b9f316ccbccf62f524c9dfbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:4-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:f44af1ae1cc5f6aa8982c8926032b06f39fcba85e538cac16a12fa7a2f548030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3a1447d447d4d40dce98b78750d59dc979c23cb0064232d99bc9c2a8691e11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:22:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:22:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:22:14 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:22:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0daf6179f22050424be2566bb137029a601d0d567dcfa2158749500534976f`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 47.3 MB (47336009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a26c88ed6ef425fe3395f6f87eacd0c8f8671930a41f02e1ad6a9fb0ac79a`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8adb70d5fa2392ea6446b47cbfa67ab9ad9b9f110496c6c439192f4f11762d`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 54.2 MB (54194354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c871ee9a4c717731f6267513513587a82346249f51bf1a01afd700861fb0748f`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1a8a4ecd6d08ff0aeba3d395016628e271443cd8ce2abaec66326845e60c6bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f85d5ef04b8d6d6c37662ac2d4da4cff5595e5d2e3c823c4ae28960b3d1c27`

```dockerfile
```

-	Layers:
	-	`sha256:6ff82ffd26627f5d758f0a091bddbe82a02d5cbfacdade3c6b4117e10bc76dae`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec0b4c7662e4c100e515c702923319c22b4d73a9e9a9bbf2bbc713738c40f7b5`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:83e9cd855e972cf6766391cfd19acb54b5541514ca20eaf96c8dd64eeea3b50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4732a15d4efc8aa2d2c6eef224649baa6e09751d426cd9bee14e281102bbcf9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:14:13 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:14:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:14:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:14:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:14:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb74b534763c538f1e79a7ee42dde28c5bb48524373cf74f4b3b72e548aa8e9e`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9ac80b65b49a3b763c4249f61ca5e668fb92a3e0211e0a4e582af9c3457ed4`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 16.2 MB (16217465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38223602804facf32afdfe5c1bdbdf5206ed38daf49e10952841fe08e0bd936`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.2 MB (1232605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a62bf9c6da4fef336bc375d5c9c61f302690363786019ac955de58ea22e693`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 45.4 MB (45445023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec6dfcf164f0dd05a0adb57353737427d2fda9f59f8197978bec893ea94db9f`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae43cb41b51f48b25423282722a8ef7569649438130f9fd4a3037b05fe3cde8`  
		Last Modified: Thu, 16 Jul 2026 01:15:12 GMT  
		Size: 54.2 MB (54194443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144db921fb3f4252fb6860f4b669c1999875d582704a1b2f4d0051d07514e27`  
		Last Modified: Thu, 16 Jul 2026 01:15:11 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:7ae1ea318bc515d9709c8c1b3102cea567599d8ac4c4e284d6740e85dfce7bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46858ea0ff52d76cffdf9684546d1b4ed89ef0ac7fa9ced6006440344c8ad130`

```dockerfile
```

-	Layers:
	-	`sha256:eceff39ecd4dff052a482920f0004645239299cd38c5b73bd4b6b98291b1b5c7`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8152c13b9419347b2e8e973303e6e7da8fcf34ba8be84da6cb4306d89c59b145`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4966290ad15fe9dde2eb1b8a48f61cd82edcc4fe919f153b50f242f2b47f36f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddc20d8c067735664d0494ee866bfcab53bd31f78a963695e2e3e478923c6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:18:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21348197d145aa9a70e7f6f8259e18e26c7b479f4a237885c8da630efe3c6b5c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42036887571451a8e4f36d71c9a517dc5401e267e7fc8df643f3605af2e98294`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b20a1dd0e787ec8cf58a999087512abd73a88b0aa91a2989e7f23958010e348`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb68afefca8f6ae94b1d6f6982f290d376bb908aecdc6c5b9b397d79f2914ad`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 45.7 MB (45652841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c7f39798946cabb37e758e7f239e1a65c995700465cde48aaea0b63708ac48`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 54.2 MB (54194455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669c350a6a883ce1a62369c2662ca2656c6403e51ff6e0f470d4acfb5af7fe71`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:9b548066354c34ee96f0c1aa588cceffa0f7261ef6e437a012afe50a0dc10eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea33b9d8a988c90371f4e4fcd6a1f94f7459659ebc2bdf6fe12176aedf1a988`

```dockerfile
```

-	Layers:
	-	`sha256:ca4801f4d62cb7445ca663ccb3eb5ce3dbdd54537c5710176884cdc7bd4c2ff3`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517aab035da72a321f82e2f14e05560dba038081c5bdbcc01d656dbc44728d49`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:be9fc62eddcebc9713f0079ebb892473fb230d5cb23e6f529a1ec10cdf1abf15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f452a473e3207102c120e445768707792aeb2a11b22ed2f618df578af99a344`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:16:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 02:16:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:16:35 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:16:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:16:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:16:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:16:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efefba5c977a5e3d3efcfacf7b01cf840ff6b827da6bc8c8fc9cf3b2dcc3b7`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 42.8 MB (42801383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2772c4e54793170b2f28f48ea229fd847fb11bd34e244ca31b8caba764872c65`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223baed69ca51d52ac304389e33fc78481b478e8bc43bb01d2d799a42c645ff0`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 54.2 MB (54194717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35bf29e1fd6f90fc6c182576f61dda3a9725ea015d69795562491894658eea9`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:02c9a7c91ddbae529f3e7c310820da57f46ab97f4eed613467397c9946c0361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b2b7846f773bc164299c5a72a09f57db4cf6b258b0b0666de9626a0e439766`

```dockerfile
```

-	Layers:
	-	`sha256:41b30ba05bda3b0d66b4cab6f29b775eb8a41d5c9fd2ac425e90a5271972c0c8`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177f2573b3e811236d1e5c296c64775469b4efff5529e4d62016ad52989f1c4a`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:3658280cea2a266ed8715dd98bb469c198ee39d2cca1c03d3800342a2249bb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141136910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ea1f2ff91d7df9018c2653a08e4aa4057e8c9edf5fb974b9ce611245cec2c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:39:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:39:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:39:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:39:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:39:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c9350f44f24160d9cf411e49dbc323e94dd740660f92ebf8a90fa32def3c5`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 41.4 MB (41354057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72540e254bb042a473e9b07a32faaada13ede18dac7ac1e436f863c55d5c8489`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88bfce1ebb5b410ad05c514dcb8f6dcffa8e053b10d677792c60a696a10a1e0d`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 54.2 MB (54194434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7de62ec4943d56363cea5d9d160df04a97a5add682e0e96ad36d8d2fccb2697`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:17a6660db2d3e619c15abf4c04668ae4f3d34f26a0716b856ed121433a18ea9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e0bd19fe9a93bd91dc293af3d861034f2b3558c3fe32a363400b85ebf09b3e`

```dockerfile
```

-	Layers:
	-	`sha256:48438ee50f1123f3a45db436e97813a61f89f7ca25338d9e94f254e872fb5ef9`  
		Last Modified: Thu, 16 Jul 2026 01:40:10 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:992eb34d577ead2f4b7216559ca15a9dda4829f8e1a203f4ed1335db85986439`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0`

```console
$ docker pull cassandra@sha256:7506c8894f83b1a52b3347f78bcf5e165e150ac5dae669808d1c7086c2b63dcf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:4.0` - linux; amd64

```console
$ docker pull cassandra@sha256:4c584683808ed93c445a6fd5118d214300546f6136e42ee4f64278fd71b99508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147066362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ea417a1c164f62707f5390e435d302e1140b383235ad663cb1f69e170240d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:22:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:22:58 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:22:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:22:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:22:58 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:22:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0daf6179f22050424be2566bb137029a601d0d567dcfa2158749500534976f`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 47.3 MB (47336009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a26c88ed6ef425fe3395f6f87eacd0c8f8671930a41f02e1ad6a9fb0ac79a`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b5101d2eecfad8857296715d80223fd75c8f129c0317f5cb22116cbb4ff544`  
		Last Modified: Thu, 16 Jul 2026 01:23:08 GMT  
		Size: 52.1 MB (52079119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0a048de0abff687595508dc4ac19993b39f72d2801b935395fcca56397c336`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:d9973dc5a0592f1af7861dc0b4df759e10228a9fa779286101bf53fa64d34947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be427fb6fe31d1fb9b87af69e575fb9c4422fb5d567a99438cf99879c9158bfe`

```dockerfile
```

-	Layers:
	-	`sha256:21536d8e1e1b82307fb44cc39fca32dc193b2566cc8d81cbb12877f1381146d0`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 3.3 MB (3274818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a53371d434469fc6b63744fa8b74033b1dcebe08ae308f5b58027b68e0c5c857`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:34ac4ae71b4d72d02310468a7ad5e9c665a2f0b7a817aaad88f8ce15d4bf484d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138916293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f64b62a4c4b32a2de82f6958109f1daee4c043aa0b109347161f23b5440dec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:14:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:14:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:14:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:58 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:14:58 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:58 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:15:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:15:21 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:15:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:15:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:15:21 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:15:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57400d2c94097cfa653c058a7b74ac147367e0ded7fd2fe0d8c73893e631397`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3202515c31c3a7cf2a4087b571df6eb5f142e202cc3cea2c6031f87080ad2e17`  
		Last Modified: Thu, 16 Jul 2026 01:15:34 GMT  
		Size: 16.2 MB (16217391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090b6d2024878d4210d9dfa43954c4453c310e60252e7c2fa2ad496918aa2ce6`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 1.2 MB (1232595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b469ea6d5e25e638f61b8cf6e3aee1b5c886fbbf55b204f57462c9659a947a`  
		Last Modified: Thu, 16 Jul 2026 01:15:35 GMT  
		Size: 45.4 MB (45444966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64d043945008501b0844af9fbe7eb6f6eeacf7ad77d34c8a30538a9e1dd9862`  
		Last Modified: Thu, 16 Jul 2026 01:15:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b5c95a492acca1a1d1c819a6633087bc9e38c279378819801ca8d1802f3c70`  
		Last Modified: Thu, 16 Jul 2026 01:15:36 GMT  
		Size: 52.1 MB (52079102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba2ecee467f817adf63e340bfddbadabc2174e72cf63a1c37ba5fa6dbcb60e8`  
		Last Modified: Thu, 16 Jul 2026 01:15:35 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:c620fb762aa2fefaaa7f257354cc648ce50b51dc16280194d52a6dfb06853998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3726c4e0b24c3c638b0c3751be1ec9b1722927c021680fc9586212bf9c07576b`

```dockerfile
```

-	Layers:
	-	`sha256:2ab3238d487b10371c84c31e85b2b75cca86e01444e3bd7065f47b2ba1b1dd7a`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 3.3 MB (3278532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c0955c58114f51abac4b1e6f082eeede319ed10791e9dff733ba755045f5bf3`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 36.0 KB (36026 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:d86c2df934ce9bc5dafa1e0d2ffc4f8f26f0ab45ed3d2eb40e4b14287729bd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144973322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99c6872e1666f5661738a68efacb60a567b2f19e3a0f5a58c859ca7f797fafd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:43 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:43 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:43 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:19:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:19:02 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:19:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:19:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:19:02 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:19:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc50608e777dd60fb5931a75f968e90d869cc0a62ef4f0f439a488aa8adbccf`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9371ff41a25ab8a2c5323018a325b89d056284ec23ad5020431ced8f5817e5dd`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 17.9 MB (17901622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d70edef99e806b5a074bb8337104079031fc1bc2960be42d7c1bbd5dc6b7a7`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 1.2 MB (1220113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa526d7890afd23963b5c846f5745d6cdffa175ab54b8059d51841239b3fe644`  
		Last Modified: Thu, 16 Jul 2026 01:19:16 GMT  
		Size: 45.7 MB (45652827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a3a8f40fe571bdba02712ead592c5854cd0d516b7d7e18b9cee0c72aae46bd`  
		Last Modified: Thu, 16 Jul 2026 01:19:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3dbdbc2081c497cceba5d696358c4f7213e0b24c4d7c4f8eed0c013a0819f0`  
		Last Modified: Thu, 16 Jul 2026 01:19:17 GMT  
		Size: 52.1 MB (52079045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ff3c19312ca1da13416badb1f4c821f48cbf15c03f7abdcd348592440d4c25`  
		Last Modified: Thu, 16 Jul 2026 01:19:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:f000406e744f371ee9b46d068423a7e05d2114e123aad847b9c0ea4b51d39afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0c7323bdd6fe6d56c213ad1a3f4ff346079b4c41cd21f522e496b8080009b3`

```dockerfile
```

-	Layers:
	-	`sha256:9a0ab3c248583d46ca2f71e40ee70c0c2dbfc695307945644492b3c04d030784`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 3.3 MB (3275153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47bad14e44fad561d8c420a37c13877647a550b05a7b8c15c8d890aec0980c22`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:577e12d517b0ba903656f9bbb8f3f8fa0dc5ba21e5cc7899c344b64db24fccba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147681689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dd20db9a3b77ac2d8fb953f6c75ed07bcc76e43d6a83bd820145a72d958acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:16:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 02:17:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:17:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:17:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:17:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:17:40 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:17:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efefba5c977a5e3d3efcfacf7b01cf840ff6b827da6bc8c8fc9cf3b2dcc3b7`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 42.8 MB (42801383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2772c4e54793170b2f28f48ea229fd847fb11bd34e244ca31b8caba764872c65`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495f207421058439543aad02861ac20a2ba4c1840b76713338736c08265c6b53`  
		Last Modified: Thu, 16 Jul 2026 02:17:58 GMT  
		Size: 52.1 MB (52079248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee8779963b80d91ee50500f27c3b29ec479e6bd17b1a0e44b82179d3df8f4c0`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:9638160e188e0210955ff7083e064d095ad2fa7fb97221ad8863a6b9fb572ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6f52659fd3561509d1f6967981231c195f2dd8814cd7105bac11cbd5d27194`

```dockerfile
```

-	Layers:
	-	`sha256:cdcc34104e269193b4a72d7d1a717118610ac7add351afffce4af2914964cae6`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 3.3 MB (3279066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bfb9dfc0a329e62d5f342c5096545fbbfe0e080ffd1a501e03693f8b290bfbe`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; s390x

```console
$ docker pull cassandra@sha256:1d6ff666e1e745562ed3170fab9ae341d7eda59424361b378f3d881ae8cd84fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139021594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05ddba42c94d9fc8588738ecf14247aa0a4ef9335e37cd3b61e7e7e0ab44d487`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:39:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:40:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:40:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:40:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:40:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:40:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:40:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c9350f44f24160d9cf411e49dbc323e94dd740660f92ebf8a90fa32def3c5`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 41.4 MB (41354057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72540e254bb042a473e9b07a32faaada13ede18dac7ac1e436f863c55d5c8489`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8c7d661fa4eb720b0730bb4d556fd79c9e78ee593793834b4296d8e97c4a99`  
		Last Modified: Thu, 16 Jul 2026 01:40:58 GMT  
		Size: 52.1 MB (52079117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f848adfc3061f8dff8b17acfdcd0418cfa14ddfc72a9e8f7c1b1709d0f9ac3`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:f0c2565693eb822e7eb27944b3e2e7e269c8a5535dbf0d172161864bcef11cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31da58059cd6e65460fe454e0dfdf7e8593a26b5c3122431fc33572a32b709cc`

```dockerfile
```

-	Layers:
	-	`sha256:77c8fa1477411bc91ccd70352e338523689e4128ba68ab54b074927e74477a30`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 3.3 MB (3270960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c74326e1997a7ccaa9bf5195e7e9dd54d6f7226a2c636e4d6f5768f53e1a5c8`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0-bookworm`

```console
$ docker pull cassandra@sha256:7506c8894f83b1a52b3347f78bcf5e165e150ac5dae669808d1c7086c2b63dcf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:4.0-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:4c584683808ed93c445a6fd5118d214300546f6136e42ee4f64278fd71b99508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147066362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ea417a1c164f62707f5390e435d302e1140b383235ad663cb1f69e170240d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:22:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:22:58 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:22:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:22:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:22:58 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:22:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0daf6179f22050424be2566bb137029a601d0d567dcfa2158749500534976f`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 47.3 MB (47336009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a26c88ed6ef425fe3395f6f87eacd0c8f8671930a41f02e1ad6a9fb0ac79a`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b5101d2eecfad8857296715d80223fd75c8f129c0317f5cb22116cbb4ff544`  
		Last Modified: Thu, 16 Jul 2026 01:23:08 GMT  
		Size: 52.1 MB (52079119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0a048de0abff687595508dc4ac19993b39f72d2801b935395fcca56397c336`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:d9973dc5a0592f1af7861dc0b4df759e10228a9fa779286101bf53fa64d34947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be427fb6fe31d1fb9b87af69e575fb9c4422fb5d567a99438cf99879c9158bfe`

```dockerfile
```

-	Layers:
	-	`sha256:21536d8e1e1b82307fb44cc39fca32dc193b2566cc8d81cbb12877f1381146d0`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 3.3 MB (3274818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a53371d434469fc6b63744fa8b74033b1dcebe08ae308f5b58027b68e0c5c857`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:34ac4ae71b4d72d02310468a7ad5e9c665a2f0b7a817aaad88f8ce15d4bf484d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138916293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f64b62a4c4b32a2de82f6958109f1daee4c043aa0b109347161f23b5440dec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:14:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:14:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:14:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:58 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:14:58 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:58 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:15:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:15:21 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:15:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:15:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:15:21 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:15:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57400d2c94097cfa653c058a7b74ac147367e0ded7fd2fe0d8c73893e631397`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3202515c31c3a7cf2a4087b571df6eb5f142e202cc3cea2c6031f87080ad2e17`  
		Last Modified: Thu, 16 Jul 2026 01:15:34 GMT  
		Size: 16.2 MB (16217391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090b6d2024878d4210d9dfa43954c4453c310e60252e7c2fa2ad496918aa2ce6`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 1.2 MB (1232595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b469ea6d5e25e638f61b8cf6e3aee1b5c886fbbf55b204f57462c9659a947a`  
		Last Modified: Thu, 16 Jul 2026 01:15:35 GMT  
		Size: 45.4 MB (45444966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64d043945008501b0844af9fbe7eb6f6eeacf7ad77d34c8a30538a9e1dd9862`  
		Last Modified: Thu, 16 Jul 2026 01:15:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b5c95a492acca1a1d1c819a6633087bc9e38c279378819801ca8d1802f3c70`  
		Last Modified: Thu, 16 Jul 2026 01:15:36 GMT  
		Size: 52.1 MB (52079102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba2ecee467f817adf63e340bfddbadabc2174e72cf63a1c37ba5fa6dbcb60e8`  
		Last Modified: Thu, 16 Jul 2026 01:15:35 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c620fb762aa2fefaaa7f257354cc648ce50b51dc16280194d52a6dfb06853998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3726c4e0b24c3c638b0c3751be1ec9b1722927c021680fc9586212bf9c07576b`

```dockerfile
```

-	Layers:
	-	`sha256:2ab3238d487b10371c84c31e85b2b75cca86e01444e3bd7065f47b2ba1b1dd7a`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 3.3 MB (3278532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c0955c58114f51abac4b1e6f082eeede319ed10791e9dff733ba755045f5bf3`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 36.0 KB (36026 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:d86c2df934ce9bc5dafa1e0d2ffc4f8f26f0ab45ed3d2eb40e4b14287729bd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144973322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99c6872e1666f5661738a68efacb60a567b2f19e3a0f5a58c859ca7f797fafd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:43 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:43 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:43 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:19:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:19:02 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:19:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:19:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:19:02 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:19:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc50608e777dd60fb5931a75f968e90d869cc0a62ef4f0f439a488aa8adbccf`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9371ff41a25ab8a2c5323018a325b89d056284ec23ad5020431ced8f5817e5dd`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 17.9 MB (17901622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d70edef99e806b5a074bb8337104079031fc1bc2960be42d7c1bbd5dc6b7a7`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 1.2 MB (1220113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa526d7890afd23963b5c846f5745d6cdffa175ab54b8059d51841239b3fe644`  
		Last Modified: Thu, 16 Jul 2026 01:19:16 GMT  
		Size: 45.7 MB (45652827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a3a8f40fe571bdba02712ead592c5854cd0d516b7d7e18b9cee0c72aae46bd`  
		Last Modified: Thu, 16 Jul 2026 01:19:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3dbdbc2081c497cceba5d696358c4f7213e0b24c4d7c4f8eed0c013a0819f0`  
		Last Modified: Thu, 16 Jul 2026 01:19:17 GMT  
		Size: 52.1 MB (52079045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ff3c19312ca1da13416badb1f4c821f48cbf15c03f7abdcd348592440d4c25`  
		Last Modified: Thu, 16 Jul 2026 01:19:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:f000406e744f371ee9b46d068423a7e05d2114e123aad847b9c0ea4b51d39afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0c7323bdd6fe6d56c213ad1a3f4ff346079b4c41cd21f522e496b8080009b3`

```dockerfile
```

-	Layers:
	-	`sha256:9a0ab3c248583d46ca2f71e40ee70c0c2dbfc695307945644492b3c04d030784`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 3.3 MB (3275153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47bad14e44fad561d8c420a37c13877647a550b05a7b8c15c8d890aec0980c22`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:577e12d517b0ba903656f9bbb8f3f8fa0dc5ba21e5cc7899c344b64db24fccba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147681689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dd20db9a3b77ac2d8fb953f6c75ed07bcc76e43d6a83bd820145a72d958acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:16:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 02:17:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:17:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:17:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:17:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:17:40 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:17:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efefba5c977a5e3d3efcfacf7b01cf840ff6b827da6bc8c8fc9cf3b2dcc3b7`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 42.8 MB (42801383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2772c4e54793170b2f28f48ea229fd847fb11bd34e244ca31b8caba764872c65`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495f207421058439543aad02861ac20a2ba4c1840b76713338736c08265c6b53`  
		Last Modified: Thu, 16 Jul 2026 02:17:58 GMT  
		Size: 52.1 MB (52079248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee8779963b80d91ee50500f27c3b29ec479e6bd17b1a0e44b82179d3df8f4c0`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:9638160e188e0210955ff7083e064d095ad2fa7fb97221ad8863a6b9fb572ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6f52659fd3561509d1f6967981231c195f2dd8814cd7105bac11cbd5d27194`

```dockerfile
```

-	Layers:
	-	`sha256:cdcc34104e269193b4a72d7d1a717118610ac7add351afffce4af2914964cae6`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 3.3 MB (3279066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bfb9dfc0a329e62d5f342c5096545fbbfe0e080ffd1a501e03693f8b290bfbe`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:1d6ff666e1e745562ed3170fab9ae341d7eda59424361b378f3d881ae8cd84fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139021594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05ddba42c94d9fc8588738ecf14247aa0a4ef9335e37cd3b61e7e7e0ab44d487`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:39:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:40:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:40:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:40:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:40:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:40:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:40:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c9350f44f24160d9cf411e49dbc323e94dd740660f92ebf8a90fa32def3c5`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 41.4 MB (41354057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72540e254bb042a473e9b07a32faaada13ede18dac7ac1e436f863c55d5c8489`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8c7d661fa4eb720b0730bb4d556fd79c9e78ee593793834b4296d8e97c4a99`  
		Last Modified: Thu, 16 Jul 2026 01:40:58 GMT  
		Size: 52.1 MB (52079117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f848adfc3061f8dff8b17acfdcd0418cfa14ddfc72a9e8f7c1b1709d0f9ac3`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:f0c2565693eb822e7eb27944b3e2e7e269c8a5535dbf0d172161864bcef11cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31da58059cd6e65460fe454e0dfdf7e8593a26b5c3122431fc33572a32b709cc`

```dockerfile
```

-	Layers:
	-	`sha256:77c8fa1477411bc91ccd70352e338523689e4128ba68ab54b074927e74477a30`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 3.3 MB (3270960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c74326e1997a7ccaa9bf5195e7e9dd54d6f7226a2c636e4d6f5768f53e1a5c8`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.20`

```console
$ docker pull cassandra@sha256:7506c8894f83b1a52b3347f78bcf5e165e150ac5dae669808d1c7086c2b63dcf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:4.0.20` - linux; amd64

```console
$ docker pull cassandra@sha256:4c584683808ed93c445a6fd5118d214300546f6136e42ee4f64278fd71b99508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147066362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ea417a1c164f62707f5390e435d302e1140b383235ad663cb1f69e170240d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:22:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:22:58 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:22:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:22:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:22:58 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:22:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0daf6179f22050424be2566bb137029a601d0d567dcfa2158749500534976f`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 47.3 MB (47336009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a26c88ed6ef425fe3395f6f87eacd0c8f8671930a41f02e1ad6a9fb0ac79a`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b5101d2eecfad8857296715d80223fd75c8f129c0317f5cb22116cbb4ff544`  
		Last Modified: Thu, 16 Jul 2026 01:23:08 GMT  
		Size: 52.1 MB (52079119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0a048de0abff687595508dc4ac19993b39f72d2801b935395fcca56397c336`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:d9973dc5a0592f1af7861dc0b4df759e10228a9fa779286101bf53fa64d34947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be427fb6fe31d1fb9b87af69e575fb9c4422fb5d567a99438cf99879c9158bfe`

```dockerfile
```

-	Layers:
	-	`sha256:21536d8e1e1b82307fb44cc39fca32dc193b2566cc8d81cbb12877f1381146d0`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 3.3 MB (3274818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a53371d434469fc6b63744fa8b74033b1dcebe08ae308f5b58027b68e0c5c857`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:34ac4ae71b4d72d02310468a7ad5e9c665a2f0b7a817aaad88f8ce15d4bf484d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138916293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f64b62a4c4b32a2de82f6958109f1daee4c043aa0b109347161f23b5440dec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:14:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:14:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:14:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:58 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:14:58 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:58 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:15:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:15:21 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:15:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:15:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:15:21 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:15:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57400d2c94097cfa653c058a7b74ac147367e0ded7fd2fe0d8c73893e631397`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3202515c31c3a7cf2a4087b571df6eb5f142e202cc3cea2c6031f87080ad2e17`  
		Last Modified: Thu, 16 Jul 2026 01:15:34 GMT  
		Size: 16.2 MB (16217391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090b6d2024878d4210d9dfa43954c4453c310e60252e7c2fa2ad496918aa2ce6`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 1.2 MB (1232595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b469ea6d5e25e638f61b8cf6e3aee1b5c886fbbf55b204f57462c9659a947a`  
		Last Modified: Thu, 16 Jul 2026 01:15:35 GMT  
		Size: 45.4 MB (45444966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64d043945008501b0844af9fbe7eb6f6eeacf7ad77d34c8a30538a9e1dd9862`  
		Last Modified: Thu, 16 Jul 2026 01:15:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b5c95a492acca1a1d1c819a6633087bc9e38c279378819801ca8d1802f3c70`  
		Last Modified: Thu, 16 Jul 2026 01:15:36 GMT  
		Size: 52.1 MB (52079102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba2ecee467f817adf63e340bfddbadabc2174e72cf63a1c37ba5fa6dbcb60e8`  
		Last Modified: Thu, 16 Jul 2026 01:15:35 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:c620fb762aa2fefaaa7f257354cc648ce50b51dc16280194d52a6dfb06853998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3726c4e0b24c3c638b0c3751be1ec9b1722927c021680fc9586212bf9c07576b`

```dockerfile
```

-	Layers:
	-	`sha256:2ab3238d487b10371c84c31e85b2b75cca86e01444e3bd7065f47b2ba1b1dd7a`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 3.3 MB (3278532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c0955c58114f51abac4b1e6f082eeede319ed10791e9dff733ba755045f5bf3`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 36.0 KB (36026 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:d86c2df934ce9bc5dafa1e0d2ffc4f8f26f0ab45ed3d2eb40e4b14287729bd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144973322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99c6872e1666f5661738a68efacb60a567b2f19e3a0f5a58c859ca7f797fafd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:43 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:43 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:43 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:19:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:19:02 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:19:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:19:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:19:02 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:19:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc50608e777dd60fb5931a75f968e90d869cc0a62ef4f0f439a488aa8adbccf`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9371ff41a25ab8a2c5323018a325b89d056284ec23ad5020431ced8f5817e5dd`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 17.9 MB (17901622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d70edef99e806b5a074bb8337104079031fc1bc2960be42d7c1bbd5dc6b7a7`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 1.2 MB (1220113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa526d7890afd23963b5c846f5745d6cdffa175ab54b8059d51841239b3fe644`  
		Last Modified: Thu, 16 Jul 2026 01:19:16 GMT  
		Size: 45.7 MB (45652827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a3a8f40fe571bdba02712ead592c5854cd0d516b7d7e18b9cee0c72aae46bd`  
		Last Modified: Thu, 16 Jul 2026 01:19:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3dbdbc2081c497cceba5d696358c4f7213e0b24c4d7c4f8eed0c013a0819f0`  
		Last Modified: Thu, 16 Jul 2026 01:19:17 GMT  
		Size: 52.1 MB (52079045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ff3c19312ca1da13416badb1f4c821f48cbf15c03f7abdcd348592440d4c25`  
		Last Modified: Thu, 16 Jul 2026 01:19:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:f000406e744f371ee9b46d068423a7e05d2114e123aad847b9c0ea4b51d39afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0c7323bdd6fe6d56c213ad1a3f4ff346079b4c41cd21f522e496b8080009b3`

```dockerfile
```

-	Layers:
	-	`sha256:9a0ab3c248583d46ca2f71e40ee70c0c2dbfc695307945644492b3c04d030784`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 3.3 MB (3275153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47bad14e44fad561d8c420a37c13877647a550b05a7b8c15c8d890aec0980c22`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; ppc64le

```console
$ docker pull cassandra@sha256:577e12d517b0ba903656f9bbb8f3f8fa0dc5ba21e5cc7899c344b64db24fccba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147681689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dd20db9a3b77ac2d8fb953f6c75ed07bcc76e43d6a83bd820145a72d958acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:16:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 02:17:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:17:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:17:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:17:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:17:40 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:17:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efefba5c977a5e3d3efcfacf7b01cf840ff6b827da6bc8c8fc9cf3b2dcc3b7`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 42.8 MB (42801383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2772c4e54793170b2f28f48ea229fd847fb11bd34e244ca31b8caba764872c65`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495f207421058439543aad02861ac20a2ba4c1840b76713338736c08265c6b53`  
		Last Modified: Thu, 16 Jul 2026 02:17:58 GMT  
		Size: 52.1 MB (52079248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee8779963b80d91ee50500f27c3b29ec479e6bd17b1a0e44b82179d3df8f4c0`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:9638160e188e0210955ff7083e064d095ad2fa7fb97221ad8863a6b9fb572ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6f52659fd3561509d1f6967981231c195f2dd8814cd7105bac11cbd5d27194`

```dockerfile
```

-	Layers:
	-	`sha256:cdcc34104e269193b4a72d7d1a717118610ac7add351afffce4af2914964cae6`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 3.3 MB (3279066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bfb9dfc0a329e62d5f342c5096545fbbfe0e080ffd1a501e03693f8b290bfbe`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; s390x

```console
$ docker pull cassandra@sha256:1d6ff666e1e745562ed3170fab9ae341d7eda59424361b378f3d881ae8cd84fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139021594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05ddba42c94d9fc8588738ecf14247aa0a4ef9335e37cd3b61e7e7e0ab44d487`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:39:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:40:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:40:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:40:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:40:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:40:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:40:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c9350f44f24160d9cf411e49dbc323e94dd740660f92ebf8a90fa32def3c5`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 41.4 MB (41354057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72540e254bb042a473e9b07a32faaada13ede18dac7ac1e436f863c55d5c8489`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8c7d661fa4eb720b0730bb4d556fd79c9e78ee593793834b4296d8e97c4a99`  
		Last Modified: Thu, 16 Jul 2026 01:40:58 GMT  
		Size: 52.1 MB (52079117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f848adfc3061f8dff8b17acfdcd0418cfa14ddfc72a9e8f7c1b1709d0f9ac3`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:f0c2565693eb822e7eb27944b3e2e7e269c8a5535dbf0d172161864bcef11cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31da58059cd6e65460fe454e0dfdf7e8593a26b5c3122431fc33572a32b709cc`

```dockerfile
```

-	Layers:
	-	`sha256:77c8fa1477411bc91ccd70352e338523689e4128ba68ab54b074927e74477a30`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 3.3 MB (3270960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c74326e1997a7ccaa9bf5195e7e9dd54d6f7226a2c636e4d6f5768f53e1a5c8`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.20-bookworm`

```console
$ docker pull cassandra@sha256:7506c8894f83b1a52b3347f78bcf5e165e150ac5dae669808d1c7086c2b63dcf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:4.0.20-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:4c584683808ed93c445a6fd5118d214300546f6136e42ee4f64278fd71b99508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147066362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ea417a1c164f62707f5390e435d302e1140b383235ad663cb1f69e170240d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:22:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:22:58 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:22:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:22:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:22:58 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:22:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0daf6179f22050424be2566bb137029a601d0d567dcfa2158749500534976f`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 47.3 MB (47336009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a26c88ed6ef425fe3395f6f87eacd0c8f8671930a41f02e1ad6a9fb0ac79a`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b5101d2eecfad8857296715d80223fd75c8f129c0317f5cb22116cbb4ff544`  
		Last Modified: Thu, 16 Jul 2026 01:23:08 GMT  
		Size: 52.1 MB (52079119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0a048de0abff687595508dc4ac19993b39f72d2801b935395fcca56397c336`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:d9973dc5a0592f1af7861dc0b4df759e10228a9fa779286101bf53fa64d34947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be427fb6fe31d1fb9b87af69e575fb9c4422fb5d567a99438cf99879c9158bfe`

```dockerfile
```

-	Layers:
	-	`sha256:21536d8e1e1b82307fb44cc39fca32dc193b2566cc8d81cbb12877f1381146d0`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 3.3 MB (3274818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a53371d434469fc6b63744fa8b74033b1dcebe08ae308f5b58027b68e0c5c857`  
		Last Modified: Thu, 16 Jul 2026 01:23:06 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:34ac4ae71b4d72d02310468a7ad5e9c665a2f0b7a817aaad88f8ce15d4bf484d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138916293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f64b62a4c4b32a2de82f6958109f1daee4c043aa0b109347161f23b5440dec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:14:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:14:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:14:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:58 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:14:58 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:58 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:14:58 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:15:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:15:21 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:15:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:15:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:15:21 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:15:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57400d2c94097cfa653c058a7b74ac147367e0ded7fd2fe0d8c73893e631397`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3202515c31c3a7cf2a4087b571df6eb5f142e202cc3cea2c6031f87080ad2e17`  
		Last Modified: Thu, 16 Jul 2026 01:15:34 GMT  
		Size: 16.2 MB (16217391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090b6d2024878d4210d9dfa43954c4453c310e60252e7c2fa2ad496918aa2ce6`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 1.2 MB (1232595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b469ea6d5e25e638f61b8cf6e3aee1b5c886fbbf55b204f57462c9659a947a`  
		Last Modified: Thu, 16 Jul 2026 01:15:35 GMT  
		Size: 45.4 MB (45444966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64d043945008501b0844af9fbe7eb6f6eeacf7ad77d34c8a30538a9e1dd9862`  
		Last Modified: Thu, 16 Jul 2026 01:15:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b5c95a492acca1a1d1c819a6633087bc9e38c279378819801ca8d1802f3c70`  
		Last Modified: Thu, 16 Jul 2026 01:15:36 GMT  
		Size: 52.1 MB (52079102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba2ecee467f817adf63e340bfddbadabc2174e72cf63a1c37ba5fa6dbcb60e8`  
		Last Modified: Thu, 16 Jul 2026 01:15:35 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c620fb762aa2fefaaa7f257354cc648ce50b51dc16280194d52a6dfb06853998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3726c4e0b24c3c638b0c3751be1ec9b1722927c021680fc9586212bf9c07576b`

```dockerfile
```

-	Layers:
	-	`sha256:2ab3238d487b10371c84c31e85b2b75cca86e01444e3bd7065f47b2ba1b1dd7a`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 3.3 MB (3278532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c0955c58114f51abac4b1e6f082eeede319ed10791e9dff733ba755045f5bf3`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 36.0 KB (36026 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:d86c2df934ce9bc5dafa1e0d2ffc4f8f26f0ab45ed3d2eb40e4b14287729bd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144973322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99c6872e1666f5661738a68efacb60a567b2f19e3a0f5a58c859ca7f797fafd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:43 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:43 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:43 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:18:43 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:19:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:19:02 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:19:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:19:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:19:02 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:19:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc50608e777dd60fb5931a75f968e90d869cc0a62ef4f0f439a488aa8adbccf`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9371ff41a25ab8a2c5323018a325b89d056284ec23ad5020431ced8f5817e5dd`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 17.9 MB (17901622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d70edef99e806b5a074bb8337104079031fc1bc2960be42d7c1bbd5dc6b7a7`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 1.2 MB (1220113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa526d7890afd23963b5c846f5745d6cdffa175ab54b8059d51841239b3fe644`  
		Last Modified: Thu, 16 Jul 2026 01:19:16 GMT  
		Size: 45.7 MB (45652827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a3a8f40fe571bdba02712ead592c5854cd0d516b7d7e18b9cee0c72aae46bd`  
		Last Modified: Thu, 16 Jul 2026 01:19:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3dbdbc2081c497cceba5d696358c4f7213e0b24c4d7c4f8eed0c013a0819f0`  
		Last Modified: Thu, 16 Jul 2026 01:19:17 GMT  
		Size: 52.1 MB (52079045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ff3c19312ca1da13416badb1f4c821f48cbf15c03f7abdcd348592440d4c25`  
		Last Modified: Thu, 16 Jul 2026 01:19:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:f000406e744f371ee9b46d068423a7e05d2114e123aad847b9c0ea4b51d39afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0c7323bdd6fe6d56c213ad1a3f4ff346079b4c41cd21f522e496b8080009b3`

```dockerfile
```

-	Layers:
	-	`sha256:9a0ab3c248583d46ca2f71e40ee70c0c2dbfc695307945644492b3c04d030784`  
		Last Modified: Thu, 16 Jul 2026 01:19:15 GMT  
		Size: 3.3 MB (3275153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47bad14e44fad561d8c420a37c13877647a550b05a7b8c15c8d890aec0980c22`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:577e12d517b0ba903656f9bbb8f3f8fa0dc5ba21e5cc7899c344b64db24fccba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147681689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dd20db9a3b77ac2d8fb953f6c75ed07bcc76e43d6a83bd820145a72d958acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:16:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 02:17:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:17:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:17:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:17:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:17:40 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:17:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efefba5c977a5e3d3efcfacf7b01cf840ff6b827da6bc8c8fc9cf3b2dcc3b7`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 42.8 MB (42801383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2772c4e54793170b2f28f48ea229fd847fb11bd34e244ca31b8caba764872c65`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495f207421058439543aad02861ac20a2ba4c1840b76713338736c08265c6b53`  
		Last Modified: Thu, 16 Jul 2026 02:17:58 GMT  
		Size: 52.1 MB (52079248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee8779963b80d91ee50500f27c3b29ec479e6bd17b1a0e44b82179d3df8f4c0`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:9638160e188e0210955ff7083e064d095ad2fa7fb97221ad8863a6b9fb572ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6f52659fd3561509d1f6967981231c195f2dd8814cd7105bac11cbd5d27194`

```dockerfile
```

-	Layers:
	-	`sha256:cdcc34104e269193b4a72d7d1a717118610ac7add351afffce4af2914964cae6`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 3.3 MB (3279066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bfb9dfc0a329e62d5f342c5096545fbbfe0e080ffd1a501e03693f8b290bfbe`  
		Last Modified: Thu, 16 Jul 2026 02:17:57 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:1d6ff666e1e745562ed3170fab9ae341d7eda59424361b378f3d881ae8cd84fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139021594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05ddba42c94d9fc8588738ecf14247aa0a4ef9335e37cd3b61e7e7e0ab44d487`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:39:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 16 Jul 2026 01:40:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:40:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:40:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:40:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:40:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:40:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c9350f44f24160d9cf411e49dbc323e94dd740660f92ebf8a90fa32def3c5`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 41.4 MB (41354057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72540e254bb042a473e9b07a32faaada13ede18dac7ac1e436f863c55d5c8489`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8c7d661fa4eb720b0730bb4d556fd79c9e78ee593793834b4296d8e97c4a99`  
		Last Modified: Thu, 16 Jul 2026 01:40:58 GMT  
		Size: 52.1 MB (52079117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f848adfc3061f8dff8b17acfdcd0418cfa14ddfc72a9e8f7c1b1709d0f9ac3`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:f0c2565693eb822e7eb27944b3e2e7e269c8a5535dbf0d172161864bcef11cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31da58059cd6e65460fe454e0dfdf7e8593a26b5c3122431fc33572a32b709cc`

```dockerfile
```

-	Layers:
	-	`sha256:77c8fa1477411bc91ccd70352e338523689e4128ba68ab54b074927e74477a30`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 3.3 MB (3270960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c74326e1997a7ccaa9bf5195e7e9dd54d6f7226a2c636e4d6f5768f53e1a5c8`  
		Last Modified: Thu, 16 Jul 2026 01:40:57 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1`

```console
$ docker pull cassandra@sha256:d25e8ee78d648fade002d0d176b7e8c953c69164b9f316ccbccf62f524c9dfbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:4.1` - linux; amd64

```console
$ docker pull cassandra@sha256:f44af1ae1cc5f6aa8982c8926032b06f39fcba85e538cac16a12fa7a2f548030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3a1447d447d4d40dce98b78750d59dc979c23cb0064232d99bc9c2a8691e11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:22:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:22:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:22:14 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:22:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0daf6179f22050424be2566bb137029a601d0d567dcfa2158749500534976f`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 47.3 MB (47336009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a26c88ed6ef425fe3395f6f87eacd0c8f8671930a41f02e1ad6a9fb0ac79a`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8adb70d5fa2392ea6446b47cbfa67ab9ad9b9f110496c6c439192f4f11762d`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 54.2 MB (54194354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c871ee9a4c717731f6267513513587a82346249f51bf1a01afd700861fb0748f`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:1a8a4ecd6d08ff0aeba3d395016628e271443cd8ce2abaec66326845e60c6bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f85d5ef04b8d6d6c37662ac2d4da4cff5595e5d2e3c823c4ae28960b3d1c27`

```dockerfile
```

-	Layers:
	-	`sha256:6ff82ffd26627f5d758f0a091bddbe82a02d5cbfacdade3c6b4117e10bc76dae`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec0b4c7662e4c100e515c702923319c22b4d73a9e9a9bbf2bbc713738c40f7b5`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:83e9cd855e972cf6766391cfd19acb54b5541514ca20eaf96c8dd64eeea3b50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4732a15d4efc8aa2d2c6eef224649baa6e09751d426cd9bee14e281102bbcf9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:14:13 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:14:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:14:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:14:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:14:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb74b534763c538f1e79a7ee42dde28c5bb48524373cf74f4b3b72e548aa8e9e`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9ac80b65b49a3b763c4249f61ca5e668fb92a3e0211e0a4e582af9c3457ed4`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 16.2 MB (16217465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38223602804facf32afdfe5c1bdbdf5206ed38daf49e10952841fe08e0bd936`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.2 MB (1232605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a62bf9c6da4fef336bc375d5c9c61f302690363786019ac955de58ea22e693`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 45.4 MB (45445023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec6dfcf164f0dd05a0adb57353737427d2fda9f59f8197978bec893ea94db9f`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae43cb41b51f48b25423282722a8ef7569649438130f9fd4a3037b05fe3cde8`  
		Last Modified: Thu, 16 Jul 2026 01:15:12 GMT  
		Size: 54.2 MB (54194443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144db921fb3f4252fb6860f4b669c1999875d582704a1b2f4d0051d07514e27`  
		Last Modified: Thu, 16 Jul 2026 01:15:11 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:7ae1ea318bc515d9709c8c1b3102cea567599d8ac4c4e284d6740e85dfce7bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46858ea0ff52d76cffdf9684546d1b4ed89ef0ac7fa9ced6006440344c8ad130`

```dockerfile
```

-	Layers:
	-	`sha256:eceff39ecd4dff052a482920f0004645239299cd38c5b73bd4b6b98291b1b5c7`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8152c13b9419347b2e8e973303e6e7da8fcf34ba8be84da6cb4306d89c59b145`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4966290ad15fe9dde2eb1b8a48f61cd82edcc4fe919f153b50f242f2b47f36f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddc20d8c067735664d0494ee866bfcab53bd31f78a963695e2e3e478923c6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:18:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21348197d145aa9a70e7f6f8259e18e26c7b479f4a237885c8da630efe3c6b5c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42036887571451a8e4f36d71c9a517dc5401e267e7fc8df643f3605af2e98294`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b20a1dd0e787ec8cf58a999087512abd73a88b0aa91a2989e7f23958010e348`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb68afefca8f6ae94b1d6f6982f290d376bb908aecdc6c5b9b397d79f2914ad`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 45.7 MB (45652841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c7f39798946cabb37e758e7f239e1a65c995700465cde48aaea0b63708ac48`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 54.2 MB (54194455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669c350a6a883ce1a62369c2662ca2656c6403e51ff6e0f470d4acfb5af7fe71`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:9b548066354c34ee96f0c1aa588cceffa0f7261ef6e437a012afe50a0dc10eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea33b9d8a988c90371f4e4fcd6a1f94f7459659ebc2bdf6fe12176aedf1a988`

```dockerfile
```

-	Layers:
	-	`sha256:ca4801f4d62cb7445ca663ccb3eb5ce3dbdd54537c5710176884cdc7bd4c2ff3`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517aab035da72a321f82e2f14e05560dba038081c5bdbcc01d656dbc44728d49`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; ppc64le

```console
$ docker pull cassandra@sha256:be9fc62eddcebc9713f0079ebb892473fb230d5cb23e6f529a1ec10cdf1abf15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f452a473e3207102c120e445768707792aeb2a11b22ed2f618df578af99a344`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:16:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 02:16:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:16:35 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:16:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:16:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:16:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:16:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efefba5c977a5e3d3efcfacf7b01cf840ff6b827da6bc8c8fc9cf3b2dcc3b7`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 42.8 MB (42801383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2772c4e54793170b2f28f48ea229fd847fb11bd34e244ca31b8caba764872c65`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223baed69ca51d52ac304389e33fc78481b478e8bc43bb01d2d799a42c645ff0`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 54.2 MB (54194717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35bf29e1fd6f90fc6c182576f61dda3a9725ea015d69795562491894658eea9`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:02c9a7c91ddbae529f3e7c310820da57f46ab97f4eed613467397c9946c0361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b2b7846f773bc164299c5a72a09f57db4cf6b258b0b0666de9626a0e439766`

```dockerfile
```

-	Layers:
	-	`sha256:41b30ba05bda3b0d66b4cab6f29b775eb8a41d5c9fd2ac425e90a5271972c0c8`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177f2573b3e811236d1e5c296c64775469b4efff5529e4d62016ad52989f1c4a`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; s390x

```console
$ docker pull cassandra@sha256:3658280cea2a266ed8715dd98bb469c198ee39d2cca1c03d3800342a2249bb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141136910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ea1f2ff91d7df9018c2653a08e4aa4057e8c9edf5fb974b9ce611245cec2c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:39:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:39:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:39:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:39:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:39:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c9350f44f24160d9cf411e49dbc323e94dd740660f92ebf8a90fa32def3c5`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 41.4 MB (41354057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72540e254bb042a473e9b07a32faaada13ede18dac7ac1e436f863c55d5c8489`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88bfce1ebb5b410ad05c514dcb8f6dcffa8e053b10d677792c60a696a10a1e0d`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 54.2 MB (54194434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7de62ec4943d56363cea5d9d160df04a97a5add682e0e96ad36d8d2fccb2697`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:17a6660db2d3e619c15abf4c04668ae4f3d34f26a0716b856ed121433a18ea9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e0bd19fe9a93bd91dc293af3d861034f2b3558c3fe32a363400b85ebf09b3e`

```dockerfile
```

-	Layers:
	-	`sha256:48438ee50f1123f3a45db436e97813a61f89f7ca25338d9e94f254e872fb5ef9`  
		Last Modified: Thu, 16 Jul 2026 01:40:10 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:992eb34d577ead2f4b7216559ca15a9dda4829f8e1a203f4ed1335db85986439`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1-bookworm`

```console
$ docker pull cassandra@sha256:d25e8ee78d648fade002d0d176b7e8c953c69164b9f316ccbccf62f524c9dfbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:4.1-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:f44af1ae1cc5f6aa8982c8926032b06f39fcba85e538cac16a12fa7a2f548030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3a1447d447d4d40dce98b78750d59dc979c23cb0064232d99bc9c2a8691e11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:22:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:22:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:22:14 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:22:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0daf6179f22050424be2566bb137029a601d0d567dcfa2158749500534976f`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 47.3 MB (47336009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a26c88ed6ef425fe3395f6f87eacd0c8f8671930a41f02e1ad6a9fb0ac79a`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8adb70d5fa2392ea6446b47cbfa67ab9ad9b9f110496c6c439192f4f11762d`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 54.2 MB (54194354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c871ee9a4c717731f6267513513587a82346249f51bf1a01afd700861fb0748f`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1a8a4ecd6d08ff0aeba3d395016628e271443cd8ce2abaec66326845e60c6bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f85d5ef04b8d6d6c37662ac2d4da4cff5595e5d2e3c823c4ae28960b3d1c27`

```dockerfile
```

-	Layers:
	-	`sha256:6ff82ffd26627f5d758f0a091bddbe82a02d5cbfacdade3c6b4117e10bc76dae`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec0b4c7662e4c100e515c702923319c22b4d73a9e9a9bbf2bbc713738c40f7b5`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:83e9cd855e972cf6766391cfd19acb54b5541514ca20eaf96c8dd64eeea3b50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4732a15d4efc8aa2d2c6eef224649baa6e09751d426cd9bee14e281102bbcf9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:14:13 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:14:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:14:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:14:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:14:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb74b534763c538f1e79a7ee42dde28c5bb48524373cf74f4b3b72e548aa8e9e`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9ac80b65b49a3b763c4249f61ca5e668fb92a3e0211e0a4e582af9c3457ed4`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 16.2 MB (16217465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38223602804facf32afdfe5c1bdbdf5206ed38daf49e10952841fe08e0bd936`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.2 MB (1232605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a62bf9c6da4fef336bc375d5c9c61f302690363786019ac955de58ea22e693`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 45.4 MB (45445023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec6dfcf164f0dd05a0adb57353737427d2fda9f59f8197978bec893ea94db9f`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae43cb41b51f48b25423282722a8ef7569649438130f9fd4a3037b05fe3cde8`  
		Last Modified: Thu, 16 Jul 2026 01:15:12 GMT  
		Size: 54.2 MB (54194443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144db921fb3f4252fb6860f4b669c1999875d582704a1b2f4d0051d07514e27`  
		Last Modified: Thu, 16 Jul 2026 01:15:11 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:7ae1ea318bc515d9709c8c1b3102cea567599d8ac4c4e284d6740e85dfce7bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46858ea0ff52d76cffdf9684546d1b4ed89ef0ac7fa9ced6006440344c8ad130`

```dockerfile
```

-	Layers:
	-	`sha256:eceff39ecd4dff052a482920f0004645239299cd38c5b73bd4b6b98291b1b5c7`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8152c13b9419347b2e8e973303e6e7da8fcf34ba8be84da6cb4306d89c59b145`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4966290ad15fe9dde2eb1b8a48f61cd82edcc4fe919f153b50f242f2b47f36f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddc20d8c067735664d0494ee866bfcab53bd31f78a963695e2e3e478923c6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:18:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21348197d145aa9a70e7f6f8259e18e26c7b479f4a237885c8da630efe3c6b5c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42036887571451a8e4f36d71c9a517dc5401e267e7fc8df643f3605af2e98294`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b20a1dd0e787ec8cf58a999087512abd73a88b0aa91a2989e7f23958010e348`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb68afefca8f6ae94b1d6f6982f290d376bb908aecdc6c5b9b397d79f2914ad`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 45.7 MB (45652841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c7f39798946cabb37e758e7f239e1a65c995700465cde48aaea0b63708ac48`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 54.2 MB (54194455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669c350a6a883ce1a62369c2662ca2656c6403e51ff6e0f470d4acfb5af7fe71`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:9b548066354c34ee96f0c1aa588cceffa0f7261ef6e437a012afe50a0dc10eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea33b9d8a988c90371f4e4fcd6a1f94f7459659ebc2bdf6fe12176aedf1a988`

```dockerfile
```

-	Layers:
	-	`sha256:ca4801f4d62cb7445ca663ccb3eb5ce3dbdd54537c5710176884cdc7bd4c2ff3`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517aab035da72a321f82e2f14e05560dba038081c5bdbcc01d656dbc44728d49`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:be9fc62eddcebc9713f0079ebb892473fb230d5cb23e6f529a1ec10cdf1abf15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f452a473e3207102c120e445768707792aeb2a11b22ed2f618df578af99a344`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:16:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 02:16:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:16:35 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:16:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:16:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:16:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:16:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efefba5c977a5e3d3efcfacf7b01cf840ff6b827da6bc8c8fc9cf3b2dcc3b7`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 42.8 MB (42801383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2772c4e54793170b2f28f48ea229fd847fb11bd34e244ca31b8caba764872c65`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223baed69ca51d52ac304389e33fc78481b478e8bc43bb01d2d799a42c645ff0`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 54.2 MB (54194717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35bf29e1fd6f90fc6c182576f61dda3a9725ea015d69795562491894658eea9`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:02c9a7c91ddbae529f3e7c310820da57f46ab97f4eed613467397c9946c0361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b2b7846f773bc164299c5a72a09f57db4cf6b258b0b0666de9626a0e439766`

```dockerfile
```

-	Layers:
	-	`sha256:41b30ba05bda3b0d66b4cab6f29b775eb8a41d5c9fd2ac425e90a5271972c0c8`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177f2573b3e811236d1e5c296c64775469b4efff5529e4d62016ad52989f1c4a`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:3658280cea2a266ed8715dd98bb469c198ee39d2cca1c03d3800342a2249bb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141136910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ea1f2ff91d7df9018c2653a08e4aa4057e8c9edf5fb974b9ce611245cec2c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:39:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:39:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:39:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:39:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:39:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c9350f44f24160d9cf411e49dbc323e94dd740660f92ebf8a90fa32def3c5`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 41.4 MB (41354057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72540e254bb042a473e9b07a32faaada13ede18dac7ac1e436f863c55d5c8489`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88bfce1ebb5b410ad05c514dcb8f6dcffa8e053b10d677792c60a696a10a1e0d`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 54.2 MB (54194434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7de62ec4943d56363cea5d9d160df04a97a5add682e0e96ad36d8d2fccb2697`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:17a6660db2d3e619c15abf4c04668ae4f3d34f26a0716b856ed121433a18ea9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e0bd19fe9a93bd91dc293af3d861034f2b3558c3fe32a363400b85ebf09b3e`

```dockerfile
```

-	Layers:
	-	`sha256:48438ee50f1123f3a45db436e97813a61f89f7ca25338d9e94f254e872fb5ef9`  
		Last Modified: Thu, 16 Jul 2026 01:40:10 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:992eb34d577ead2f4b7216559ca15a9dda4829f8e1a203f4ed1335db85986439`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.11`

```console
$ docker pull cassandra@sha256:d25e8ee78d648fade002d0d176b7e8c953c69164b9f316ccbccf62f524c9dfbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:4.1.11` - linux; amd64

```console
$ docker pull cassandra@sha256:f44af1ae1cc5f6aa8982c8926032b06f39fcba85e538cac16a12fa7a2f548030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3a1447d447d4d40dce98b78750d59dc979c23cb0064232d99bc9c2a8691e11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:22:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:22:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:22:14 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:22:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0daf6179f22050424be2566bb137029a601d0d567dcfa2158749500534976f`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 47.3 MB (47336009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a26c88ed6ef425fe3395f6f87eacd0c8f8671930a41f02e1ad6a9fb0ac79a`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8adb70d5fa2392ea6446b47cbfa67ab9ad9b9f110496c6c439192f4f11762d`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 54.2 MB (54194354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c871ee9a4c717731f6267513513587a82346249f51bf1a01afd700861fb0748f`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:1a8a4ecd6d08ff0aeba3d395016628e271443cd8ce2abaec66326845e60c6bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f85d5ef04b8d6d6c37662ac2d4da4cff5595e5d2e3c823c4ae28960b3d1c27`

```dockerfile
```

-	Layers:
	-	`sha256:6ff82ffd26627f5d758f0a091bddbe82a02d5cbfacdade3c6b4117e10bc76dae`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec0b4c7662e4c100e515c702923319c22b4d73a9e9a9bbf2bbc713738c40f7b5`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:83e9cd855e972cf6766391cfd19acb54b5541514ca20eaf96c8dd64eeea3b50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4732a15d4efc8aa2d2c6eef224649baa6e09751d426cd9bee14e281102bbcf9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:14:13 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:14:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:14:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:14:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:14:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb74b534763c538f1e79a7ee42dde28c5bb48524373cf74f4b3b72e548aa8e9e`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9ac80b65b49a3b763c4249f61ca5e668fb92a3e0211e0a4e582af9c3457ed4`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 16.2 MB (16217465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38223602804facf32afdfe5c1bdbdf5206ed38daf49e10952841fe08e0bd936`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.2 MB (1232605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a62bf9c6da4fef336bc375d5c9c61f302690363786019ac955de58ea22e693`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 45.4 MB (45445023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec6dfcf164f0dd05a0adb57353737427d2fda9f59f8197978bec893ea94db9f`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae43cb41b51f48b25423282722a8ef7569649438130f9fd4a3037b05fe3cde8`  
		Last Modified: Thu, 16 Jul 2026 01:15:12 GMT  
		Size: 54.2 MB (54194443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144db921fb3f4252fb6860f4b669c1999875d582704a1b2f4d0051d07514e27`  
		Last Modified: Thu, 16 Jul 2026 01:15:11 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:7ae1ea318bc515d9709c8c1b3102cea567599d8ac4c4e284d6740e85dfce7bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46858ea0ff52d76cffdf9684546d1b4ed89ef0ac7fa9ced6006440344c8ad130`

```dockerfile
```

-	Layers:
	-	`sha256:eceff39ecd4dff052a482920f0004645239299cd38c5b73bd4b6b98291b1b5c7`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8152c13b9419347b2e8e973303e6e7da8fcf34ba8be84da6cb4306d89c59b145`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4966290ad15fe9dde2eb1b8a48f61cd82edcc4fe919f153b50f242f2b47f36f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddc20d8c067735664d0494ee866bfcab53bd31f78a963695e2e3e478923c6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:18:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21348197d145aa9a70e7f6f8259e18e26c7b479f4a237885c8da630efe3c6b5c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42036887571451a8e4f36d71c9a517dc5401e267e7fc8df643f3605af2e98294`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b20a1dd0e787ec8cf58a999087512abd73a88b0aa91a2989e7f23958010e348`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb68afefca8f6ae94b1d6f6982f290d376bb908aecdc6c5b9b397d79f2914ad`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 45.7 MB (45652841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c7f39798946cabb37e758e7f239e1a65c995700465cde48aaea0b63708ac48`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 54.2 MB (54194455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669c350a6a883ce1a62369c2662ca2656c6403e51ff6e0f470d4acfb5af7fe71`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:9b548066354c34ee96f0c1aa588cceffa0f7261ef6e437a012afe50a0dc10eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea33b9d8a988c90371f4e4fcd6a1f94f7459659ebc2bdf6fe12176aedf1a988`

```dockerfile
```

-	Layers:
	-	`sha256:ca4801f4d62cb7445ca663ccb3eb5ce3dbdd54537c5710176884cdc7bd4c2ff3`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517aab035da72a321f82e2f14e05560dba038081c5bdbcc01d656dbc44728d49`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:be9fc62eddcebc9713f0079ebb892473fb230d5cb23e6f529a1ec10cdf1abf15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f452a473e3207102c120e445768707792aeb2a11b22ed2f618df578af99a344`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:16:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 02:16:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:16:35 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:16:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:16:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:16:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:16:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efefba5c977a5e3d3efcfacf7b01cf840ff6b827da6bc8c8fc9cf3b2dcc3b7`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 42.8 MB (42801383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2772c4e54793170b2f28f48ea229fd847fb11bd34e244ca31b8caba764872c65`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223baed69ca51d52ac304389e33fc78481b478e8bc43bb01d2d799a42c645ff0`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 54.2 MB (54194717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35bf29e1fd6f90fc6c182576f61dda3a9725ea015d69795562491894658eea9`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:02c9a7c91ddbae529f3e7c310820da57f46ab97f4eed613467397c9946c0361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b2b7846f773bc164299c5a72a09f57db4cf6b258b0b0666de9626a0e439766`

```dockerfile
```

-	Layers:
	-	`sha256:41b30ba05bda3b0d66b4cab6f29b775eb8a41d5c9fd2ac425e90a5271972c0c8`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177f2573b3e811236d1e5c296c64775469b4efff5529e4d62016ad52989f1c4a`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; s390x

```console
$ docker pull cassandra@sha256:3658280cea2a266ed8715dd98bb469c198ee39d2cca1c03d3800342a2249bb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141136910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ea1f2ff91d7df9018c2653a08e4aa4057e8c9edf5fb974b9ce611245cec2c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:39:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:39:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:39:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:39:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:39:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c9350f44f24160d9cf411e49dbc323e94dd740660f92ebf8a90fa32def3c5`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 41.4 MB (41354057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72540e254bb042a473e9b07a32faaada13ede18dac7ac1e436f863c55d5c8489`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88bfce1ebb5b410ad05c514dcb8f6dcffa8e053b10d677792c60a696a10a1e0d`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 54.2 MB (54194434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7de62ec4943d56363cea5d9d160df04a97a5add682e0e96ad36d8d2fccb2697`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:17a6660db2d3e619c15abf4c04668ae4f3d34f26a0716b856ed121433a18ea9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e0bd19fe9a93bd91dc293af3d861034f2b3558c3fe32a363400b85ebf09b3e`

```dockerfile
```

-	Layers:
	-	`sha256:48438ee50f1123f3a45db436e97813a61f89f7ca25338d9e94f254e872fb5ef9`  
		Last Modified: Thu, 16 Jul 2026 01:40:10 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:992eb34d577ead2f4b7216559ca15a9dda4829f8e1a203f4ed1335db85986439`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.11-bookworm`

```console
$ docker pull cassandra@sha256:d25e8ee78d648fade002d0d176b7e8c953c69164b9f316ccbccf62f524c9dfbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:4.1.11-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:f44af1ae1cc5f6aa8982c8926032b06f39fcba85e538cac16a12fa7a2f548030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3a1447d447d4d40dce98b78750d59dc979c23cb0064232d99bc9c2a8691e11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:21:54 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:22:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:22:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:22:14 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:22:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0daf6179f22050424be2566bb137029a601d0d567dcfa2158749500534976f`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 47.3 MB (47336009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a26c88ed6ef425fe3395f6f87eacd0c8f8671930a41f02e1ad6a9fb0ac79a`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8adb70d5fa2392ea6446b47cbfa67ab9ad9b9f110496c6c439192f4f11762d`  
		Last Modified: Thu, 16 Jul 2026 01:22:28 GMT  
		Size: 54.2 MB (54194354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c871ee9a4c717731f6267513513587a82346249f51bf1a01afd700861fb0748f`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1a8a4ecd6d08ff0aeba3d395016628e271443cd8ce2abaec66326845e60c6bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f85d5ef04b8d6d6c37662ac2d4da4cff5595e5d2e3c823c4ae28960b3d1c27`

```dockerfile
```

-	Layers:
	-	`sha256:6ff82ffd26627f5d758f0a091bddbe82a02d5cbfacdade3c6b4117e10bc76dae`  
		Last Modified: Thu, 16 Jul 2026 01:22:26 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec0b4c7662e4c100e515c702923319c22b4d73a9e9a9bbf2bbc713738c40f7b5`  
		Last Modified: Thu, 16 Jul 2026 01:22:25 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:83e9cd855e972cf6766391cfd19acb54b5541514ca20eaf96c8dd64eeea3b50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4732a15d4efc8aa2d2c6eef224649baa6e09751d426cd9bee14e281102bbcf9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:14:13 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:14:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:14:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:14:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:14:36 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:14:36 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:14:36 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:14:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb74b534763c538f1e79a7ee42dde28c5bb48524373cf74f4b3b72e548aa8e9e`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9ac80b65b49a3b763c4249f61ca5e668fb92a3e0211e0a4e582af9c3457ed4`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 16.2 MB (16217465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38223602804facf32afdfe5c1bdbdf5206ed38daf49e10952841fe08e0bd936`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 1.2 MB (1232605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a62bf9c6da4fef336bc375d5c9c61f302690363786019ac955de58ea22e693`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 45.4 MB (45445023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec6dfcf164f0dd05a0adb57353737427d2fda9f59f8197978bec893ea94db9f`  
		Last Modified: Thu, 16 Jul 2026 01:15:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae43cb41b51f48b25423282722a8ef7569649438130f9fd4a3037b05fe3cde8`  
		Last Modified: Thu, 16 Jul 2026 01:15:12 GMT  
		Size: 54.2 MB (54194443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144db921fb3f4252fb6860f4b669c1999875d582704a1b2f4d0051d07514e27`  
		Last Modified: Thu, 16 Jul 2026 01:15:11 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:7ae1ea318bc515d9709c8c1b3102cea567599d8ac4c4e284d6740e85dfce7bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46858ea0ff52d76cffdf9684546d1b4ed89ef0ac7fa9ced6006440344c8ad130`

```dockerfile
```

-	Layers:
	-	`sha256:eceff39ecd4dff052a482920f0004645239299cd38c5b73bd4b6b98291b1b5c7`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8152c13b9419347b2e8e973303e6e7da8fcf34ba8be84da6cb4306d89c59b145`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4966290ad15fe9dde2eb1b8a48f61cd82edcc4fe919f153b50f242f2b47f36f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddc20d8c067735664d0494ee866bfcab53bd31f78a963695e2e3e478923c6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:18:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21348197d145aa9a70e7f6f8259e18e26c7b479f4a237885c8da630efe3c6b5c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42036887571451a8e4f36d71c9a517dc5401e267e7fc8df643f3605af2e98294`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b20a1dd0e787ec8cf58a999087512abd73a88b0aa91a2989e7f23958010e348`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb68afefca8f6ae94b1d6f6982f290d376bb908aecdc6c5b9b397d79f2914ad`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 45.7 MB (45652841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c7f39798946cabb37e758e7f239e1a65c995700465cde48aaea0b63708ac48`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 54.2 MB (54194455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669c350a6a883ce1a62369c2662ca2656c6403e51ff6e0f470d4acfb5af7fe71`  
		Last Modified: Thu, 16 Jul 2026 01:18:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:9b548066354c34ee96f0c1aa588cceffa0f7261ef6e437a012afe50a0dc10eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea33b9d8a988c90371f4e4fcd6a1f94f7459659ebc2bdf6fe12176aedf1a988`

```dockerfile
```

-	Layers:
	-	`sha256:ca4801f4d62cb7445ca663ccb3eb5ce3dbdd54537c5710176884cdc7bd4c2ff3`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517aab035da72a321f82e2f14e05560dba038081c5bdbcc01d656dbc44728d49`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:be9fc62eddcebc9713f0079ebb892473fb230d5cb23e6f529a1ec10cdf1abf15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f452a473e3207102c120e445768707792aeb2a11b22ed2f618df578af99a344`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:16:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:16:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:16:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 02:16:03 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 02:16:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:16:35 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:16:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:16:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:16:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:16:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efefba5c977a5e3d3efcfacf7b01cf840ff6b827da6bc8c8fc9cf3b2dcc3b7`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 42.8 MB (42801383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2772c4e54793170b2f28f48ea229fd847fb11bd34e244ca31b8caba764872c65`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223baed69ca51d52ac304389e33fc78481b478e8bc43bb01d2d799a42c645ff0`  
		Last Modified: Thu, 16 Jul 2026 02:17:00 GMT  
		Size: 54.2 MB (54194717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35bf29e1fd6f90fc6c182576f61dda3a9725ea015d69795562491894658eea9`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:02c9a7c91ddbae529f3e7c310820da57f46ab97f4eed613467397c9946c0361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b2b7846f773bc164299c5a72a09f57db4cf6b258b0b0666de9626a0e439766`

```dockerfile
```

-	Layers:
	-	`sha256:41b30ba05bda3b0d66b4cab6f29b775eb8a41d5c9fd2ac425e90a5271972c0c8`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177f2573b3e811236d1e5c296c64775469b4efff5529e4d62016ad52989f1c4a`  
		Last Modified: Thu, 16 Jul 2026 02:16:58 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:3658280cea2a266ed8715dd98bb469c198ee39d2cca1c03d3800342a2249bb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141136910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ea1f2ff91d7df9018c2653a08e4aa4057e8c9edf5fb974b9ce611245cec2c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:39:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 16 Jul 2026 01:39:37 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 16 Jul 2026 01:39:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:39:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:39:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:39:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c9350f44f24160d9cf411e49dbc323e94dd740660f92ebf8a90fa32def3c5`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 41.4 MB (41354057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72540e254bb042a473e9b07a32faaada13ede18dac7ac1e436f863c55d5c8489`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88bfce1ebb5b410ad05c514dcb8f6dcffa8e053b10d677792c60a696a10a1e0d`  
		Last Modified: Thu, 16 Jul 2026 01:40:11 GMT  
		Size: 54.2 MB (54194434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7de62ec4943d56363cea5d9d160df04a97a5add682e0e96ad36d8d2fccb2697`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:17a6660db2d3e619c15abf4c04668ae4f3d34f26a0716b856ed121433a18ea9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e0bd19fe9a93bd91dc293af3d861034f2b3558c3fe32a363400b85ebf09b3e`

```dockerfile
```

-	Layers:
	-	`sha256:48438ee50f1123f3a45db436e97813a61f89f7ca25338d9e94f254e872fb5ef9`  
		Last Modified: Thu, 16 Jul 2026 01:40:10 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:992eb34d577ead2f4b7216559ca15a9dda4829f8e1a203f4ed1335db85986439`  
		Last Modified: Thu, 16 Jul 2026 01:40:09 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5`

```console
$ docker pull cassandra@sha256:e52bb93c21f69cc5c2f5eb9e7d9736b10a047ad38bc7776480c7dbbf7d4e0ba7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:5` - linux; amd64

```console
$ docker pull cassandra@sha256:21428e06215eb9d2de774daa4b66e9a29e72bfb6d84da0a12f074cc9e4ba7236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d44ea60f7e847dfefea06c8c2a71fa73aa4378d62ca6778531169e6ab26df0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:21:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:21:27 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:21:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67583a9db8ca2c682644c2508ed62dd0e8794e32f03f8774803fa6bd559449ce`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 47.6 MB (47558109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4552b21f2e30065b2eaefdd0ec9780a3da16f67a9551a131afeb330a8e80a230`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f9b4e253d04c66520911c87fe7ba4b77e0e8cab9c95946c1f008c30d96529f`  
		Last Modified: Thu, 16 Jul 2026 01:21:43 GMT  
		Size: 73.9 MB (73919055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa1cb70b9f9340321698a82d1db73116a98df9bfe0887c0ba8ba489b29bad7d`  
		Last Modified: Thu, 16 Jul 2026 01:21:42 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:b1b1dcd9371d998d90aa369169f4bad4efe3c42162ea7cb6d9c02c9b898d4b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5ef81ea774b548d8228b1fab4f5823e4149e622083ab88d745f4b852bfc29f`

```dockerfile
```

-	Layers:
	-	`sha256:239d0ec75d632313de09ae01c34893664b2b24d8c886d0c7fc59f027e8b4eb23`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69179d32e7c95e8006b967502d711ba9bd0331975ce7e37c0e50f6e18eecd11e`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79f6fb3c071225441dacb090aa2584499abb24e01c7498cb0da51fb2204ba1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa84c4e22bed8761a620198346683b50b12a19a291bcd158eed673998735a11f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:13:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:13:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:13:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:13:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc56da79126e161ef7afd14b69de32243b30b0b85c63356faeabeffdc1bd3f8`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778a32f215705b51afc94326ba7d00b6754f3a7e9c8a1bc3ca6742c359539cc7`  
		Last Modified: Thu, 16 Jul 2026 01:14:35 GMT  
		Size: 16.2 MB (16217643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7eb786a38831633b89c70313dd7adcdd85c3ef9d1155dad378e0a17ad93358`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.2 MB (1232621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0ec6d6cadb89b54a8dc8bcfc459e4b60dd2750b76f2df2ca80cff41c7d22ef`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 45.1 MB (45126007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e8551c04eda90a0c361c0f0d1f8f258846584da120a54de768db226004acb7`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4579324ec9f710deb28e88de4400ab6e8afcb9f426dc03ab424dee9bdd1dde3`  
		Last Modified: Thu, 16 Jul 2026 01:14:38 GMT  
		Size: 73.9 MB (73919000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a998649a3fcfd659d7a9687d94d39c5f6c1693a7a15c6da4da30b074675ac194`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:1d74e06c8209f7499734d4e63f6d2df6c75ba33caff51406ac969c38a1f71b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db24df902680315b7cc8adbf5366f179896ee0b38dc7fd9edf83d882bf6930b2`

```dockerfile
```

-	Layers:
	-	`sha256:7ff5018774ebfde586deb15f6e0bbaa5d915e794e47ed4f12ba81ae908dbaf7f`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f36ce200a459a5a0565d4a223eb6384272517279446b4930c10259e55372c5b`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f93e3883b8943dd443b2e79969a7dda3e020d69b70ec44e695c90b202788eaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5be09972ebb85b5443291b44eec2e948bc33f9efdb64706a5ca48a665e98f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0eed816fe9f7fd543934d994632b4b9ff54224abf0976c03fd00c13166a417c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4862826110307693d18e277042d41a7d01c83b895c3c5f6b4c388e3d5916b15e`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500d5e90408ab7a63d907588eb9253f0fe1f09171a6cf0f791c332b86047b05f`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c596ae244cc3f8450db101e6577b33e9f6aef56c86d3c38dfca0072218cc224`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 47.0 MB (47041130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb378950b77d874d9138b797d936d09fc8954a51b80e64eca9e60950d60a503`  
		Last Modified: Thu, 16 Jul 2026 01:19:00 GMT  
		Size: 73.9 MB (73919190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606ec9002ef8680381481904c73ec13c8d7f1482a2e3ac67d05d9ee8034278e7`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:78e09712b7dd2cf5fbade1abb427ea10c874244f9306672650c390d084608020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543858f444182edec14646286de0e05f2d61c0df689308486d9c99f206533592`

```dockerfile
```

-	Layers:
	-	`sha256:515fc575be7a59fa4f611a1de82304a0a0a8ae4d79d81953c3a27cb5413fa072`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e6598c79a4c4b9dab8aa09de88ac8c9dca5378a488131db25a29179ca3d455`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; ppc64le

```console
$ docker pull cassandra@sha256:7c80e9c53015654b2c3c796ebd1947868b5cbb983be5f39671916ff454556070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b48fe1830d5e93ae0f75a6db27f22142c2cfe138f6c473594118a69beca9a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:14:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 02:15:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:15:15 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:15:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:15:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:15:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b805ddae4946c9573df3ca000b6373c206fdd1b1b73449890ff4bc1394fe9f3`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 47.5 MB (47480935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a6dd1d48746db312c308bfd10764bbcb4db14b60b098a2163dd71fd0e4b647`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa84c37bd86b576eb68224aea33f5065a45c29be9acd39db0da6e7ed15fad239`  
		Last Modified: Thu, 16 Jul 2026 02:15:51 GMT  
		Size: 73.9 MB (73919239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b78cc7f83a992361f31c2a1a94a6125364f22f9b9c2afd79cbbf0a7190cc15`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:ce3afc7f023cf5cd5b8afe2cad9d4cdc57af6ad2da0c521aba657c04fc7419f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12844d828448551fe8fb4436d8b34748d939d38eed5554c8cbe639962b9e6d4c`

```dockerfile
```

-	Layers:
	-	`sha256:ea41459860744cdd0b85a377123f9f31153c151a5f9097c4b69f845cf5d50c26`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3c156bf2e61a89e3371024ccf2fb11fc313669c683ecc7467e1bc3156bc47e`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; s390x

```console
$ docker pull cassandra@sha256:83deed415af546eea953cbcdf140d26910ef62a1793336d5d5ccfe92f527ecb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0211f923286a83f733e6287f6d8cc1a114bf01e9128ecf1f72c3dbfb320b8e60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:38:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:38:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:38:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:38:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:38:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd826277ac666eaabcec730524d781e6708964302073e064cc120e3996edc5fd`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 44.5 MB (44528787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ffbe3575f392574527ea946a99acecbfa63358cae79f38d9cab2ca6960b006`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0730416434014f0a1507d39630e2a54f27a8247bcda3526e42151e37c7efe0`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 73.9 MB (73919126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b967f1888507e002532a8683e2001cebada1eff4b753bd213852973abec394d7`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:84a7ad3ad67f5214457dada8c2d480f1de6e6c987ef3d933dc954a29fcfcf5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773a7cfb2d01bf3ff34a62064206fefa41a15a5b5277975dab25fbea74995a0`

```dockerfile
```

-	Layers:
	-	`sha256:baf06372034c3d55cd196e514984bf544c3f60f7839eaea164e0118b8425a8b7`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e68f2efc069fd61ec926fb95b571bdbadec670f66e77b34c0eea3cca679a3ee`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5-bookworm`

```console
$ docker pull cassandra@sha256:e52bb93c21f69cc5c2f5eb9e7d9736b10a047ad38bc7776480c7dbbf7d4e0ba7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:5-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:21428e06215eb9d2de774daa4b66e9a29e72bfb6d84da0a12f074cc9e4ba7236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d44ea60f7e847dfefea06c8c2a71fa73aa4378d62ca6778531169e6ab26df0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:21:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:21:27 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:21:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67583a9db8ca2c682644c2508ed62dd0e8794e32f03f8774803fa6bd559449ce`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 47.6 MB (47558109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4552b21f2e30065b2eaefdd0ec9780a3da16f67a9551a131afeb330a8e80a230`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f9b4e253d04c66520911c87fe7ba4b77e0e8cab9c95946c1f008c30d96529f`  
		Last Modified: Thu, 16 Jul 2026 01:21:43 GMT  
		Size: 73.9 MB (73919055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa1cb70b9f9340321698a82d1db73116a98df9bfe0887c0ba8ba489b29bad7d`  
		Last Modified: Thu, 16 Jul 2026 01:21:42 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b1b1dcd9371d998d90aa369169f4bad4efe3c42162ea7cb6d9c02c9b898d4b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5ef81ea774b548d8228b1fab4f5823e4149e622083ab88d745f4b852bfc29f`

```dockerfile
```

-	Layers:
	-	`sha256:239d0ec75d632313de09ae01c34893664b2b24d8c886d0c7fc59f027e8b4eb23`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69179d32e7c95e8006b967502d711ba9bd0331975ce7e37c0e50f6e18eecd11e`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79f6fb3c071225441dacb090aa2584499abb24e01c7498cb0da51fb2204ba1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa84c4e22bed8761a620198346683b50b12a19a291bcd158eed673998735a11f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:13:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:13:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:13:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:13:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc56da79126e161ef7afd14b69de32243b30b0b85c63356faeabeffdc1bd3f8`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778a32f215705b51afc94326ba7d00b6754f3a7e9c8a1bc3ca6742c359539cc7`  
		Last Modified: Thu, 16 Jul 2026 01:14:35 GMT  
		Size: 16.2 MB (16217643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7eb786a38831633b89c70313dd7adcdd85c3ef9d1155dad378e0a17ad93358`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.2 MB (1232621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0ec6d6cadb89b54a8dc8bcfc459e4b60dd2750b76f2df2ca80cff41c7d22ef`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 45.1 MB (45126007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e8551c04eda90a0c361c0f0d1f8f258846584da120a54de768db226004acb7`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4579324ec9f710deb28e88de4400ab6e8afcb9f426dc03ab424dee9bdd1dde3`  
		Last Modified: Thu, 16 Jul 2026 01:14:38 GMT  
		Size: 73.9 MB (73919000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a998649a3fcfd659d7a9687d94d39c5f6c1693a7a15c6da4da30b074675ac194`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1d74e06c8209f7499734d4e63f6d2df6c75ba33caff51406ac969c38a1f71b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db24df902680315b7cc8adbf5366f179896ee0b38dc7fd9edf83d882bf6930b2`

```dockerfile
```

-	Layers:
	-	`sha256:7ff5018774ebfde586deb15f6e0bbaa5d915e794e47ed4f12ba81ae908dbaf7f`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f36ce200a459a5a0565d4a223eb6384272517279446b4930c10259e55372c5b`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f93e3883b8943dd443b2e79969a7dda3e020d69b70ec44e695c90b202788eaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5be09972ebb85b5443291b44eec2e948bc33f9efdb64706a5ca48a665e98f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0eed816fe9f7fd543934d994632b4b9ff54224abf0976c03fd00c13166a417c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4862826110307693d18e277042d41a7d01c83b895c3c5f6b4c388e3d5916b15e`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500d5e90408ab7a63d907588eb9253f0fe1f09171a6cf0f791c332b86047b05f`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c596ae244cc3f8450db101e6577b33e9f6aef56c86d3c38dfca0072218cc224`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 47.0 MB (47041130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb378950b77d874d9138b797d936d09fc8954a51b80e64eca9e60950d60a503`  
		Last Modified: Thu, 16 Jul 2026 01:19:00 GMT  
		Size: 73.9 MB (73919190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606ec9002ef8680381481904c73ec13c8d7f1482a2e3ac67d05d9ee8034278e7`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:78e09712b7dd2cf5fbade1abb427ea10c874244f9306672650c390d084608020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543858f444182edec14646286de0e05f2d61c0df689308486d9c99f206533592`

```dockerfile
```

-	Layers:
	-	`sha256:515fc575be7a59fa4f611a1de82304a0a0a8ae4d79d81953c3a27cb5413fa072`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e6598c79a4c4b9dab8aa09de88ac8c9dca5378a488131db25a29179ca3d455`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:7c80e9c53015654b2c3c796ebd1947868b5cbb983be5f39671916ff454556070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b48fe1830d5e93ae0f75a6db27f22142c2cfe138f6c473594118a69beca9a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:14:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 02:15:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:15:15 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:15:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:15:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:15:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b805ddae4946c9573df3ca000b6373c206fdd1b1b73449890ff4bc1394fe9f3`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 47.5 MB (47480935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a6dd1d48746db312c308bfd10764bbcb4db14b60b098a2163dd71fd0e4b647`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa84c37bd86b576eb68224aea33f5065a45c29be9acd39db0da6e7ed15fad239`  
		Last Modified: Thu, 16 Jul 2026 02:15:51 GMT  
		Size: 73.9 MB (73919239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b78cc7f83a992361f31c2a1a94a6125364f22f9b9c2afd79cbbf0a7190cc15`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:ce3afc7f023cf5cd5b8afe2cad9d4cdc57af6ad2da0c521aba657c04fc7419f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12844d828448551fe8fb4436d8b34748d939d38eed5554c8cbe639962b9e6d4c`

```dockerfile
```

-	Layers:
	-	`sha256:ea41459860744cdd0b85a377123f9f31153c151a5f9097c4b69f845cf5d50c26`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3c156bf2e61a89e3371024ccf2fb11fc313669c683ecc7467e1bc3156bc47e`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:83deed415af546eea953cbcdf140d26910ef62a1793336d5d5ccfe92f527ecb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0211f923286a83f733e6287f6d8cc1a114bf01e9128ecf1f72c3dbfb320b8e60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:38:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:38:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:38:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:38:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:38:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd826277ac666eaabcec730524d781e6708964302073e064cc120e3996edc5fd`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 44.5 MB (44528787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ffbe3575f392574527ea946a99acecbfa63358cae79f38d9cab2ca6960b006`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0730416434014f0a1507d39630e2a54f27a8247bcda3526e42151e37c7efe0`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 73.9 MB (73919126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b967f1888507e002532a8683e2001cebada1eff4b753bd213852973abec394d7`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:84a7ad3ad67f5214457dada8c2d480f1de6e6c987ef3d933dc954a29fcfcf5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773a7cfb2d01bf3ff34a62064206fefa41a15a5b5277975dab25fbea74995a0`

```dockerfile
```

-	Layers:
	-	`sha256:baf06372034c3d55cd196e514984bf544c3f60f7839eaea164e0118b8425a8b7`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e68f2efc069fd61ec926fb95b571bdbadec670f66e77b34c0eea3cca679a3ee`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0`

```console
$ docker pull cassandra@sha256:e52bb93c21f69cc5c2f5eb9e7d9736b10a047ad38bc7776480c7dbbf7d4e0ba7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:5.0` - linux; amd64

```console
$ docker pull cassandra@sha256:21428e06215eb9d2de774daa4b66e9a29e72bfb6d84da0a12f074cc9e4ba7236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d44ea60f7e847dfefea06c8c2a71fa73aa4378d62ca6778531169e6ab26df0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:21:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:21:27 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:21:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67583a9db8ca2c682644c2508ed62dd0e8794e32f03f8774803fa6bd559449ce`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 47.6 MB (47558109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4552b21f2e30065b2eaefdd0ec9780a3da16f67a9551a131afeb330a8e80a230`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f9b4e253d04c66520911c87fe7ba4b77e0e8cab9c95946c1f008c30d96529f`  
		Last Modified: Thu, 16 Jul 2026 01:21:43 GMT  
		Size: 73.9 MB (73919055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa1cb70b9f9340321698a82d1db73116a98df9bfe0887c0ba8ba489b29bad7d`  
		Last Modified: Thu, 16 Jul 2026 01:21:42 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:b1b1dcd9371d998d90aa369169f4bad4efe3c42162ea7cb6d9c02c9b898d4b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5ef81ea774b548d8228b1fab4f5823e4149e622083ab88d745f4b852bfc29f`

```dockerfile
```

-	Layers:
	-	`sha256:239d0ec75d632313de09ae01c34893664b2b24d8c886d0c7fc59f027e8b4eb23`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69179d32e7c95e8006b967502d711ba9bd0331975ce7e37c0e50f6e18eecd11e`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79f6fb3c071225441dacb090aa2584499abb24e01c7498cb0da51fb2204ba1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa84c4e22bed8761a620198346683b50b12a19a291bcd158eed673998735a11f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:13:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:13:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:13:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:13:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc56da79126e161ef7afd14b69de32243b30b0b85c63356faeabeffdc1bd3f8`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778a32f215705b51afc94326ba7d00b6754f3a7e9c8a1bc3ca6742c359539cc7`  
		Last Modified: Thu, 16 Jul 2026 01:14:35 GMT  
		Size: 16.2 MB (16217643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7eb786a38831633b89c70313dd7adcdd85c3ef9d1155dad378e0a17ad93358`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.2 MB (1232621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0ec6d6cadb89b54a8dc8bcfc459e4b60dd2750b76f2df2ca80cff41c7d22ef`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 45.1 MB (45126007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e8551c04eda90a0c361c0f0d1f8f258846584da120a54de768db226004acb7`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4579324ec9f710deb28e88de4400ab6e8afcb9f426dc03ab424dee9bdd1dde3`  
		Last Modified: Thu, 16 Jul 2026 01:14:38 GMT  
		Size: 73.9 MB (73919000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a998649a3fcfd659d7a9687d94d39c5f6c1693a7a15c6da4da30b074675ac194`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:1d74e06c8209f7499734d4e63f6d2df6c75ba33caff51406ac969c38a1f71b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db24df902680315b7cc8adbf5366f179896ee0b38dc7fd9edf83d882bf6930b2`

```dockerfile
```

-	Layers:
	-	`sha256:7ff5018774ebfde586deb15f6e0bbaa5d915e794e47ed4f12ba81ae908dbaf7f`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f36ce200a459a5a0565d4a223eb6384272517279446b4930c10259e55372c5b`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f93e3883b8943dd443b2e79969a7dda3e020d69b70ec44e695c90b202788eaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5be09972ebb85b5443291b44eec2e948bc33f9efdb64706a5ca48a665e98f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0eed816fe9f7fd543934d994632b4b9ff54224abf0976c03fd00c13166a417c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4862826110307693d18e277042d41a7d01c83b895c3c5f6b4c388e3d5916b15e`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500d5e90408ab7a63d907588eb9253f0fe1f09171a6cf0f791c332b86047b05f`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c596ae244cc3f8450db101e6577b33e9f6aef56c86d3c38dfca0072218cc224`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 47.0 MB (47041130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb378950b77d874d9138b797d936d09fc8954a51b80e64eca9e60950d60a503`  
		Last Modified: Thu, 16 Jul 2026 01:19:00 GMT  
		Size: 73.9 MB (73919190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606ec9002ef8680381481904c73ec13c8d7f1482a2e3ac67d05d9ee8034278e7`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:78e09712b7dd2cf5fbade1abb427ea10c874244f9306672650c390d084608020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543858f444182edec14646286de0e05f2d61c0df689308486d9c99f206533592`

```dockerfile
```

-	Layers:
	-	`sha256:515fc575be7a59fa4f611a1de82304a0a0a8ae4d79d81953c3a27cb5413fa072`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e6598c79a4c4b9dab8aa09de88ac8c9dca5378a488131db25a29179ca3d455`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:7c80e9c53015654b2c3c796ebd1947868b5cbb983be5f39671916ff454556070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b48fe1830d5e93ae0f75a6db27f22142c2cfe138f6c473594118a69beca9a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:14:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 02:15:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:15:15 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:15:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:15:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:15:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b805ddae4946c9573df3ca000b6373c206fdd1b1b73449890ff4bc1394fe9f3`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 47.5 MB (47480935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a6dd1d48746db312c308bfd10764bbcb4db14b60b098a2163dd71fd0e4b647`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa84c37bd86b576eb68224aea33f5065a45c29be9acd39db0da6e7ed15fad239`  
		Last Modified: Thu, 16 Jul 2026 02:15:51 GMT  
		Size: 73.9 MB (73919239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b78cc7f83a992361f31c2a1a94a6125364f22f9b9c2afd79cbbf0a7190cc15`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:ce3afc7f023cf5cd5b8afe2cad9d4cdc57af6ad2da0c521aba657c04fc7419f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12844d828448551fe8fb4436d8b34748d939d38eed5554c8cbe639962b9e6d4c`

```dockerfile
```

-	Layers:
	-	`sha256:ea41459860744cdd0b85a377123f9f31153c151a5f9097c4b69f845cf5d50c26`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3c156bf2e61a89e3371024ccf2fb11fc313669c683ecc7467e1bc3156bc47e`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; s390x

```console
$ docker pull cassandra@sha256:83deed415af546eea953cbcdf140d26910ef62a1793336d5d5ccfe92f527ecb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0211f923286a83f733e6287f6d8cc1a114bf01e9128ecf1f72c3dbfb320b8e60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:38:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:38:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:38:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:38:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:38:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd826277ac666eaabcec730524d781e6708964302073e064cc120e3996edc5fd`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 44.5 MB (44528787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ffbe3575f392574527ea946a99acecbfa63358cae79f38d9cab2ca6960b006`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0730416434014f0a1507d39630e2a54f27a8247bcda3526e42151e37c7efe0`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 73.9 MB (73919126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b967f1888507e002532a8683e2001cebada1eff4b753bd213852973abec394d7`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:84a7ad3ad67f5214457dada8c2d480f1de6e6c987ef3d933dc954a29fcfcf5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773a7cfb2d01bf3ff34a62064206fefa41a15a5b5277975dab25fbea74995a0`

```dockerfile
```

-	Layers:
	-	`sha256:baf06372034c3d55cd196e514984bf544c3f60f7839eaea164e0118b8425a8b7`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e68f2efc069fd61ec926fb95b571bdbadec670f66e77b34c0eea3cca679a3ee`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0-bookworm`

```console
$ docker pull cassandra@sha256:e52bb93c21f69cc5c2f5eb9e7d9736b10a047ad38bc7776480c7dbbf7d4e0ba7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:5.0-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:21428e06215eb9d2de774daa4b66e9a29e72bfb6d84da0a12f074cc9e4ba7236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d44ea60f7e847dfefea06c8c2a71fa73aa4378d62ca6778531169e6ab26df0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:21:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:21:27 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:21:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67583a9db8ca2c682644c2508ed62dd0e8794e32f03f8774803fa6bd559449ce`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 47.6 MB (47558109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4552b21f2e30065b2eaefdd0ec9780a3da16f67a9551a131afeb330a8e80a230`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f9b4e253d04c66520911c87fe7ba4b77e0e8cab9c95946c1f008c30d96529f`  
		Last Modified: Thu, 16 Jul 2026 01:21:43 GMT  
		Size: 73.9 MB (73919055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa1cb70b9f9340321698a82d1db73116a98df9bfe0887c0ba8ba489b29bad7d`  
		Last Modified: Thu, 16 Jul 2026 01:21:42 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b1b1dcd9371d998d90aa369169f4bad4efe3c42162ea7cb6d9c02c9b898d4b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5ef81ea774b548d8228b1fab4f5823e4149e622083ab88d745f4b852bfc29f`

```dockerfile
```

-	Layers:
	-	`sha256:239d0ec75d632313de09ae01c34893664b2b24d8c886d0c7fc59f027e8b4eb23`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69179d32e7c95e8006b967502d711ba9bd0331975ce7e37c0e50f6e18eecd11e`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79f6fb3c071225441dacb090aa2584499abb24e01c7498cb0da51fb2204ba1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa84c4e22bed8761a620198346683b50b12a19a291bcd158eed673998735a11f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:13:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:13:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:13:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:13:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc56da79126e161ef7afd14b69de32243b30b0b85c63356faeabeffdc1bd3f8`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778a32f215705b51afc94326ba7d00b6754f3a7e9c8a1bc3ca6742c359539cc7`  
		Last Modified: Thu, 16 Jul 2026 01:14:35 GMT  
		Size: 16.2 MB (16217643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7eb786a38831633b89c70313dd7adcdd85c3ef9d1155dad378e0a17ad93358`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.2 MB (1232621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0ec6d6cadb89b54a8dc8bcfc459e4b60dd2750b76f2df2ca80cff41c7d22ef`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 45.1 MB (45126007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e8551c04eda90a0c361c0f0d1f8f258846584da120a54de768db226004acb7`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4579324ec9f710deb28e88de4400ab6e8afcb9f426dc03ab424dee9bdd1dde3`  
		Last Modified: Thu, 16 Jul 2026 01:14:38 GMT  
		Size: 73.9 MB (73919000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a998649a3fcfd659d7a9687d94d39c5f6c1693a7a15c6da4da30b074675ac194`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1d74e06c8209f7499734d4e63f6d2df6c75ba33caff51406ac969c38a1f71b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db24df902680315b7cc8adbf5366f179896ee0b38dc7fd9edf83d882bf6930b2`

```dockerfile
```

-	Layers:
	-	`sha256:7ff5018774ebfde586deb15f6e0bbaa5d915e794e47ed4f12ba81ae908dbaf7f`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f36ce200a459a5a0565d4a223eb6384272517279446b4930c10259e55372c5b`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f93e3883b8943dd443b2e79969a7dda3e020d69b70ec44e695c90b202788eaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5be09972ebb85b5443291b44eec2e948bc33f9efdb64706a5ca48a665e98f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0eed816fe9f7fd543934d994632b4b9ff54224abf0976c03fd00c13166a417c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4862826110307693d18e277042d41a7d01c83b895c3c5f6b4c388e3d5916b15e`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500d5e90408ab7a63d907588eb9253f0fe1f09171a6cf0f791c332b86047b05f`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c596ae244cc3f8450db101e6577b33e9f6aef56c86d3c38dfca0072218cc224`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 47.0 MB (47041130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb378950b77d874d9138b797d936d09fc8954a51b80e64eca9e60950d60a503`  
		Last Modified: Thu, 16 Jul 2026 01:19:00 GMT  
		Size: 73.9 MB (73919190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606ec9002ef8680381481904c73ec13c8d7f1482a2e3ac67d05d9ee8034278e7`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:78e09712b7dd2cf5fbade1abb427ea10c874244f9306672650c390d084608020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543858f444182edec14646286de0e05f2d61c0df689308486d9c99f206533592`

```dockerfile
```

-	Layers:
	-	`sha256:515fc575be7a59fa4f611a1de82304a0a0a8ae4d79d81953c3a27cb5413fa072`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e6598c79a4c4b9dab8aa09de88ac8c9dca5378a488131db25a29179ca3d455`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:7c80e9c53015654b2c3c796ebd1947868b5cbb983be5f39671916ff454556070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b48fe1830d5e93ae0f75a6db27f22142c2cfe138f6c473594118a69beca9a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:14:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 02:15:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:15:15 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:15:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:15:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:15:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b805ddae4946c9573df3ca000b6373c206fdd1b1b73449890ff4bc1394fe9f3`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 47.5 MB (47480935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a6dd1d48746db312c308bfd10764bbcb4db14b60b098a2163dd71fd0e4b647`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa84c37bd86b576eb68224aea33f5065a45c29be9acd39db0da6e7ed15fad239`  
		Last Modified: Thu, 16 Jul 2026 02:15:51 GMT  
		Size: 73.9 MB (73919239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b78cc7f83a992361f31c2a1a94a6125364f22f9b9c2afd79cbbf0a7190cc15`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:ce3afc7f023cf5cd5b8afe2cad9d4cdc57af6ad2da0c521aba657c04fc7419f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12844d828448551fe8fb4436d8b34748d939d38eed5554c8cbe639962b9e6d4c`

```dockerfile
```

-	Layers:
	-	`sha256:ea41459860744cdd0b85a377123f9f31153c151a5f9097c4b69f845cf5d50c26`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3c156bf2e61a89e3371024ccf2fb11fc313669c683ecc7467e1bc3156bc47e`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:83deed415af546eea953cbcdf140d26910ef62a1793336d5d5ccfe92f527ecb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0211f923286a83f733e6287f6d8cc1a114bf01e9128ecf1f72c3dbfb320b8e60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:38:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:38:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:38:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:38:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:38:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd826277ac666eaabcec730524d781e6708964302073e064cc120e3996edc5fd`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 44.5 MB (44528787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ffbe3575f392574527ea946a99acecbfa63358cae79f38d9cab2ca6960b006`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0730416434014f0a1507d39630e2a54f27a8247bcda3526e42151e37c7efe0`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 73.9 MB (73919126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b967f1888507e002532a8683e2001cebada1eff4b753bd213852973abec394d7`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:84a7ad3ad67f5214457dada8c2d480f1de6e6c987ef3d933dc954a29fcfcf5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773a7cfb2d01bf3ff34a62064206fefa41a15a5b5277975dab25fbea74995a0`

```dockerfile
```

-	Layers:
	-	`sha256:baf06372034c3d55cd196e514984bf544c3f60f7839eaea164e0118b8425a8b7`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e68f2efc069fd61ec926fb95b571bdbadec670f66e77b34c0eea3cca679a3ee`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.8`

```console
$ docker pull cassandra@sha256:e52bb93c21f69cc5c2f5eb9e7d9736b10a047ad38bc7776480c7dbbf7d4e0ba7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:5.0.8` - linux; amd64

```console
$ docker pull cassandra@sha256:21428e06215eb9d2de774daa4b66e9a29e72bfb6d84da0a12f074cc9e4ba7236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d44ea60f7e847dfefea06c8c2a71fa73aa4378d62ca6778531169e6ab26df0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:21:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:21:27 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:21:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67583a9db8ca2c682644c2508ed62dd0e8794e32f03f8774803fa6bd559449ce`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 47.6 MB (47558109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4552b21f2e30065b2eaefdd0ec9780a3da16f67a9551a131afeb330a8e80a230`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f9b4e253d04c66520911c87fe7ba4b77e0e8cab9c95946c1f008c30d96529f`  
		Last Modified: Thu, 16 Jul 2026 01:21:43 GMT  
		Size: 73.9 MB (73919055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa1cb70b9f9340321698a82d1db73116a98df9bfe0887c0ba8ba489b29bad7d`  
		Last Modified: Thu, 16 Jul 2026 01:21:42 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:b1b1dcd9371d998d90aa369169f4bad4efe3c42162ea7cb6d9c02c9b898d4b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5ef81ea774b548d8228b1fab4f5823e4149e622083ab88d745f4b852bfc29f`

```dockerfile
```

-	Layers:
	-	`sha256:239d0ec75d632313de09ae01c34893664b2b24d8c886d0c7fc59f027e8b4eb23`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69179d32e7c95e8006b967502d711ba9bd0331975ce7e37c0e50f6e18eecd11e`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79f6fb3c071225441dacb090aa2584499abb24e01c7498cb0da51fb2204ba1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa84c4e22bed8761a620198346683b50b12a19a291bcd158eed673998735a11f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:13:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:13:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:13:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:13:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc56da79126e161ef7afd14b69de32243b30b0b85c63356faeabeffdc1bd3f8`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778a32f215705b51afc94326ba7d00b6754f3a7e9c8a1bc3ca6742c359539cc7`  
		Last Modified: Thu, 16 Jul 2026 01:14:35 GMT  
		Size: 16.2 MB (16217643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7eb786a38831633b89c70313dd7adcdd85c3ef9d1155dad378e0a17ad93358`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.2 MB (1232621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0ec6d6cadb89b54a8dc8bcfc459e4b60dd2750b76f2df2ca80cff41c7d22ef`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 45.1 MB (45126007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e8551c04eda90a0c361c0f0d1f8f258846584da120a54de768db226004acb7`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4579324ec9f710deb28e88de4400ab6e8afcb9f426dc03ab424dee9bdd1dde3`  
		Last Modified: Thu, 16 Jul 2026 01:14:38 GMT  
		Size: 73.9 MB (73919000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a998649a3fcfd659d7a9687d94d39c5f6c1693a7a15c6da4da30b074675ac194`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:1d74e06c8209f7499734d4e63f6d2df6c75ba33caff51406ac969c38a1f71b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db24df902680315b7cc8adbf5366f179896ee0b38dc7fd9edf83d882bf6930b2`

```dockerfile
```

-	Layers:
	-	`sha256:7ff5018774ebfde586deb15f6e0bbaa5d915e794e47ed4f12ba81ae908dbaf7f`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f36ce200a459a5a0565d4a223eb6384272517279446b4930c10259e55372c5b`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f93e3883b8943dd443b2e79969a7dda3e020d69b70ec44e695c90b202788eaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5be09972ebb85b5443291b44eec2e948bc33f9efdb64706a5ca48a665e98f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0eed816fe9f7fd543934d994632b4b9ff54224abf0976c03fd00c13166a417c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4862826110307693d18e277042d41a7d01c83b895c3c5f6b4c388e3d5916b15e`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500d5e90408ab7a63d907588eb9253f0fe1f09171a6cf0f791c332b86047b05f`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c596ae244cc3f8450db101e6577b33e9f6aef56c86d3c38dfca0072218cc224`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 47.0 MB (47041130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb378950b77d874d9138b797d936d09fc8954a51b80e64eca9e60950d60a503`  
		Last Modified: Thu, 16 Jul 2026 01:19:00 GMT  
		Size: 73.9 MB (73919190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606ec9002ef8680381481904c73ec13c8d7f1482a2e3ac67d05d9ee8034278e7`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:78e09712b7dd2cf5fbade1abb427ea10c874244f9306672650c390d084608020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543858f444182edec14646286de0e05f2d61c0df689308486d9c99f206533592`

```dockerfile
```

-	Layers:
	-	`sha256:515fc575be7a59fa4f611a1de82304a0a0a8ae4d79d81953c3a27cb5413fa072`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e6598c79a4c4b9dab8aa09de88ac8c9dca5378a488131db25a29179ca3d455`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; ppc64le

```console
$ docker pull cassandra@sha256:7c80e9c53015654b2c3c796ebd1947868b5cbb983be5f39671916ff454556070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b48fe1830d5e93ae0f75a6db27f22142c2cfe138f6c473594118a69beca9a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:14:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 02:15:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:15:15 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:15:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:15:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:15:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b805ddae4946c9573df3ca000b6373c206fdd1b1b73449890ff4bc1394fe9f3`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 47.5 MB (47480935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a6dd1d48746db312c308bfd10764bbcb4db14b60b098a2163dd71fd0e4b647`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa84c37bd86b576eb68224aea33f5065a45c29be9acd39db0da6e7ed15fad239`  
		Last Modified: Thu, 16 Jul 2026 02:15:51 GMT  
		Size: 73.9 MB (73919239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b78cc7f83a992361f31c2a1a94a6125364f22f9b9c2afd79cbbf0a7190cc15`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:ce3afc7f023cf5cd5b8afe2cad9d4cdc57af6ad2da0c521aba657c04fc7419f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12844d828448551fe8fb4436d8b34748d939d38eed5554c8cbe639962b9e6d4c`

```dockerfile
```

-	Layers:
	-	`sha256:ea41459860744cdd0b85a377123f9f31153c151a5f9097c4b69f845cf5d50c26`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3c156bf2e61a89e3371024ccf2fb11fc313669c683ecc7467e1bc3156bc47e`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; s390x

```console
$ docker pull cassandra@sha256:83deed415af546eea953cbcdf140d26910ef62a1793336d5d5ccfe92f527ecb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0211f923286a83f733e6287f6d8cc1a114bf01e9128ecf1f72c3dbfb320b8e60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:38:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:38:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:38:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:38:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:38:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd826277ac666eaabcec730524d781e6708964302073e064cc120e3996edc5fd`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 44.5 MB (44528787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ffbe3575f392574527ea946a99acecbfa63358cae79f38d9cab2ca6960b006`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0730416434014f0a1507d39630e2a54f27a8247bcda3526e42151e37c7efe0`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 73.9 MB (73919126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b967f1888507e002532a8683e2001cebada1eff4b753bd213852973abec394d7`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:84a7ad3ad67f5214457dada8c2d480f1de6e6c987ef3d933dc954a29fcfcf5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773a7cfb2d01bf3ff34a62064206fefa41a15a5b5277975dab25fbea74995a0`

```dockerfile
```

-	Layers:
	-	`sha256:baf06372034c3d55cd196e514984bf544c3f60f7839eaea164e0118b8425a8b7`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e68f2efc069fd61ec926fb95b571bdbadec670f66e77b34c0eea3cca679a3ee`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.8-bookworm`

```console
$ docker pull cassandra@sha256:e52bb93c21f69cc5c2f5eb9e7d9736b10a047ad38bc7776480c7dbbf7d4e0ba7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:5.0.8-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:21428e06215eb9d2de774daa4b66e9a29e72bfb6d84da0a12f074cc9e4ba7236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d44ea60f7e847dfefea06c8c2a71fa73aa4378d62ca6778531169e6ab26df0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:21:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:21:27 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:21:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67583a9db8ca2c682644c2508ed62dd0e8794e32f03f8774803fa6bd559449ce`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 47.6 MB (47558109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4552b21f2e30065b2eaefdd0ec9780a3da16f67a9551a131afeb330a8e80a230`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f9b4e253d04c66520911c87fe7ba4b77e0e8cab9c95946c1f008c30d96529f`  
		Last Modified: Thu, 16 Jul 2026 01:21:43 GMT  
		Size: 73.9 MB (73919055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa1cb70b9f9340321698a82d1db73116a98df9bfe0887c0ba8ba489b29bad7d`  
		Last Modified: Thu, 16 Jul 2026 01:21:42 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b1b1dcd9371d998d90aa369169f4bad4efe3c42162ea7cb6d9c02c9b898d4b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5ef81ea774b548d8228b1fab4f5823e4149e622083ab88d745f4b852bfc29f`

```dockerfile
```

-	Layers:
	-	`sha256:239d0ec75d632313de09ae01c34893664b2b24d8c886d0c7fc59f027e8b4eb23`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69179d32e7c95e8006b967502d711ba9bd0331975ce7e37c0e50f6e18eecd11e`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79f6fb3c071225441dacb090aa2584499abb24e01c7498cb0da51fb2204ba1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa84c4e22bed8761a620198346683b50b12a19a291bcd158eed673998735a11f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:13:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:13:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:13:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:13:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc56da79126e161ef7afd14b69de32243b30b0b85c63356faeabeffdc1bd3f8`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778a32f215705b51afc94326ba7d00b6754f3a7e9c8a1bc3ca6742c359539cc7`  
		Last Modified: Thu, 16 Jul 2026 01:14:35 GMT  
		Size: 16.2 MB (16217643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7eb786a38831633b89c70313dd7adcdd85c3ef9d1155dad378e0a17ad93358`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.2 MB (1232621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0ec6d6cadb89b54a8dc8bcfc459e4b60dd2750b76f2df2ca80cff41c7d22ef`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 45.1 MB (45126007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e8551c04eda90a0c361c0f0d1f8f258846584da120a54de768db226004acb7`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4579324ec9f710deb28e88de4400ab6e8afcb9f426dc03ab424dee9bdd1dde3`  
		Last Modified: Thu, 16 Jul 2026 01:14:38 GMT  
		Size: 73.9 MB (73919000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a998649a3fcfd659d7a9687d94d39c5f6c1693a7a15c6da4da30b074675ac194`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1d74e06c8209f7499734d4e63f6d2df6c75ba33caff51406ac969c38a1f71b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db24df902680315b7cc8adbf5366f179896ee0b38dc7fd9edf83d882bf6930b2`

```dockerfile
```

-	Layers:
	-	`sha256:7ff5018774ebfde586deb15f6e0bbaa5d915e794e47ed4f12ba81ae908dbaf7f`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f36ce200a459a5a0565d4a223eb6384272517279446b4930c10259e55372c5b`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f93e3883b8943dd443b2e79969a7dda3e020d69b70ec44e695c90b202788eaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5be09972ebb85b5443291b44eec2e948bc33f9efdb64706a5ca48a665e98f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0eed816fe9f7fd543934d994632b4b9ff54224abf0976c03fd00c13166a417c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4862826110307693d18e277042d41a7d01c83b895c3c5f6b4c388e3d5916b15e`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500d5e90408ab7a63d907588eb9253f0fe1f09171a6cf0f791c332b86047b05f`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c596ae244cc3f8450db101e6577b33e9f6aef56c86d3c38dfca0072218cc224`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 47.0 MB (47041130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb378950b77d874d9138b797d936d09fc8954a51b80e64eca9e60950d60a503`  
		Last Modified: Thu, 16 Jul 2026 01:19:00 GMT  
		Size: 73.9 MB (73919190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606ec9002ef8680381481904c73ec13c8d7f1482a2e3ac67d05d9ee8034278e7`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:78e09712b7dd2cf5fbade1abb427ea10c874244f9306672650c390d084608020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543858f444182edec14646286de0e05f2d61c0df689308486d9c99f206533592`

```dockerfile
```

-	Layers:
	-	`sha256:515fc575be7a59fa4f611a1de82304a0a0a8ae4d79d81953c3a27cb5413fa072`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e6598c79a4c4b9dab8aa09de88ac8c9dca5378a488131db25a29179ca3d455`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:7c80e9c53015654b2c3c796ebd1947868b5cbb983be5f39671916ff454556070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b48fe1830d5e93ae0f75a6db27f22142c2cfe138f6c473594118a69beca9a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:14:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 02:15:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:15:15 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:15:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:15:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:15:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b805ddae4946c9573df3ca000b6373c206fdd1b1b73449890ff4bc1394fe9f3`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 47.5 MB (47480935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a6dd1d48746db312c308bfd10764bbcb4db14b60b098a2163dd71fd0e4b647`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa84c37bd86b576eb68224aea33f5065a45c29be9acd39db0da6e7ed15fad239`  
		Last Modified: Thu, 16 Jul 2026 02:15:51 GMT  
		Size: 73.9 MB (73919239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b78cc7f83a992361f31c2a1a94a6125364f22f9b9c2afd79cbbf0a7190cc15`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:ce3afc7f023cf5cd5b8afe2cad9d4cdc57af6ad2da0c521aba657c04fc7419f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12844d828448551fe8fb4436d8b34748d939d38eed5554c8cbe639962b9e6d4c`

```dockerfile
```

-	Layers:
	-	`sha256:ea41459860744cdd0b85a377123f9f31153c151a5f9097c4b69f845cf5d50c26`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3c156bf2e61a89e3371024ccf2fb11fc313669c683ecc7467e1bc3156bc47e`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:83deed415af546eea953cbcdf140d26910ef62a1793336d5d5ccfe92f527ecb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0211f923286a83f733e6287f6d8cc1a114bf01e9128ecf1f72c3dbfb320b8e60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:38:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:38:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:38:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:38:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:38:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd826277ac666eaabcec730524d781e6708964302073e064cc120e3996edc5fd`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 44.5 MB (44528787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ffbe3575f392574527ea946a99acecbfa63358cae79f38d9cab2ca6960b006`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0730416434014f0a1507d39630e2a54f27a8247bcda3526e42151e37c7efe0`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 73.9 MB (73919126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b967f1888507e002532a8683e2001cebada1eff4b753bd213852973abec394d7`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:84a7ad3ad67f5214457dada8c2d480f1de6e6c987ef3d933dc954a29fcfcf5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773a7cfb2d01bf3ff34a62064206fefa41a15a5b5277975dab25fbea74995a0`

```dockerfile
```

-	Layers:
	-	`sha256:baf06372034c3d55cd196e514984bf544c3f60f7839eaea164e0118b8425a8b7`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e68f2efc069fd61ec926fb95b571bdbadec670f66e77b34c0eea3cca679a3ee`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:bookworm`

```console
$ docker pull cassandra@sha256:e52bb93c21f69cc5c2f5eb9e7d9736b10a047ad38bc7776480c7dbbf7d4e0ba7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:21428e06215eb9d2de774daa4b66e9a29e72bfb6d84da0a12f074cc9e4ba7236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d44ea60f7e847dfefea06c8c2a71fa73aa4378d62ca6778531169e6ab26df0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:21:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:21:27 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:21:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67583a9db8ca2c682644c2508ed62dd0e8794e32f03f8774803fa6bd559449ce`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 47.6 MB (47558109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4552b21f2e30065b2eaefdd0ec9780a3da16f67a9551a131afeb330a8e80a230`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f9b4e253d04c66520911c87fe7ba4b77e0e8cab9c95946c1f008c30d96529f`  
		Last Modified: Thu, 16 Jul 2026 01:21:43 GMT  
		Size: 73.9 MB (73919055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa1cb70b9f9340321698a82d1db73116a98df9bfe0887c0ba8ba489b29bad7d`  
		Last Modified: Thu, 16 Jul 2026 01:21:42 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b1b1dcd9371d998d90aa369169f4bad4efe3c42162ea7cb6d9c02c9b898d4b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5ef81ea774b548d8228b1fab4f5823e4149e622083ab88d745f4b852bfc29f`

```dockerfile
```

-	Layers:
	-	`sha256:239d0ec75d632313de09ae01c34893664b2b24d8c886d0c7fc59f027e8b4eb23`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69179d32e7c95e8006b967502d711ba9bd0331975ce7e37c0e50f6e18eecd11e`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79f6fb3c071225441dacb090aa2584499abb24e01c7498cb0da51fb2204ba1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa84c4e22bed8761a620198346683b50b12a19a291bcd158eed673998735a11f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:13:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:13:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:13:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:13:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc56da79126e161ef7afd14b69de32243b30b0b85c63356faeabeffdc1bd3f8`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778a32f215705b51afc94326ba7d00b6754f3a7e9c8a1bc3ca6742c359539cc7`  
		Last Modified: Thu, 16 Jul 2026 01:14:35 GMT  
		Size: 16.2 MB (16217643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7eb786a38831633b89c70313dd7adcdd85c3ef9d1155dad378e0a17ad93358`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.2 MB (1232621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0ec6d6cadb89b54a8dc8bcfc459e4b60dd2750b76f2df2ca80cff41c7d22ef`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 45.1 MB (45126007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e8551c04eda90a0c361c0f0d1f8f258846584da120a54de768db226004acb7`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4579324ec9f710deb28e88de4400ab6e8afcb9f426dc03ab424dee9bdd1dde3`  
		Last Modified: Thu, 16 Jul 2026 01:14:38 GMT  
		Size: 73.9 MB (73919000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a998649a3fcfd659d7a9687d94d39c5f6c1693a7a15c6da4da30b074675ac194`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1d74e06c8209f7499734d4e63f6d2df6c75ba33caff51406ac969c38a1f71b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db24df902680315b7cc8adbf5366f179896ee0b38dc7fd9edf83d882bf6930b2`

```dockerfile
```

-	Layers:
	-	`sha256:7ff5018774ebfde586deb15f6e0bbaa5d915e794e47ed4f12ba81ae908dbaf7f`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f36ce200a459a5a0565d4a223eb6384272517279446b4930c10259e55372c5b`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f93e3883b8943dd443b2e79969a7dda3e020d69b70ec44e695c90b202788eaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5be09972ebb85b5443291b44eec2e948bc33f9efdb64706a5ca48a665e98f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0eed816fe9f7fd543934d994632b4b9ff54224abf0976c03fd00c13166a417c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4862826110307693d18e277042d41a7d01c83b895c3c5f6b4c388e3d5916b15e`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500d5e90408ab7a63d907588eb9253f0fe1f09171a6cf0f791c332b86047b05f`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c596ae244cc3f8450db101e6577b33e9f6aef56c86d3c38dfca0072218cc224`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 47.0 MB (47041130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb378950b77d874d9138b797d936d09fc8954a51b80e64eca9e60950d60a503`  
		Last Modified: Thu, 16 Jul 2026 01:19:00 GMT  
		Size: 73.9 MB (73919190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606ec9002ef8680381481904c73ec13c8d7f1482a2e3ac67d05d9ee8034278e7`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:78e09712b7dd2cf5fbade1abb427ea10c874244f9306672650c390d084608020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543858f444182edec14646286de0e05f2d61c0df689308486d9c99f206533592`

```dockerfile
```

-	Layers:
	-	`sha256:515fc575be7a59fa4f611a1de82304a0a0a8ae4d79d81953c3a27cb5413fa072`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e6598c79a4c4b9dab8aa09de88ac8c9dca5378a488131db25a29179ca3d455`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:7c80e9c53015654b2c3c796ebd1947868b5cbb983be5f39671916ff454556070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b48fe1830d5e93ae0f75a6db27f22142c2cfe138f6c473594118a69beca9a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:14:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 02:15:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:15:15 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:15:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:15:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:15:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b805ddae4946c9573df3ca000b6373c206fdd1b1b73449890ff4bc1394fe9f3`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 47.5 MB (47480935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a6dd1d48746db312c308bfd10764bbcb4db14b60b098a2163dd71fd0e4b647`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa84c37bd86b576eb68224aea33f5065a45c29be9acd39db0da6e7ed15fad239`  
		Last Modified: Thu, 16 Jul 2026 02:15:51 GMT  
		Size: 73.9 MB (73919239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b78cc7f83a992361f31c2a1a94a6125364f22f9b9c2afd79cbbf0a7190cc15`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:ce3afc7f023cf5cd5b8afe2cad9d4cdc57af6ad2da0c521aba657c04fc7419f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12844d828448551fe8fb4436d8b34748d939d38eed5554c8cbe639962b9e6d4c`

```dockerfile
```

-	Layers:
	-	`sha256:ea41459860744cdd0b85a377123f9f31153c151a5f9097c4b69f845cf5d50c26`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3c156bf2e61a89e3371024ccf2fb11fc313669c683ecc7467e1bc3156bc47e`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:83deed415af546eea953cbcdf140d26910ef62a1793336d5d5ccfe92f527ecb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0211f923286a83f733e6287f6d8cc1a114bf01e9128ecf1f72c3dbfb320b8e60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:38:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:38:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:38:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:38:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:38:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd826277ac666eaabcec730524d781e6708964302073e064cc120e3996edc5fd`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 44.5 MB (44528787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ffbe3575f392574527ea946a99acecbfa63358cae79f38d9cab2ca6960b006`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0730416434014f0a1507d39630e2a54f27a8247bcda3526e42151e37c7efe0`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 73.9 MB (73919126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b967f1888507e002532a8683e2001cebada1eff4b753bd213852973abec394d7`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:84a7ad3ad67f5214457dada8c2d480f1de6e6c987ef3d933dc954a29fcfcf5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773a7cfb2d01bf3ff34a62064206fefa41a15a5b5277975dab25fbea74995a0`

```dockerfile
```

-	Layers:
	-	`sha256:baf06372034c3d55cd196e514984bf544c3f60f7839eaea164e0118b8425a8b7`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e68f2efc069fd61ec926fb95b571bdbadec670f66e77b34c0eea3cca679a3ee`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:e52bb93c21f69cc5c2f5eb9e7d9736b10a047ad38bc7776480c7dbbf7d4e0ba7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:21428e06215eb9d2de774daa4b66e9a29e72bfb6d84da0a12f074cc9e4ba7236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d44ea60f7e847dfefea06c8c2a71fa73aa4378d62ca6778531169e6ab26df0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:21:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:21:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:21:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:21:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:21:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:21:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:21:27 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:21:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9bf2b77e965a98e7585fd954550be77558891c5128a6ff902928ce2bbdbdeb`  
		Last Modified: Thu, 16 Jul 2026 01:21:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bc933523c1606d51669ff136623e20e37026bd48d3addf9b31fd4da39f371d`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 18.1 MB (18149494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc671df7c89fb3309752d82af7f0008011424fd80db192e4596f6697077374ee`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 1.3 MB (1266634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67583a9db8ca2c682644c2508ed62dd0e8794e32f03f8774803fa6bd559449ce`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 47.6 MB (47558109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4552b21f2e30065b2eaefdd0ec9780a3da16f67a9551a131afeb330a8e80a230`  
		Last Modified: Thu, 16 Jul 2026 01:21:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f9b4e253d04c66520911c87fe7ba4b77e0e8cab9c95946c1f008c30d96529f`  
		Last Modified: Thu, 16 Jul 2026 01:21:43 GMT  
		Size: 73.9 MB (73919055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa1cb70b9f9340321698a82d1db73116a98df9bfe0887c0ba8ba489b29bad7d`  
		Last Modified: Thu, 16 Jul 2026 01:21:42 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:b1b1dcd9371d998d90aa369169f4bad4efe3c42162ea7cb6d9c02c9b898d4b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5ef81ea774b548d8228b1fab4f5823e4149e622083ab88d745f4b852bfc29f`

```dockerfile
```

-	Layers:
	-	`sha256:239d0ec75d632313de09ae01c34893664b2b24d8c886d0c7fc59f027e8b4eb23`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69179d32e7c95e8006b967502d711ba9bd0331975ce7e37c0e50f6e18eecd11e`  
		Last Modified: Thu, 16 Jul 2026 01:21:40 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79f6fb3c071225441dacb090aa2584499abb24e01c7498cb0da51fb2204ba1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa84c4e22bed8761a620198346683b50b12a19a291bcd158eed673998735a11f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:13:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:13:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:13:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:13:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:13:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:13:56 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc56da79126e161ef7afd14b69de32243b30b0b85c63356faeabeffdc1bd3f8`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778a32f215705b51afc94326ba7d00b6754f3a7e9c8a1bc3ca6742c359539cc7`  
		Last Modified: Thu, 16 Jul 2026 01:14:35 GMT  
		Size: 16.2 MB (16217643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7eb786a38831633b89c70313dd7adcdd85c3ef9d1155dad378e0a17ad93358`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 1.2 MB (1232621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0ec6d6cadb89b54a8dc8bcfc459e4b60dd2750b76f2df2ca80cff41c7d22ef`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 45.1 MB (45126007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e8551c04eda90a0c361c0f0d1f8f258846584da120a54de768db226004acb7`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4579324ec9f710deb28e88de4400ab6e8afcb9f426dc03ab424dee9bdd1dde3`  
		Last Modified: Thu, 16 Jul 2026 01:14:38 GMT  
		Size: 73.9 MB (73919000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a998649a3fcfd659d7a9687d94d39c5f6c1693a7a15c6da4da30b074675ac194`  
		Last Modified: Thu, 16 Jul 2026 01:14:36 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:1d74e06c8209f7499734d4e63f6d2df6c75ba33caff51406ac969c38a1f71b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db24df902680315b7cc8adbf5366f179896ee0b38dc7fd9edf83d882bf6930b2`

```dockerfile
```

-	Layers:
	-	`sha256:7ff5018774ebfde586deb15f6e0bbaa5d915e794e47ed4f12ba81ae908dbaf7f`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f36ce200a459a5a0565d4a223eb6384272517279446b4930c10259e55372c5b`  
		Last Modified: Thu, 16 Jul 2026 01:14:34 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f93e3883b8943dd443b2e79969a7dda3e020d69b70ec44e695c90b202788eaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5be09972ebb85b5443291b44eec2e948bc33f9efdb64706a5ca48a665e98f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:18:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:18:27 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:18:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:18:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:18:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:18:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0eed816fe9f7fd543934d994632b4b9ff54224abf0976c03fd00c13166a417c`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4862826110307693d18e277042d41a7d01c83b895c3c5f6b4c388e3d5916b15e`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 17.9 MB (17901701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500d5e90408ab7a63d907588eb9253f0fe1f09171a6cf0f791c332b86047b05f`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 1.2 MB (1220173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c596ae244cc3f8450db101e6577b33e9f6aef56c86d3c38dfca0072218cc224`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 47.0 MB (47041130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736b851a1f21125ee295d6a3fde4d076ba744aa637c218224504aec1af33b1d`  
		Last Modified: Thu, 16 Jul 2026 01:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb378950b77d874d9138b797d936d09fc8954a51b80e64eca9e60950d60a503`  
		Last Modified: Thu, 16 Jul 2026 01:19:00 GMT  
		Size: 73.9 MB (73919190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606ec9002ef8680381481904c73ec13c8d7f1482a2e3ac67d05d9ee8034278e7`  
		Last Modified: Thu, 16 Jul 2026 01:18:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:78e09712b7dd2cf5fbade1abb427ea10c874244f9306672650c390d084608020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543858f444182edec14646286de0e05f2d61c0df689308486d9c99f206533592`

```dockerfile
```

-	Layers:
	-	`sha256:515fc575be7a59fa4f611a1de82304a0a0a8ae4d79d81953c3a27cb5413fa072`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e6598c79a4c4b9dab8aa09de88ac8c9dca5378a488131db25a29179ca3d455`  
		Last Modified: Thu, 16 Jul 2026 01:18:56 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:7c80e9c53015654b2c3c796ebd1947868b5cbb983be5f39671916ff454556070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b48fe1830d5e93ae0f75a6db27f22142c2cfe138f6c473594118a69beca9a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:13:51 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 02:14:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:14:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 02:14:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:14:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 02:14:32 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 02:15:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 02:15:15 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 02:15:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 02:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 02:15:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 02:15:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af268b0cec359c87d69472655c642584d33f1841cd60bdf04cd91f36e143ae1c`  
		Last Modified: Thu, 16 Jul 2026 02:15:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44c27f2390e72c60436aed33aff6a5294be8c9e3bb577bd5cac7ba960c8dd09`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 19.5 MB (19496639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259ae82797d33b25bd4bddcbf3d491abc43c9811bafe1fd9ad83e2b4dc0f05f`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 1.2 MB (1225545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b805ddae4946c9573df3ca000b6373c206fdd1b1b73449890ff4bc1394fe9f3`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 47.5 MB (47480935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a6dd1d48746db312c308bfd10764bbcb4db14b60b098a2163dd71fd0e4b647`  
		Last Modified: Thu, 16 Jul 2026 02:15:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa84c37bd86b576eb68224aea33f5065a45c29be9acd39db0da6e7ed15fad239`  
		Last Modified: Thu, 16 Jul 2026 02:15:51 GMT  
		Size: 73.9 MB (73919239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b78cc7f83a992361f31c2a1a94a6125364f22f9b9c2afd79cbbf0a7190cc15`  
		Last Modified: Thu, 16 Jul 2026 02:15:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:ce3afc7f023cf5cd5b8afe2cad9d4cdc57af6ad2da0c521aba657c04fc7419f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12844d828448551fe8fb4436d8b34748d939d38eed5554c8cbe639962b9e6d4c`

```dockerfile
```

-	Layers:
	-	`sha256:ea41459860744cdd0b85a377123f9f31153c151a5f9097c4b69f845cf5d50c26`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3c156bf2e61a89e3371024ccf2fb11fc313669c683ecc7467e1bc3156bc47e`  
		Last Modified: Thu, 16 Jul 2026 02:15:45 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; s390x

```console
$ docker pull cassandra@sha256:83deed415af546eea953cbcdf140d26910ef62a1793336d5d5ccfe92f527ecb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0211f923286a83f733e6287f6d8cc1a114bf01e9128ecf1f72c3dbfb320b8e60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:38:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 16 Jul 2026 01:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 01:38:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:38:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
RUN java --version # buildkit
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 16 Jul 2026 01:38:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:38:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 16 Jul 2026 01:38:41 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 16 Jul 2026 01:38:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
VOLUME [/var/lib/cassandra]
# Thu, 16 Jul 2026 01:38:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 01:38:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 01:38:56 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 16 Jul 2026 01:38:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcb2c8f2479b3e8f76403564ac34712772b42cb683be9e04ea580aa3b2988fc`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cfe47ec8340380909befb7d1d65d97f7c9039393517edd30c251719f24a55d`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 17.5 MB (17457204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b811c9805210538490f1527611c9f54ac3560664455bbd867eb703425aaccf7b`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd826277ac666eaabcec730524d781e6708964302073e064cc120e3996edc5fd`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 44.5 MB (44528787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ffbe3575f392574527ea946a99acecbfa63358cae79f38d9cab2ca6960b006`  
		Last Modified: Thu, 16 Jul 2026 01:39:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0730416434014f0a1507d39630e2a54f27a8247bcda3526e42151e37c7efe0`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 73.9 MB (73919126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b967f1888507e002532a8683e2001cebada1eff4b753bd213852973abec394d7`  
		Last Modified: Thu, 16 Jul 2026 01:39:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:84a7ad3ad67f5214457dada8c2d480f1de6e6c987ef3d933dc954a29fcfcf5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773a7cfb2d01bf3ff34a62064206fefa41a15a5b5277975dab25fbea74995a0`

```dockerfile
```

-	Layers:
	-	`sha256:baf06372034c3d55cd196e514984bf544c3f60f7839eaea164e0118b8425a8b7`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e68f2efc069fd61ec926fb95b571bdbadec670f66e77b34c0eea3cca679a3ee`  
		Last Modified: Thu, 16 Jul 2026 01:39:15 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json
