<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:4`](#cassandra4)
-	[`cassandra:4-bookworm`](#cassandra4-bookworm)
-	[`cassandra:4.0`](#cassandra40)
-	[`cassandra:4.0-bookworm`](#cassandra40-bookworm)
-	[`cassandra:4.0.21`](#cassandra4021)
-	[`cassandra:4.0.21-bookworm`](#cassandra4021-bookworm)
-	[`cassandra:4.1`](#cassandra41)
-	[`cassandra:4.1-bookworm`](#cassandra41-bookworm)
-	[`cassandra:4.1.12`](#cassandra4112)
-	[`cassandra:4.1.12-bookworm`](#cassandra4112-bookworm)
-	[`cassandra:5`](#cassandra5)
-	[`cassandra:5-trixie`](#cassandra5-trixie)
-	[`cassandra:5.0`](#cassandra50)
-	[`cassandra:5.0-trixie`](#cassandra50-trixie)
-	[`cassandra:5.0.9`](#cassandra509)
-	[`cassandra:5.0.9-trixie`](#cassandra509-trixie)
-	[`cassandra:6.0`](#cassandra60)
-	[`cassandra:6.0-alpha2`](#cassandra60-alpha2)
-	[`cassandra:6.0-alpha2-trixie`](#cassandra60-alpha2-trixie)
-	[`cassandra:6.0-trixie`](#cassandra60-trixie)
-	[`cassandra:latest`](#cassandralatest)
-	[`cassandra:trixie`](#cassandratrixie)

## `cassandra:4`

```console
$ docker pull cassandra@sha256:25f6a4d5c258fa7295cb4f4ccd7d94a21e565a1040ba1c205455fc11ff8041fc
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

### `cassandra:4` - linux; amd64

```console
$ docker pull cassandra@sha256:b755310b1f5c8761a538eafe0b81326ed1fc4b8cd3da14d8d37609a9e4d73bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149014824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f138ee00e8fc2664905ef566645a152a2bf87ce36a48b4b76366913126a203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:09:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:09:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b7959eec031f8ff5fd156d7e9562466112205a56238f093af30092067bc3be`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4daff41400ba2effbdc2ad650b381c589b969198645fd971a4040b87be0d082`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 18.0 MB (17967967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5de352f0b8da6103f5b7211520753c75b4f2b50b16e423ae2941ec84e4731f9`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.3 MB (1267098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dcf2c5e5e8b1bc73cb569dbe39dd5063529613f390e82c7a31079ef7e405ce`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 47.3 MB (47325761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7596e39f7622c84ef9d1951434bbe3a38c4e9ac805b6673c6d68d94487345e49`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71291102b79eeb78a3b37dcc8fbac81c822eac45ed493f795d363eceed0c7ef0`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 54.2 MB (54202220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c3916ca48e8214f0bfd4abce1a95bc61f5d23d891b0c69dc002c29ce4015b6`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:302a6ac43026251b9437e44567273cc39f99ba2b7b2a10c6124d36809ffeac8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7094742716199924fe9c31793d959dfc47ef3e0ff172a5cb127af12907d77562`

```dockerfile
```

-	Layers:
	-	`sha256:436b3106e63ac93e4c311ad7362965639d3ab38bd1ae80061dca9b015c69784d`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf02d90948096655f24f3b80174e0a7bcea11599fb7117801b34f3b454e4252`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51172049f777c6939fa7ea512c2dfa53b3878e6a90935e35113a520d4563bce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140860311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281c7fd927d2766d4a87f8e727ad8aade37a9d3e96a18dcd794abfd79a6ce191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:01:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 03:01:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:50 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d594f82a02a3dccda5a47944c6890d1dcc8cabc71b6a59d8dda5ad3bace3c85f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed74d80c676cd26614ccf45fed7a2d72ef7c7c1baa5128ed81a565f9de6e921`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 16.0 MB (16032396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473071384e348972ef0f65ee208d401f679329e238d2e291b0c5adcf4788b09f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.2 MB (1233130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ace4fb4336d441dadf3d128c2c63f101b8986551cd705218ac661b4e3ad680d`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 45.4 MB (45433494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a944f944bb7d9967d794beaa5789faa9b6da15b8bf9619f4c070d966fea124`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce53e8701b2674d0cf9a4d760fccb09f936c83a600af8b5f54fb015ac983b5c`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 54.2 MB (54202261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6825ae7b054cbbf660e53b7c4557be9e5c8bab0fffde02bbd466f278725dc24`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:5c68dee9334e775f2bdf178d00505ad44ac323b3df32c504c3f6dbe822f3c661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ab350867dc7f79d8b47a38f5adb80051c8c0982c3762f56b7a2d939473e2f1`

```dockerfile
```

-	Layers:
	-	`sha256:eb8234bed244315913c822c98466665fdc1ad620b0256b3fafcaacbaa0ca7e04`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc2402854926bc3cc47fa5958384ea2449f26a3199af47d6baf9ebcd4ceb8de`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:c5b8bf2e666ec048a88fe2b900f12925b6cf3dfc807a4518518c900210085824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146905780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4b121bd2e459fb502028ff10e1fd5663cec9c74c880b9bdf913f2ae0fdb637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:15:27 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:16:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:16:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:16:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed2d56a99d9a3dae0e5ca351cfe8a6119ee531855fe36ec31a901126690f422`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f6027cf18d9b27558c414900ef3dfb6b6b84935abea7dfe66ffd10808fc00`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 17.7 MB (17710468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7ff2c85d6e71054cee3dd521f42115dbe4148ed4f7b41826ee12cb18094e48`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.2 MB (1220541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1a848a49fdc40b979ad44465fd986364b50cf2a5999ca507e24ed959107ae1`  
		Last Modified: Tue, 06 Oct 2026 02:16:22 GMT  
		Size: 45.6 MB (45632924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77a17e4579e1813537930b4c8cabdcd3cc61dc78a4ffbe242126dc5e4a4e527`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f974ea364ec83c372c6da3e953d35a047d9f2ec1823e4511733cdcac822b02`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 54.2 MB (54202211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49eb28534fa9f18d1353df87e095dcf3dd943f78258afefa81ad94b3070a1edd`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:fc1c2ababe170bcf85b68f875038bfd20edfa074aaa660a7d0dec403018f165c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10690431564e011fa52059e380fbeabffd79dcdd4fdb31a4c65ec9b4e025dab`

```dockerfile
```

-	Layers:
	-	`sha256:8fdecbec0a94b4de7e9f198fd37766af2ae20aef60c630cbda41cf1e460fc0de`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56310c5a9c96a9c82c67b3d9bf96172996b269498cd317fafe411a6fb9664a29`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; ppc64le

```console
$ docker pull cassandra@sha256:94bfa892890fe161bab5f8f76ba6648b6d834abda702e73cfeeb93f46d4e37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149633077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e1e6744e262a671d1dd206b8f01bbc0c6d54afd885863dc6b8424c762f8d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:35:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:35:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 09:36:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:36:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:36:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:36:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e72ad8a034a3199d7fa9eff529672e3821746c05d7acbf5f769948f33f7d01`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79c7462e96bbf8763e8cc49030dfda4740ed1eb9b4d6b716f668ee05473c61`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 19.3 MB (19319077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f973f1ee375066cead8b257e648838ec579f4fb34a789ca2ff63245e717a193`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 1.2 MB (1226098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84695c366bf69b6739176cdc5ca773d18dbbf24d5e31fe55c0d91466e856b4ac`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 42.8 MB (42790581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63b545f1669b264eaa5e2b90d5c4ba4d15a285564dc21b2d143e01a409505bc`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f629a0940c6585dab0f29124bc779a0e792cc83793ca1de801a54089d036ea`  
		Last Modified: Tue, 06 Oct 2026 09:37:42 GMT  
		Size: 54.2 MB (54202428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc01e206acba499fac9dbde211c16f4b35ac8253a18b00bd65fb200cbb4d02ca`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:8410195fa4865342e3da46264b5593f12a6da263ecf65824bd0f62ff16be38cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0318f2ffaec357bd6c7a39120f1a1a8132c00c0bdce96ce63fef3020cedd141f`

```dockerfile
```

-	Layers:
	-	`sha256:9f0e6477a9672ae13f6df90de1e117c00f56b67d57e326f3daf242bfe5eb3817`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b89762cb85903233c07834df0bc198de5d442d2f1043bf671241b38712b57218`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4-bookworm`

```console
$ docker pull cassandra@sha256:25f6a4d5c258fa7295cb4f4ccd7d94a21e565a1040ba1c205455fc11ff8041fc
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
$ docker pull cassandra@sha256:b755310b1f5c8761a538eafe0b81326ed1fc4b8cd3da14d8d37609a9e4d73bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149014824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f138ee00e8fc2664905ef566645a152a2bf87ce36a48b4b76366913126a203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:09:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:09:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b7959eec031f8ff5fd156d7e9562466112205a56238f093af30092067bc3be`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4daff41400ba2effbdc2ad650b381c589b969198645fd971a4040b87be0d082`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 18.0 MB (17967967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5de352f0b8da6103f5b7211520753c75b4f2b50b16e423ae2941ec84e4731f9`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.3 MB (1267098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dcf2c5e5e8b1bc73cb569dbe39dd5063529613f390e82c7a31079ef7e405ce`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 47.3 MB (47325761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7596e39f7622c84ef9d1951434bbe3a38c4e9ac805b6673c6d68d94487345e49`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71291102b79eeb78a3b37dcc8fbac81c822eac45ed493f795d363eceed0c7ef0`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 54.2 MB (54202220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c3916ca48e8214f0bfd4abce1a95bc61f5d23d891b0c69dc002c29ce4015b6`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:302a6ac43026251b9437e44567273cc39f99ba2b7b2a10c6124d36809ffeac8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7094742716199924fe9c31793d959dfc47ef3e0ff172a5cb127af12907d77562`

```dockerfile
```

-	Layers:
	-	`sha256:436b3106e63ac93e4c311ad7362965639d3ab38bd1ae80061dca9b015c69784d`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf02d90948096655f24f3b80174e0a7bcea11599fb7117801b34f3b454e4252`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51172049f777c6939fa7ea512c2dfa53b3878e6a90935e35113a520d4563bce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140860311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281c7fd927d2766d4a87f8e727ad8aade37a9d3e96a18dcd794abfd79a6ce191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:01:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 03:01:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:50 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d594f82a02a3dccda5a47944c6890d1dcc8cabc71b6a59d8dda5ad3bace3c85f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed74d80c676cd26614ccf45fed7a2d72ef7c7c1baa5128ed81a565f9de6e921`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 16.0 MB (16032396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473071384e348972ef0f65ee208d401f679329e238d2e291b0c5adcf4788b09f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.2 MB (1233130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ace4fb4336d441dadf3d128c2c63f101b8986551cd705218ac661b4e3ad680d`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 45.4 MB (45433494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a944f944bb7d9967d794beaa5789faa9b6da15b8bf9619f4c070d966fea124`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce53e8701b2674d0cf9a4d760fccb09f936c83a600af8b5f54fb015ac983b5c`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 54.2 MB (54202261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6825ae7b054cbbf660e53b7c4557be9e5c8bab0fffde02bbd466f278725dc24`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5c68dee9334e775f2bdf178d00505ad44ac323b3df32c504c3f6dbe822f3c661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ab350867dc7f79d8b47a38f5adb80051c8c0982c3762f56b7a2d939473e2f1`

```dockerfile
```

-	Layers:
	-	`sha256:eb8234bed244315913c822c98466665fdc1ad620b0256b3fafcaacbaa0ca7e04`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc2402854926bc3cc47fa5958384ea2449f26a3199af47d6baf9ebcd4ceb8de`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:c5b8bf2e666ec048a88fe2b900f12925b6cf3dfc807a4518518c900210085824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146905780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4b121bd2e459fb502028ff10e1fd5663cec9c74c880b9bdf913f2ae0fdb637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:15:27 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:16:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:16:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:16:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed2d56a99d9a3dae0e5ca351cfe8a6119ee531855fe36ec31a901126690f422`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f6027cf18d9b27558c414900ef3dfb6b6b84935abea7dfe66ffd10808fc00`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 17.7 MB (17710468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7ff2c85d6e71054cee3dd521f42115dbe4148ed4f7b41826ee12cb18094e48`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.2 MB (1220541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1a848a49fdc40b979ad44465fd986364b50cf2a5999ca507e24ed959107ae1`  
		Last Modified: Tue, 06 Oct 2026 02:16:22 GMT  
		Size: 45.6 MB (45632924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77a17e4579e1813537930b4c8cabdcd3cc61dc78a4ffbe242126dc5e4a4e527`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f974ea364ec83c372c6da3e953d35a047d9f2ec1823e4511733cdcac822b02`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 54.2 MB (54202211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49eb28534fa9f18d1353df87e095dcf3dd943f78258afefa81ad94b3070a1edd`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:fc1c2ababe170bcf85b68f875038bfd20edfa074aaa660a7d0dec403018f165c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10690431564e011fa52059e380fbeabffd79dcdd4fdb31a4c65ec9b4e025dab`

```dockerfile
```

-	Layers:
	-	`sha256:8fdecbec0a94b4de7e9f198fd37766af2ae20aef60c630cbda41cf1e460fc0de`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56310c5a9c96a9c82c67b3d9bf96172996b269498cd317fafe411a6fb9664a29`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:94bfa892890fe161bab5f8f76ba6648b6d834abda702e73cfeeb93f46d4e37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149633077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e1e6744e262a671d1dd206b8f01bbc0c6d54afd885863dc6b8424c762f8d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:35:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:35:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 09:36:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:36:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:36:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:36:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e72ad8a034a3199d7fa9eff529672e3821746c05d7acbf5f769948f33f7d01`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79c7462e96bbf8763e8cc49030dfda4740ed1eb9b4d6b716f668ee05473c61`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 19.3 MB (19319077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f973f1ee375066cead8b257e648838ec579f4fb34a789ca2ff63245e717a193`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 1.2 MB (1226098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84695c366bf69b6739176cdc5ca773d18dbbf24d5e31fe55c0d91466e856b4ac`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 42.8 MB (42790581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63b545f1669b264eaa5e2b90d5c4ba4d15a285564dc21b2d143e01a409505bc`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f629a0940c6585dab0f29124bc779a0e792cc83793ca1de801a54089d036ea`  
		Last Modified: Tue, 06 Oct 2026 09:37:42 GMT  
		Size: 54.2 MB (54202428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc01e206acba499fac9dbde211c16f4b35ac8253a18b00bd65fb200cbb4d02ca`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:8410195fa4865342e3da46264b5593f12a6da263ecf65824bd0f62ff16be38cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0318f2ffaec357bd6c7a39120f1a1a8132c00c0bdce96ce63fef3020cedd141f`

```dockerfile
```

-	Layers:
	-	`sha256:9f0e6477a9672ae13f6df90de1e117c00f56b67d57e326f3daf242bfe5eb3817`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b89762cb85903233c07834df0bc198de5d442d2f1043bf671241b38712b57218`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0`

```console
$ docker pull cassandra@sha256:0909b1681015a66782ca3286a371145cbea69f5b293bc4ed976af769730f89fe
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

### `cassandra:4.0` - linux; amd64

```console
$ docker pull cassandra@sha256:cf3d71b2042c185a6480b41eaeee194349b990247436cb6d9329cb4dbe8f5521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146894243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b054827ab93e9ff3b8f91159f2701dc94a4335fddff89f8573cffd839478004e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:09:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 02:09:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad99c471152a12d189df16ffbbb859c45c97120cdc045bce6eecfe10ecbbdfd`  
		Last Modified: Tue, 06 Oct 2026 02:10:06 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0859e757c306961a21cac4b04855f74643c2beade4f3f2a77bac787af14d53`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 18.0 MB (17967979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22efdae8959ef9ddb766122801ab47500ebacdaf1120c6b3f30212cadfb44123`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 1.3 MB (1267084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcadac622b0eece935a5ab536cb4c812c738c311a7a07c79fab5118c38a8022`  
		Last Modified: Tue, 06 Oct 2026 02:10:08 GMT  
		Size: 47.3 MB (47325687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e1b38b5f56505849926c483caa7fcfe859b7a2c00fa6a86c58a6cb28200380`  
		Last Modified: Tue, 06 Oct 2026 02:10:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5202b986da08cb5f831c36db81f06338161bc6d8d1788999ff2e2fa66c9af7`  
		Last Modified: Tue, 06 Oct 2026 02:10:09 GMT  
		Size: 52.1 MB (52081712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414f961655210c14deae3bda41567ae43ba04a93d854f56871467d33fabdeabf`  
		Last Modified: Tue, 06 Oct 2026 02:10:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:2ca62cab4b5553c82b97c7060a0a339c7d045f6dca352c6af251905e9179f921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76d0cddd25cbaae992e82b582de6a2acbd1e6119cecb0ecbaaec6d248aff81d`

```dockerfile
```

-	Layers:
	-	`sha256:5557dfe504dade1291ba4fd578dfcffe70901dfef8a1b98fceeb5b08a4fc52ee`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 3.3 MB (3274860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51086548e6001a5591d86aa9365ec52e70974c3037a93c0a1783917ce835f9d0`  
		Last Modified: Tue, 06 Oct 2026 02:10:06 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:04714ffa29f357592f390f8ffcb25789655ffb8026653c0be3ad0c6475c25235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138739610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f002ec386489c09dc788fea23d34c9f9be41f35d6cdd40f8317c2aa7c10fe27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:01:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:50 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 03:02:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:02:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:02:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:02:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:02:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:02:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb527f3e54e423ba132985957b2408d6d9295c3071f1fd8b881937d458a5271a`  
		Last Modified: Tue, 06 Oct 2026 03:02:20 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f5063b9fbe1e4e31164b60a8879cb32fab891e2489245d25562c30c0d7db5f`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 16.0 MB (16032304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44cbf36f3fa53e0fa39784d4c11380e986381d391aa601609f90a293f1f381a`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 1.2 MB (1233105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14f0f1709959d3ee796f98506d291aba50dd530a279ef2a5337100b6dd5d168`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 45.4 MB (45433495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4dd7727a4a4cd2d90054a88d9a613f2032331ce96c5a7cf12aa42303c8a7dc`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b021a3fd70cefff25544ba8ad711e07b45a0a5020f14477f3a48f6b605106e`  
		Last Modified: Tue, 06 Oct 2026 03:02:23 GMT  
		Size: 52.1 MB (52081677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d886cd261a118e427630fd386334c6b42aa3b6bdc6c1134e7f34990c40a84d`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:542d63efa43c1fbe0dc07af3de78a274a1f81db00efe55c1d18bae942eaedd2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4208ab7763bc6f0fff336cf0d85466abd12bc6b394c431b9cbc67e37423100ae`

```dockerfile
```

-	Layers:
	-	`sha256:a2c420de312587615f018e31ead54a7b6ba995ee06df1869480a2c38a72326ef`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 3.3 MB (3278574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2925c7325b7e7e82f3fb1c7700ea7321aac78b90c79c91b7d5dbe18ebfe8d5ad`  
		Last Modified: Tue, 06 Oct 2026 03:02:20 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:b8b40982c78a590816252349e9763c008cda68e5e08203aa6b70c899eba27d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144785500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09407c1c28ee9dcfac0b6df15dc50308198b0ca8a06948be13241d68edd343f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:56 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 02:16:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:16:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:16:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:16:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:16:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:16:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5f3234281ab6f5ba447c18dbf78f4400459c90a314562b6dcc944a6cb653a2`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed4a737e7dc8fe0252f061d3a1f9313d4528f8d1ffd8039f8674b1fb90b56d1`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 17.7 MB (17710530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582b189cbebf8caceaf641d730dd086dbb143b9a9e6bd49b83b1d1dfa9726387`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 1.2 MB (1220577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b4f544889b1195d242f57d9df050570cf5fbef09fafe67be946bcf80862634`  
		Last Modified: Tue, 06 Oct 2026 02:16:32 GMT  
		Size: 45.6 MB (45632927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f716204f0430f43ed02ea8268a920f402f92c3cf685a8ff6a85750c9c3050d4`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7e4b845a54d3540d35cd7147e6d86002292417aba07a8e6584f639b288b741`  
		Last Modified: Tue, 06 Oct 2026 02:16:33 GMT  
		Size: 52.1 MB (52081828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce079ec43089ef6254ab7d4e8a199e494116c9b37f335b233a134272d85dc38`  
		Last Modified: Tue, 06 Oct 2026 02:16:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:b8543b0857d182f46d673cb5be64ac0186ed53e278f03e6da7b3180dff6fc9b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f7bd02d62e315433308bfc70dca13885631ace31b37b07e06c6472a13f575e`

```dockerfile
```

-	Layers:
	-	`sha256:dbaf91531f04d5f17077cb99b3a09724c990a28b8937bd2353e20a204f7611a0`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 3.3 MB (3275195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d86e385c8627caa4028d04b5a923c46a98fa873ba6ecc3e0d7084e7feb10d125`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:47e1a2a9a3a4c0c9679ce04c48387250e1fd64df09a0a494482b5d50ce408214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147512631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288ba4bfaaa020d509d303f97f47351330ef2f33aeaf0f1a7af78733b72f583f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:35:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:35:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 09:36:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:36:46 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:36:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:36:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:36:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e72ad8a034a3199d7fa9eff529672e3821746c05d7acbf5f769948f33f7d01`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79c7462e96bbf8763e8cc49030dfda4740ed1eb9b4d6b716f668ee05473c61`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 19.3 MB (19319077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f973f1ee375066cead8b257e648838ec579f4fb34a789ca2ff63245e717a193`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 1.2 MB (1226098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84695c366bf69b6739176cdc5ca773d18dbbf24d5e31fe55c0d91466e856b4ac`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 42.8 MB (42790581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63b545f1669b264eaa5e2b90d5c4ba4d15a285564dc21b2d143e01a409505bc`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64accb3473881a260ef2e3e66e127c81fc79ea428cd371419e77e48949395980`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 52.1 MB (52081982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b41d94bc7fa92932ba5760b265020218cca31c591497edf7e9c212871606c2b`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:44001b6fb5f18253a991cdd9ea2d733d3038519203fbc93bdfcbc2f76f3f2097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a6157d40ed4f44f9674fcec8a64f666626af87e062c433c0063b7b3a568112`

```dockerfile
```

-	Layers:
	-	`sha256:07ab58aaadb1b5c4957932cf3577cac9332aa6e0b54c39e8d3dbd42b8e456005`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 3.3 MB (3279108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:535f1f63b08af5f3dafb580551e3b2de06a7613a6ed2c736b8f3718545a5a0b3`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0-bookworm`

```console
$ docker pull cassandra@sha256:0909b1681015a66782ca3286a371145cbea69f5b293bc4ed976af769730f89fe
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

### `cassandra:4.0-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:cf3d71b2042c185a6480b41eaeee194349b990247436cb6d9329cb4dbe8f5521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146894243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b054827ab93e9ff3b8f91159f2701dc94a4335fddff89f8573cffd839478004e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:09:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 02:09:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad99c471152a12d189df16ffbbb859c45c97120cdc045bce6eecfe10ecbbdfd`  
		Last Modified: Tue, 06 Oct 2026 02:10:06 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0859e757c306961a21cac4b04855f74643c2beade4f3f2a77bac787af14d53`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 18.0 MB (17967979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22efdae8959ef9ddb766122801ab47500ebacdaf1120c6b3f30212cadfb44123`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 1.3 MB (1267084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcadac622b0eece935a5ab536cb4c812c738c311a7a07c79fab5118c38a8022`  
		Last Modified: Tue, 06 Oct 2026 02:10:08 GMT  
		Size: 47.3 MB (47325687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e1b38b5f56505849926c483caa7fcfe859b7a2c00fa6a86c58a6cb28200380`  
		Last Modified: Tue, 06 Oct 2026 02:10:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5202b986da08cb5f831c36db81f06338161bc6d8d1788999ff2e2fa66c9af7`  
		Last Modified: Tue, 06 Oct 2026 02:10:09 GMT  
		Size: 52.1 MB (52081712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414f961655210c14deae3bda41567ae43ba04a93d854f56871467d33fabdeabf`  
		Last Modified: Tue, 06 Oct 2026 02:10:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:2ca62cab4b5553c82b97c7060a0a339c7d045f6dca352c6af251905e9179f921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76d0cddd25cbaae992e82b582de6a2acbd1e6119cecb0ecbaaec6d248aff81d`

```dockerfile
```

-	Layers:
	-	`sha256:5557dfe504dade1291ba4fd578dfcffe70901dfef8a1b98fceeb5b08a4fc52ee`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 3.3 MB (3274860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51086548e6001a5591d86aa9365ec52e70974c3037a93c0a1783917ce835f9d0`  
		Last Modified: Tue, 06 Oct 2026 02:10:06 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:04714ffa29f357592f390f8ffcb25789655ffb8026653c0be3ad0c6475c25235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138739610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f002ec386489c09dc788fea23d34c9f9be41f35d6cdd40f8317c2aa7c10fe27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:01:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:50 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 03:02:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:02:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:02:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:02:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:02:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:02:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb527f3e54e423ba132985957b2408d6d9295c3071f1fd8b881937d458a5271a`  
		Last Modified: Tue, 06 Oct 2026 03:02:20 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f5063b9fbe1e4e31164b60a8879cb32fab891e2489245d25562c30c0d7db5f`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 16.0 MB (16032304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44cbf36f3fa53e0fa39784d4c11380e986381d391aa601609f90a293f1f381a`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 1.2 MB (1233105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14f0f1709959d3ee796f98506d291aba50dd530a279ef2a5337100b6dd5d168`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 45.4 MB (45433495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4dd7727a4a4cd2d90054a88d9a613f2032331ce96c5a7cf12aa42303c8a7dc`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b021a3fd70cefff25544ba8ad711e07b45a0a5020f14477f3a48f6b605106e`  
		Last Modified: Tue, 06 Oct 2026 03:02:23 GMT  
		Size: 52.1 MB (52081677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d886cd261a118e427630fd386334c6b42aa3b6bdc6c1134e7f34990c40a84d`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:542d63efa43c1fbe0dc07af3de78a274a1f81db00efe55c1d18bae942eaedd2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4208ab7763bc6f0fff336cf0d85466abd12bc6b394c431b9cbc67e37423100ae`

```dockerfile
```

-	Layers:
	-	`sha256:a2c420de312587615f018e31ead54a7b6ba995ee06df1869480a2c38a72326ef`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 3.3 MB (3278574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2925c7325b7e7e82f3fb1c7700ea7321aac78b90c79c91b7d5dbe18ebfe8d5ad`  
		Last Modified: Tue, 06 Oct 2026 03:02:20 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:b8b40982c78a590816252349e9763c008cda68e5e08203aa6b70c899eba27d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144785500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09407c1c28ee9dcfac0b6df15dc50308198b0ca8a06948be13241d68edd343f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:56 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 02:16:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:16:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:16:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:16:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:16:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:16:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5f3234281ab6f5ba447c18dbf78f4400459c90a314562b6dcc944a6cb653a2`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed4a737e7dc8fe0252f061d3a1f9313d4528f8d1ffd8039f8674b1fb90b56d1`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 17.7 MB (17710530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582b189cbebf8caceaf641d730dd086dbb143b9a9e6bd49b83b1d1dfa9726387`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 1.2 MB (1220577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b4f544889b1195d242f57d9df050570cf5fbef09fafe67be946bcf80862634`  
		Last Modified: Tue, 06 Oct 2026 02:16:32 GMT  
		Size: 45.6 MB (45632927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f716204f0430f43ed02ea8268a920f402f92c3cf685a8ff6a85750c9c3050d4`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7e4b845a54d3540d35cd7147e6d86002292417aba07a8e6584f639b288b741`  
		Last Modified: Tue, 06 Oct 2026 02:16:33 GMT  
		Size: 52.1 MB (52081828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce079ec43089ef6254ab7d4e8a199e494116c9b37f335b233a134272d85dc38`  
		Last Modified: Tue, 06 Oct 2026 02:16:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b8543b0857d182f46d673cb5be64ac0186ed53e278f03e6da7b3180dff6fc9b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f7bd02d62e315433308bfc70dca13885631ace31b37b07e06c6472a13f575e`

```dockerfile
```

-	Layers:
	-	`sha256:dbaf91531f04d5f17077cb99b3a09724c990a28b8937bd2353e20a204f7611a0`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 3.3 MB (3275195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d86e385c8627caa4028d04b5a923c46a98fa873ba6ecc3e0d7084e7feb10d125`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:47e1a2a9a3a4c0c9679ce04c48387250e1fd64df09a0a494482b5d50ce408214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147512631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288ba4bfaaa020d509d303f97f47351330ef2f33aeaf0f1a7af78733b72f583f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:35:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:35:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 09:36:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:36:46 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:36:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:36:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:36:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e72ad8a034a3199d7fa9eff529672e3821746c05d7acbf5f769948f33f7d01`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79c7462e96bbf8763e8cc49030dfda4740ed1eb9b4d6b716f668ee05473c61`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 19.3 MB (19319077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f973f1ee375066cead8b257e648838ec579f4fb34a789ca2ff63245e717a193`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 1.2 MB (1226098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84695c366bf69b6739176cdc5ca773d18dbbf24d5e31fe55c0d91466e856b4ac`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 42.8 MB (42790581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63b545f1669b264eaa5e2b90d5c4ba4d15a285564dc21b2d143e01a409505bc`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64accb3473881a260ef2e3e66e127c81fc79ea428cd371419e77e48949395980`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 52.1 MB (52081982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b41d94bc7fa92932ba5760b265020218cca31c591497edf7e9c212871606c2b`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:44001b6fb5f18253a991cdd9ea2d733d3038519203fbc93bdfcbc2f76f3f2097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a6157d40ed4f44f9674fcec8a64f666626af87e062c433c0063b7b3a568112`

```dockerfile
```

-	Layers:
	-	`sha256:07ab58aaadb1b5c4957932cf3577cac9332aa6e0b54c39e8d3dbd42b8e456005`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 3.3 MB (3279108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:535f1f63b08af5f3dafb580551e3b2de06a7613a6ed2c736b8f3718545a5a0b3`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.21`

```console
$ docker pull cassandra@sha256:0909b1681015a66782ca3286a371145cbea69f5b293bc4ed976af769730f89fe
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

### `cassandra:4.0.21` - linux; amd64

```console
$ docker pull cassandra@sha256:cf3d71b2042c185a6480b41eaeee194349b990247436cb6d9329cb4dbe8f5521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146894243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b054827ab93e9ff3b8f91159f2701dc94a4335fddff89f8573cffd839478004e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:09:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 02:09:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad99c471152a12d189df16ffbbb859c45c97120cdc045bce6eecfe10ecbbdfd`  
		Last Modified: Tue, 06 Oct 2026 02:10:06 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0859e757c306961a21cac4b04855f74643c2beade4f3f2a77bac787af14d53`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 18.0 MB (17967979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22efdae8959ef9ddb766122801ab47500ebacdaf1120c6b3f30212cadfb44123`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 1.3 MB (1267084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcadac622b0eece935a5ab536cb4c812c738c311a7a07c79fab5118c38a8022`  
		Last Modified: Tue, 06 Oct 2026 02:10:08 GMT  
		Size: 47.3 MB (47325687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e1b38b5f56505849926c483caa7fcfe859b7a2c00fa6a86c58a6cb28200380`  
		Last Modified: Tue, 06 Oct 2026 02:10:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5202b986da08cb5f831c36db81f06338161bc6d8d1788999ff2e2fa66c9af7`  
		Last Modified: Tue, 06 Oct 2026 02:10:09 GMT  
		Size: 52.1 MB (52081712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414f961655210c14deae3bda41567ae43ba04a93d854f56871467d33fabdeabf`  
		Last Modified: Tue, 06 Oct 2026 02:10:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:2ca62cab4b5553c82b97c7060a0a339c7d045f6dca352c6af251905e9179f921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76d0cddd25cbaae992e82b582de6a2acbd1e6119cecb0ecbaaec6d248aff81d`

```dockerfile
```

-	Layers:
	-	`sha256:5557dfe504dade1291ba4fd578dfcffe70901dfef8a1b98fceeb5b08a4fc52ee`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 3.3 MB (3274860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51086548e6001a5591d86aa9365ec52e70974c3037a93c0a1783917ce835f9d0`  
		Last Modified: Tue, 06 Oct 2026 02:10:06 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:04714ffa29f357592f390f8ffcb25789655ffb8026653c0be3ad0c6475c25235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138739610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f002ec386489c09dc788fea23d34c9f9be41f35d6cdd40f8317c2aa7c10fe27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:01:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:50 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 03:02:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:02:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:02:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:02:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:02:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:02:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb527f3e54e423ba132985957b2408d6d9295c3071f1fd8b881937d458a5271a`  
		Last Modified: Tue, 06 Oct 2026 03:02:20 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f5063b9fbe1e4e31164b60a8879cb32fab891e2489245d25562c30c0d7db5f`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 16.0 MB (16032304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44cbf36f3fa53e0fa39784d4c11380e986381d391aa601609f90a293f1f381a`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 1.2 MB (1233105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14f0f1709959d3ee796f98506d291aba50dd530a279ef2a5337100b6dd5d168`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 45.4 MB (45433495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4dd7727a4a4cd2d90054a88d9a613f2032331ce96c5a7cf12aa42303c8a7dc`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b021a3fd70cefff25544ba8ad711e07b45a0a5020f14477f3a48f6b605106e`  
		Last Modified: Tue, 06 Oct 2026 03:02:23 GMT  
		Size: 52.1 MB (52081677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d886cd261a118e427630fd386334c6b42aa3b6bdc6c1134e7f34990c40a84d`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:542d63efa43c1fbe0dc07af3de78a274a1f81db00efe55c1d18bae942eaedd2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4208ab7763bc6f0fff336cf0d85466abd12bc6b394c431b9cbc67e37423100ae`

```dockerfile
```

-	Layers:
	-	`sha256:a2c420de312587615f018e31ead54a7b6ba995ee06df1869480a2c38a72326ef`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 3.3 MB (3278574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2925c7325b7e7e82f3fb1c7700ea7321aac78b90c79c91b7d5dbe18ebfe8d5ad`  
		Last Modified: Tue, 06 Oct 2026 03:02:20 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:b8b40982c78a590816252349e9763c008cda68e5e08203aa6b70c899eba27d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144785500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09407c1c28ee9dcfac0b6df15dc50308198b0ca8a06948be13241d68edd343f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:56 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 02:16:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:16:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:16:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:16:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:16:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:16:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5f3234281ab6f5ba447c18dbf78f4400459c90a314562b6dcc944a6cb653a2`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed4a737e7dc8fe0252f061d3a1f9313d4528f8d1ffd8039f8674b1fb90b56d1`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 17.7 MB (17710530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582b189cbebf8caceaf641d730dd086dbb143b9a9e6bd49b83b1d1dfa9726387`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 1.2 MB (1220577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b4f544889b1195d242f57d9df050570cf5fbef09fafe67be946bcf80862634`  
		Last Modified: Tue, 06 Oct 2026 02:16:32 GMT  
		Size: 45.6 MB (45632927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f716204f0430f43ed02ea8268a920f402f92c3cf685a8ff6a85750c9c3050d4`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7e4b845a54d3540d35cd7147e6d86002292417aba07a8e6584f639b288b741`  
		Last Modified: Tue, 06 Oct 2026 02:16:33 GMT  
		Size: 52.1 MB (52081828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce079ec43089ef6254ab7d4e8a199e494116c9b37f335b233a134272d85dc38`  
		Last Modified: Tue, 06 Oct 2026 02:16:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:b8543b0857d182f46d673cb5be64ac0186ed53e278f03e6da7b3180dff6fc9b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f7bd02d62e315433308bfc70dca13885631ace31b37b07e06c6472a13f575e`

```dockerfile
```

-	Layers:
	-	`sha256:dbaf91531f04d5f17077cb99b3a09724c990a28b8937bd2353e20a204f7611a0`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 3.3 MB (3275195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d86e385c8627caa4028d04b5a923c46a98fa873ba6ecc3e0d7084e7feb10d125`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21` - linux; ppc64le

```console
$ docker pull cassandra@sha256:47e1a2a9a3a4c0c9679ce04c48387250e1fd64df09a0a494482b5d50ce408214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147512631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288ba4bfaaa020d509d303f97f47351330ef2f33aeaf0f1a7af78733b72f583f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:35:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:35:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 09:36:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:36:46 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:36:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:36:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:36:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e72ad8a034a3199d7fa9eff529672e3821746c05d7acbf5f769948f33f7d01`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79c7462e96bbf8763e8cc49030dfda4740ed1eb9b4d6b716f668ee05473c61`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 19.3 MB (19319077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f973f1ee375066cead8b257e648838ec579f4fb34a789ca2ff63245e717a193`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 1.2 MB (1226098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84695c366bf69b6739176cdc5ca773d18dbbf24d5e31fe55c0d91466e856b4ac`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 42.8 MB (42790581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63b545f1669b264eaa5e2b90d5c4ba4d15a285564dc21b2d143e01a409505bc`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64accb3473881a260ef2e3e66e127c81fc79ea428cd371419e77e48949395980`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 52.1 MB (52081982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b41d94bc7fa92932ba5760b265020218cca31c591497edf7e9c212871606c2b`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:44001b6fb5f18253a991cdd9ea2d733d3038519203fbc93bdfcbc2f76f3f2097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a6157d40ed4f44f9674fcec8a64f666626af87e062c433c0063b7b3a568112`

```dockerfile
```

-	Layers:
	-	`sha256:07ab58aaadb1b5c4957932cf3577cac9332aa6e0b54c39e8d3dbd42b8e456005`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 3.3 MB (3279108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:535f1f63b08af5f3dafb580551e3b2de06a7613a6ed2c736b8f3718545a5a0b3`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.21-bookworm`

```console
$ docker pull cassandra@sha256:0909b1681015a66782ca3286a371145cbea69f5b293bc4ed976af769730f89fe
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

### `cassandra:4.0.21-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:cf3d71b2042c185a6480b41eaeee194349b990247436cb6d9329cb4dbe8f5521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146894243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b054827ab93e9ff3b8f91159f2701dc94a4335fddff89f8573cffd839478004e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:09:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 02:09:29 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 02:09:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad99c471152a12d189df16ffbbb859c45c97120cdc045bce6eecfe10ecbbdfd`  
		Last Modified: Tue, 06 Oct 2026 02:10:06 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0859e757c306961a21cac4b04855f74643c2beade4f3f2a77bac787af14d53`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 18.0 MB (17967979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22efdae8959ef9ddb766122801ab47500ebacdaf1120c6b3f30212cadfb44123`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 1.3 MB (1267084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcadac622b0eece935a5ab536cb4c812c738c311a7a07c79fab5118c38a8022`  
		Last Modified: Tue, 06 Oct 2026 02:10:08 GMT  
		Size: 47.3 MB (47325687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e1b38b5f56505849926c483caa7fcfe859b7a2c00fa6a86c58a6cb28200380`  
		Last Modified: Tue, 06 Oct 2026 02:10:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5202b986da08cb5f831c36db81f06338161bc6d8d1788999ff2e2fa66c9af7`  
		Last Modified: Tue, 06 Oct 2026 02:10:09 GMT  
		Size: 52.1 MB (52081712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414f961655210c14deae3bda41567ae43ba04a93d854f56871467d33fabdeabf`  
		Last Modified: Tue, 06 Oct 2026 02:10:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:2ca62cab4b5553c82b97c7060a0a339c7d045f6dca352c6af251905e9179f921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76d0cddd25cbaae992e82b582de6a2acbd1e6119cecb0ecbaaec6d248aff81d`

```dockerfile
```

-	Layers:
	-	`sha256:5557dfe504dade1291ba4fd578dfcffe70901dfef8a1b98fceeb5b08a4fc52ee`  
		Last Modified: Tue, 06 Oct 2026 02:10:07 GMT  
		Size: 3.3 MB (3274860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51086548e6001a5591d86aa9365ec52e70974c3037a93c0a1783917ce835f9d0`  
		Last Modified: Tue, 06 Oct 2026 02:10:06 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:04714ffa29f357592f390f8ffcb25789655ffb8026653c0be3ad0c6475c25235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138739610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f002ec386489c09dc788fea23d34c9f9be41f35d6cdd40f8317c2aa7c10fe27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:01:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:50 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 03:01:50 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 03:02:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:02:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:02:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:02:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:02:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:02:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb527f3e54e423ba132985957b2408d6d9295c3071f1fd8b881937d458a5271a`  
		Last Modified: Tue, 06 Oct 2026 03:02:20 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f5063b9fbe1e4e31164b60a8879cb32fab891e2489245d25562c30c0d7db5f`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 16.0 MB (16032304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44cbf36f3fa53e0fa39784d4c11380e986381d391aa601609f90a293f1f381a`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 1.2 MB (1233105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14f0f1709959d3ee796f98506d291aba50dd530a279ef2a5337100b6dd5d168`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 45.4 MB (45433495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4dd7727a4a4cd2d90054a88d9a613f2032331ce96c5a7cf12aa42303c8a7dc`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b021a3fd70cefff25544ba8ad711e07b45a0a5020f14477f3a48f6b605106e`  
		Last Modified: Tue, 06 Oct 2026 03:02:23 GMT  
		Size: 52.1 MB (52081677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d886cd261a118e427630fd386334c6b42aa3b6bdc6c1134e7f34990c40a84d`  
		Last Modified: Tue, 06 Oct 2026 03:02:22 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:542d63efa43c1fbe0dc07af3de78a274a1f81db00efe55c1d18bae942eaedd2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4208ab7763bc6f0fff336cf0d85466abd12bc6b394c431b9cbc67e37423100ae`

```dockerfile
```

-	Layers:
	-	`sha256:a2c420de312587615f018e31ead54a7b6ba995ee06df1869480a2c38a72326ef`  
		Last Modified: Tue, 06 Oct 2026 03:02:21 GMT  
		Size: 3.3 MB (3278574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2925c7325b7e7e82f3fb1c7700ea7321aac78b90c79c91b7d5dbe18ebfe8d5ad`  
		Last Modified: Tue, 06 Oct 2026 03:02:20 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:b8b40982c78a590816252349e9763c008cda68e5e08203aa6b70c899eba27d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144785500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09407c1c28ee9dcfac0b6df15dc50308198b0ca8a06948be13241d68edd343f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:56 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 02:15:56 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 02:16:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:16:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:16:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:16:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:16:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:16:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5f3234281ab6f5ba447c18dbf78f4400459c90a314562b6dcc944a6cb653a2`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed4a737e7dc8fe0252f061d3a1f9313d4528f8d1ffd8039f8674b1fb90b56d1`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 17.7 MB (17710530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582b189cbebf8caceaf641d730dd086dbb143b9a9e6bd49b83b1d1dfa9726387`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 1.2 MB (1220577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b4f544889b1195d242f57d9df050570cf5fbef09fafe67be946bcf80862634`  
		Last Modified: Tue, 06 Oct 2026 02:16:32 GMT  
		Size: 45.6 MB (45632927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f716204f0430f43ed02ea8268a920f402f92c3cf685a8ff6a85750c9c3050d4`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7e4b845a54d3540d35cd7147e6d86002292417aba07a8e6584f639b288b741`  
		Last Modified: Tue, 06 Oct 2026 02:16:33 GMT  
		Size: 52.1 MB (52081828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce079ec43089ef6254ab7d4e8a199e494116c9b37f335b233a134272d85dc38`  
		Last Modified: Tue, 06 Oct 2026 02:16:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b8543b0857d182f46d673cb5be64ac0186ed53e278f03e6da7b3180dff6fc9b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f7bd02d62e315433308bfc70dca13885631ace31b37b07e06c6472a13f575e`

```dockerfile
```

-	Layers:
	-	`sha256:dbaf91531f04d5f17077cb99b3a09724c990a28b8937bd2353e20a204f7611a0`  
		Last Modified: Tue, 06 Oct 2026 02:16:31 GMT  
		Size: 3.3 MB (3275195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d86e385c8627caa4028d04b5a923c46a98fa873ba6ecc3e0d7084e7feb10d125`  
		Last Modified: Tue, 06 Oct 2026 02:16:30 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:47e1a2a9a3a4c0c9679ce04c48387250e1fd64df09a0a494482b5d50ce408214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147512631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288ba4bfaaa020d509d303f97f47351330ef2f33aeaf0f1a7af78733b72f583f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:35:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:35:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_VERSION=4.0.21
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Tue, 06 Oct 2026 09:36:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:36:46 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:36:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:36:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:36:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e72ad8a034a3199d7fa9eff529672e3821746c05d7acbf5f769948f33f7d01`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79c7462e96bbf8763e8cc49030dfda4740ed1eb9b4d6b716f668ee05473c61`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 19.3 MB (19319077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f973f1ee375066cead8b257e648838ec579f4fb34a789ca2ff63245e717a193`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 1.2 MB (1226098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84695c366bf69b6739176cdc5ca773d18dbbf24d5e31fe55c0d91466e856b4ac`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 42.8 MB (42790581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63b545f1669b264eaa5e2b90d5c4ba4d15a285564dc21b2d143e01a409505bc`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64accb3473881a260ef2e3e66e127c81fc79ea428cd371419e77e48949395980`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 52.1 MB (52081982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b41d94bc7fa92932ba5760b265020218cca31c591497edf7e9c212871606c2b`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:44001b6fb5f18253a991cdd9ea2d733d3038519203fbc93bdfcbc2f76f3f2097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a6157d40ed4f44f9674fcec8a64f666626af87e062c433c0063b7b3a568112`

```dockerfile
```

-	Layers:
	-	`sha256:07ab58aaadb1b5c4957932cf3577cac9332aa6e0b54c39e8d3dbd42b8e456005`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 3.3 MB (3279108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:535f1f63b08af5f3dafb580551e3b2de06a7613a6ed2c736b8f3718545a5a0b3`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1`

```console
$ docker pull cassandra@sha256:25f6a4d5c258fa7295cb4f4ccd7d94a21e565a1040ba1c205455fc11ff8041fc
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

### `cassandra:4.1` - linux; amd64

```console
$ docker pull cassandra@sha256:b755310b1f5c8761a538eafe0b81326ed1fc4b8cd3da14d8d37609a9e4d73bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149014824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f138ee00e8fc2664905ef566645a152a2bf87ce36a48b4b76366913126a203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:09:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:09:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b7959eec031f8ff5fd156d7e9562466112205a56238f093af30092067bc3be`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4daff41400ba2effbdc2ad650b381c589b969198645fd971a4040b87be0d082`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 18.0 MB (17967967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5de352f0b8da6103f5b7211520753c75b4f2b50b16e423ae2941ec84e4731f9`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.3 MB (1267098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dcf2c5e5e8b1bc73cb569dbe39dd5063529613f390e82c7a31079ef7e405ce`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 47.3 MB (47325761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7596e39f7622c84ef9d1951434bbe3a38c4e9ac805b6673c6d68d94487345e49`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71291102b79eeb78a3b37dcc8fbac81c822eac45ed493f795d363eceed0c7ef0`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 54.2 MB (54202220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c3916ca48e8214f0bfd4abce1a95bc61f5d23d891b0c69dc002c29ce4015b6`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:302a6ac43026251b9437e44567273cc39f99ba2b7b2a10c6124d36809ffeac8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7094742716199924fe9c31793d959dfc47ef3e0ff172a5cb127af12907d77562`

```dockerfile
```

-	Layers:
	-	`sha256:436b3106e63ac93e4c311ad7362965639d3ab38bd1ae80061dca9b015c69784d`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf02d90948096655f24f3b80174e0a7bcea11599fb7117801b34f3b454e4252`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51172049f777c6939fa7ea512c2dfa53b3878e6a90935e35113a520d4563bce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140860311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281c7fd927d2766d4a87f8e727ad8aade37a9d3e96a18dcd794abfd79a6ce191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:01:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 03:01:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:50 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d594f82a02a3dccda5a47944c6890d1dcc8cabc71b6a59d8dda5ad3bace3c85f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed74d80c676cd26614ccf45fed7a2d72ef7c7c1baa5128ed81a565f9de6e921`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 16.0 MB (16032396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473071384e348972ef0f65ee208d401f679329e238d2e291b0c5adcf4788b09f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.2 MB (1233130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ace4fb4336d441dadf3d128c2c63f101b8986551cd705218ac661b4e3ad680d`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 45.4 MB (45433494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a944f944bb7d9967d794beaa5789faa9b6da15b8bf9619f4c070d966fea124`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce53e8701b2674d0cf9a4d760fccb09f936c83a600af8b5f54fb015ac983b5c`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 54.2 MB (54202261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6825ae7b054cbbf660e53b7c4557be9e5c8bab0fffde02bbd466f278725dc24`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:5c68dee9334e775f2bdf178d00505ad44ac323b3df32c504c3f6dbe822f3c661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ab350867dc7f79d8b47a38f5adb80051c8c0982c3762f56b7a2d939473e2f1`

```dockerfile
```

-	Layers:
	-	`sha256:eb8234bed244315913c822c98466665fdc1ad620b0256b3fafcaacbaa0ca7e04`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc2402854926bc3cc47fa5958384ea2449f26a3199af47d6baf9ebcd4ceb8de`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:c5b8bf2e666ec048a88fe2b900f12925b6cf3dfc807a4518518c900210085824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146905780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4b121bd2e459fb502028ff10e1fd5663cec9c74c880b9bdf913f2ae0fdb637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:15:27 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:16:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:16:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:16:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed2d56a99d9a3dae0e5ca351cfe8a6119ee531855fe36ec31a901126690f422`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f6027cf18d9b27558c414900ef3dfb6b6b84935abea7dfe66ffd10808fc00`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 17.7 MB (17710468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7ff2c85d6e71054cee3dd521f42115dbe4148ed4f7b41826ee12cb18094e48`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.2 MB (1220541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1a848a49fdc40b979ad44465fd986364b50cf2a5999ca507e24ed959107ae1`  
		Last Modified: Tue, 06 Oct 2026 02:16:22 GMT  
		Size: 45.6 MB (45632924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77a17e4579e1813537930b4c8cabdcd3cc61dc78a4ffbe242126dc5e4a4e527`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f974ea364ec83c372c6da3e953d35a047d9f2ec1823e4511733cdcac822b02`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 54.2 MB (54202211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49eb28534fa9f18d1353df87e095dcf3dd943f78258afefa81ad94b3070a1edd`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:fc1c2ababe170bcf85b68f875038bfd20edfa074aaa660a7d0dec403018f165c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10690431564e011fa52059e380fbeabffd79dcdd4fdb31a4c65ec9b4e025dab`

```dockerfile
```

-	Layers:
	-	`sha256:8fdecbec0a94b4de7e9f198fd37766af2ae20aef60c630cbda41cf1e460fc0de`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56310c5a9c96a9c82c67b3d9bf96172996b269498cd317fafe411a6fb9664a29`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; ppc64le

```console
$ docker pull cassandra@sha256:94bfa892890fe161bab5f8f76ba6648b6d834abda702e73cfeeb93f46d4e37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149633077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e1e6744e262a671d1dd206b8f01bbc0c6d54afd885863dc6b8424c762f8d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:35:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:35:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 09:36:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:36:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:36:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:36:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e72ad8a034a3199d7fa9eff529672e3821746c05d7acbf5f769948f33f7d01`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79c7462e96bbf8763e8cc49030dfda4740ed1eb9b4d6b716f668ee05473c61`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 19.3 MB (19319077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f973f1ee375066cead8b257e648838ec579f4fb34a789ca2ff63245e717a193`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 1.2 MB (1226098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84695c366bf69b6739176cdc5ca773d18dbbf24d5e31fe55c0d91466e856b4ac`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 42.8 MB (42790581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63b545f1669b264eaa5e2b90d5c4ba4d15a285564dc21b2d143e01a409505bc`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f629a0940c6585dab0f29124bc779a0e792cc83793ca1de801a54089d036ea`  
		Last Modified: Tue, 06 Oct 2026 09:37:42 GMT  
		Size: 54.2 MB (54202428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc01e206acba499fac9dbde211c16f4b35ac8253a18b00bd65fb200cbb4d02ca`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:8410195fa4865342e3da46264b5593f12a6da263ecf65824bd0f62ff16be38cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0318f2ffaec357bd6c7a39120f1a1a8132c00c0bdce96ce63fef3020cedd141f`

```dockerfile
```

-	Layers:
	-	`sha256:9f0e6477a9672ae13f6df90de1e117c00f56b67d57e326f3daf242bfe5eb3817`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b89762cb85903233c07834df0bc198de5d442d2f1043bf671241b38712b57218`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1-bookworm`

```console
$ docker pull cassandra@sha256:25f6a4d5c258fa7295cb4f4ccd7d94a21e565a1040ba1c205455fc11ff8041fc
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

### `cassandra:4.1-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:b755310b1f5c8761a538eafe0b81326ed1fc4b8cd3da14d8d37609a9e4d73bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149014824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f138ee00e8fc2664905ef566645a152a2bf87ce36a48b4b76366913126a203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:09:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:09:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b7959eec031f8ff5fd156d7e9562466112205a56238f093af30092067bc3be`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4daff41400ba2effbdc2ad650b381c589b969198645fd971a4040b87be0d082`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 18.0 MB (17967967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5de352f0b8da6103f5b7211520753c75b4f2b50b16e423ae2941ec84e4731f9`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.3 MB (1267098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dcf2c5e5e8b1bc73cb569dbe39dd5063529613f390e82c7a31079ef7e405ce`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 47.3 MB (47325761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7596e39f7622c84ef9d1951434bbe3a38c4e9ac805b6673c6d68d94487345e49`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71291102b79eeb78a3b37dcc8fbac81c822eac45ed493f795d363eceed0c7ef0`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 54.2 MB (54202220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c3916ca48e8214f0bfd4abce1a95bc61f5d23d891b0c69dc002c29ce4015b6`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:302a6ac43026251b9437e44567273cc39f99ba2b7b2a10c6124d36809ffeac8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7094742716199924fe9c31793d959dfc47ef3e0ff172a5cb127af12907d77562`

```dockerfile
```

-	Layers:
	-	`sha256:436b3106e63ac93e4c311ad7362965639d3ab38bd1ae80061dca9b015c69784d`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf02d90948096655f24f3b80174e0a7bcea11599fb7117801b34f3b454e4252`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51172049f777c6939fa7ea512c2dfa53b3878e6a90935e35113a520d4563bce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140860311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281c7fd927d2766d4a87f8e727ad8aade37a9d3e96a18dcd794abfd79a6ce191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:01:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 03:01:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:50 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d594f82a02a3dccda5a47944c6890d1dcc8cabc71b6a59d8dda5ad3bace3c85f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed74d80c676cd26614ccf45fed7a2d72ef7c7c1baa5128ed81a565f9de6e921`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 16.0 MB (16032396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473071384e348972ef0f65ee208d401f679329e238d2e291b0c5adcf4788b09f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.2 MB (1233130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ace4fb4336d441dadf3d128c2c63f101b8986551cd705218ac661b4e3ad680d`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 45.4 MB (45433494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a944f944bb7d9967d794beaa5789faa9b6da15b8bf9619f4c070d966fea124`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce53e8701b2674d0cf9a4d760fccb09f936c83a600af8b5f54fb015ac983b5c`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 54.2 MB (54202261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6825ae7b054cbbf660e53b7c4557be9e5c8bab0fffde02bbd466f278725dc24`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5c68dee9334e775f2bdf178d00505ad44ac323b3df32c504c3f6dbe822f3c661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ab350867dc7f79d8b47a38f5adb80051c8c0982c3762f56b7a2d939473e2f1`

```dockerfile
```

-	Layers:
	-	`sha256:eb8234bed244315913c822c98466665fdc1ad620b0256b3fafcaacbaa0ca7e04`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc2402854926bc3cc47fa5958384ea2449f26a3199af47d6baf9ebcd4ceb8de`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:c5b8bf2e666ec048a88fe2b900f12925b6cf3dfc807a4518518c900210085824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146905780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4b121bd2e459fb502028ff10e1fd5663cec9c74c880b9bdf913f2ae0fdb637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:15:27 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:16:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:16:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:16:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed2d56a99d9a3dae0e5ca351cfe8a6119ee531855fe36ec31a901126690f422`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f6027cf18d9b27558c414900ef3dfb6b6b84935abea7dfe66ffd10808fc00`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 17.7 MB (17710468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7ff2c85d6e71054cee3dd521f42115dbe4148ed4f7b41826ee12cb18094e48`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.2 MB (1220541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1a848a49fdc40b979ad44465fd986364b50cf2a5999ca507e24ed959107ae1`  
		Last Modified: Tue, 06 Oct 2026 02:16:22 GMT  
		Size: 45.6 MB (45632924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77a17e4579e1813537930b4c8cabdcd3cc61dc78a4ffbe242126dc5e4a4e527`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f974ea364ec83c372c6da3e953d35a047d9f2ec1823e4511733cdcac822b02`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 54.2 MB (54202211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49eb28534fa9f18d1353df87e095dcf3dd943f78258afefa81ad94b3070a1edd`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:fc1c2ababe170bcf85b68f875038bfd20edfa074aaa660a7d0dec403018f165c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10690431564e011fa52059e380fbeabffd79dcdd4fdb31a4c65ec9b4e025dab`

```dockerfile
```

-	Layers:
	-	`sha256:8fdecbec0a94b4de7e9f198fd37766af2ae20aef60c630cbda41cf1e460fc0de`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56310c5a9c96a9c82c67b3d9bf96172996b269498cd317fafe411a6fb9664a29`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:94bfa892890fe161bab5f8f76ba6648b6d834abda702e73cfeeb93f46d4e37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149633077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e1e6744e262a671d1dd206b8f01bbc0c6d54afd885863dc6b8424c762f8d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:35:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:35:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 09:36:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:36:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:36:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:36:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e72ad8a034a3199d7fa9eff529672e3821746c05d7acbf5f769948f33f7d01`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79c7462e96bbf8763e8cc49030dfda4740ed1eb9b4d6b716f668ee05473c61`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 19.3 MB (19319077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f973f1ee375066cead8b257e648838ec579f4fb34a789ca2ff63245e717a193`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 1.2 MB (1226098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84695c366bf69b6739176cdc5ca773d18dbbf24d5e31fe55c0d91466e856b4ac`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 42.8 MB (42790581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63b545f1669b264eaa5e2b90d5c4ba4d15a285564dc21b2d143e01a409505bc`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f629a0940c6585dab0f29124bc779a0e792cc83793ca1de801a54089d036ea`  
		Last Modified: Tue, 06 Oct 2026 09:37:42 GMT  
		Size: 54.2 MB (54202428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc01e206acba499fac9dbde211c16f4b35ac8253a18b00bd65fb200cbb4d02ca`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:8410195fa4865342e3da46264b5593f12a6da263ecf65824bd0f62ff16be38cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0318f2ffaec357bd6c7a39120f1a1a8132c00c0bdce96ce63fef3020cedd141f`

```dockerfile
```

-	Layers:
	-	`sha256:9f0e6477a9672ae13f6df90de1e117c00f56b67d57e326f3daf242bfe5eb3817`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b89762cb85903233c07834df0bc198de5d442d2f1043bf671241b38712b57218`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.12`

```console
$ docker pull cassandra@sha256:25f6a4d5c258fa7295cb4f4ccd7d94a21e565a1040ba1c205455fc11ff8041fc
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

### `cassandra:4.1.12` - linux; amd64

```console
$ docker pull cassandra@sha256:b755310b1f5c8761a538eafe0b81326ed1fc4b8cd3da14d8d37609a9e4d73bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149014824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f138ee00e8fc2664905ef566645a152a2bf87ce36a48b4b76366913126a203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:09:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:09:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b7959eec031f8ff5fd156d7e9562466112205a56238f093af30092067bc3be`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4daff41400ba2effbdc2ad650b381c589b969198645fd971a4040b87be0d082`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 18.0 MB (17967967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5de352f0b8da6103f5b7211520753c75b4f2b50b16e423ae2941ec84e4731f9`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.3 MB (1267098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dcf2c5e5e8b1bc73cb569dbe39dd5063529613f390e82c7a31079ef7e405ce`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 47.3 MB (47325761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7596e39f7622c84ef9d1951434bbe3a38c4e9ac805b6673c6d68d94487345e49`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71291102b79eeb78a3b37dcc8fbac81c822eac45ed493f795d363eceed0c7ef0`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 54.2 MB (54202220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c3916ca48e8214f0bfd4abce1a95bc61f5d23d891b0c69dc002c29ce4015b6`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:302a6ac43026251b9437e44567273cc39f99ba2b7b2a10c6124d36809ffeac8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7094742716199924fe9c31793d959dfc47ef3e0ff172a5cb127af12907d77562`

```dockerfile
```

-	Layers:
	-	`sha256:436b3106e63ac93e4c311ad7362965639d3ab38bd1ae80061dca9b015c69784d`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf02d90948096655f24f3b80174e0a7bcea11599fb7117801b34f3b454e4252`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51172049f777c6939fa7ea512c2dfa53b3878e6a90935e35113a520d4563bce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140860311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281c7fd927d2766d4a87f8e727ad8aade37a9d3e96a18dcd794abfd79a6ce191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:01:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 03:01:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:50 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d594f82a02a3dccda5a47944c6890d1dcc8cabc71b6a59d8dda5ad3bace3c85f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed74d80c676cd26614ccf45fed7a2d72ef7c7c1baa5128ed81a565f9de6e921`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 16.0 MB (16032396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473071384e348972ef0f65ee208d401f679329e238d2e291b0c5adcf4788b09f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.2 MB (1233130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ace4fb4336d441dadf3d128c2c63f101b8986551cd705218ac661b4e3ad680d`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 45.4 MB (45433494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a944f944bb7d9967d794beaa5789faa9b6da15b8bf9619f4c070d966fea124`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce53e8701b2674d0cf9a4d760fccb09f936c83a600af8b5f54fb015ac983b5c`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 54.2 MB (54202261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6825ae7b054cbbf660e53b7c4557be9e5c8bab0fffde02bbd466f278725dc24`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:5c68dee9334e775f2bdf178d00505ad44ac323b3df32c504c3f6dbe822f3c661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ab350867dc7f79d8b47a38f5adb80051c8c0982c3762f56b7a2d939473e2f1`

```dockerfile
```

-	Layers:
	-	`sha256:eb8234bed244315913c822c98466665fdc1ad620b0256b3fafcaacbaa0ca7e04`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc2402854926bc3cc47fa5958384ea2449f26a3199af47d6baf9ebcd4ceb8de`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:c5b8bf2e666ec048a88fe2b900f12925b6cf3dfc807a4518518c900210085824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146905780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4b121bd2e459fb502028ff10e1fd5663cec9c74c880b9bdf913f2ae0fdb637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:15:27 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:16:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:16:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:16:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed2d56a99d9a3dae0e5ca351cfe8a6119ee531855fe36ec31a901126690f422`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f6027cf18d9b27558c414900ef3dfb6b6b84935abea7dfe66ffd10808fc00`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 17.7 MB (17710468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7ff2c85d6e71054cee3dd521f42115dbe4148ed4f7b41826ee12cb18094e48`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.2 MB (1220541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1a848a49fdc40b979ad44465fd986364b50cf2a5999ca507e24ed959107ae1`  
		Last Modified: Tue, 06 Oct 2026 02:16:22 GMT  
		Size: 45.6 MB (45632924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77a17e4579e1813537930b4c8cabdcd3cc61dc78a4ffbe242126dc5e4a4e527`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f974ea364ec83c372c6da3e953d35a047d9f2ec1823e4511733cdcac822b02`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 54.2 MB (54202211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49eb28534fa9f18d1353df87e095dcf3dd943f78258afefa81ad94b3070a1edd`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:fc1c2ababe170bcf85b68f875038bfd20edfa074aaa660a7d0dec403018f165c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10690431564e011fa52059e380fbeabffd79dcdd4fdb31a4c65ec9b4e025dab`

```dockerfile
```

-	Layers:
	-	`sha256:8fdecbec0a94b4de7e9f198fd37766af2ae20aef60c630cbda41cf1e460fc0de`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56310c5a9c96a9c82c67b3d9bf96172996b269498cd317fafe411a6fb9664a29`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12` - linux; ppc64le

```console
$ docker pull cassandra@sha256:94bfa892890fe161bab5f8f76ba6648b6d834abda702e73cfeeb93f46d4e37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149633077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e1e6744e262a671d1dd206b8f01bbc0c6d54afd885863dc6b8424c762f8d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:35:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:35:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 09:36:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:36:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:36:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:36:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e72ad8a034a3199d7fa9eff529672e3821746c05d7acbf5f769948f33f7d01`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79c7462e96bbf8763e8cc49030dfda4740ed1eb9b4d6b716f668ee05473c61`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 19.3 MB (19319077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f973f1ee375066cead8b257e648838ec579f4fb34a789ca2ff63245e717a193`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 1.2 MB (1226098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84695c366bf69b6739176cdc5ca773d18dbbf24d5e31fe55c0d91466e856b4ac`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 42.8 MB (42790581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63b545f1669b264eaa5e2b90d5c4ba4d15a285564dc21b2d143e01a409505bc`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f629a0940c6585dab0f29124bc779a0e792cc83793ca1de801a54089d036ea`  
		Last Modified: Tue, 06 Oct 2026 09:37:42 GMT  
		Size: 54.2 MB (54202428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc01e206acba499fac9dbde211c16f4b35ac8253a18b00bd65fb200cbb4d02ca`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:8410195fa4865342e3da46264b5593f12a6da263ecf65824bd0f62ff16be38cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0318f2ffaec357bd6c7a39120f1a1a8132c00c0bdce96ce63fef3020cedd141f`

```dockerfile
```

-	Layers:
	-	`sha256:9f0e6477a9672ae13f6df90de1e117c00f56b67d57e326f3daf242bfe5eb3817`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b89762cb85903233c07834df0bc198de5d442d2f1043bf671241b38712b57218`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.12-bookworm`

```console
$ docker pull cassandra@sha256:25f6a4d5c258fa7295cb4f4ccd7d94a21e565a1040ba1c205455fc11ff8041fc
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

### `cassandra:4.1.12-bookworm` - linux; amd64

```console
$ docker pull cassandra@sha256:b755310b1f5c8761a538eafe0b81326ed1fc4b8cd3da14d8d37609a9e4d73bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149014824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f138ee00e8fc2664905ef566645a152a2bf87ce36a48b4b76366913126a203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:09:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:09:21 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:09:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b7959eec031f8ff5fd156d7e9562466112205a56238f093af30092067bc3be`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4daff41400ba2effbdc2ad650b381c589b969198645fd971a4040b87be0d082`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 18.0 MB (17967967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5de352f0b8da6103f5b7211520753c75b4f2b50b16e423ae2941ec84e4731f9`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 1.3 MB (1267098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dcf2c5e5e8b1bc73cb569dbe39dd5063529613f390e82c7a31079ef7e405ce`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 47.3 MB (47325761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7596e39f7622c84ef9d1951434bbe3a38c4e9ac805b6673c6d68d94487345e49`  
		Last Modified: Tue, 06 Oct 2026 02:10:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71291102b79eeb78a3b37dcc8fbac81c822eac45ed493f795d363eceed0c7ef0`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 54.2 MB (54202220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c3916ca48e8214f0bfd4abce1a95bc61f5d23d891b0c69dc002c29ce4015b6`  
		Last Modified: Tue, 06 Oct 2026 02:10:13 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:302a6ac43026251b9437e44567273cc39f99ba2b7b2a10c6124d36809ffeac8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7094742716199924fe9c31793d959dfc47ef3e0ff172a5cb127af12907d77562`

```dockerfile
```

-	Layers:
	-	`sha256:436b3106e63ac93e4c311ad7362965639d3ab38bd1ae80061dca9b015c69784d`  
		Last Modified: Tue, 06 Oct 2026 02:10:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf02d90948096655f24f3b80174e0a7bcea11599fb7117801b34f3b454e4252`  
		Last Modified: Tue, 06 Oct 2026 02:10:10 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51172049f777c6939fa7ea512c2dfa53b3878e6a90935e35113a520d4563bce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140860311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281c7fd927d2766d4a87f8e727ad8aade37a9d3e96a18dcd794abfd79a6ce191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:01:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 03:01:27 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 03:01:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:50 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d594f82a02a3dccda5a47944c6890d1dcc8cabc71b6a59d8dda5ad3bace3c85f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed74d80c676cd26614ccf45fed7a2d72ef7c7c1baa5128ed81a565f9de6e921`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 16.0 MB (16032396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473071384e348972ef0f65ee208d401f679329e238d2e291b0c5adcf4788b09f`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 1.2 MB (1233130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ace4fb4336d441dadf3d128c2c63f101b8986551cd705218ac661b4e3ad680d`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 45.4 MB (45433494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a944f944bb7d9967d794beaa5789faa9b6da15b8bf9619f4c070d966fea124`  
		Last Modified: Tue, 06 Oct 2026 03:02:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce53e8701b2674d0cf9a4d760fccb09f936c83a600af8b5f54fb015ac983b5c`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 54.2 MB (54202261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6825ae7b054cbbf660e53b7c4557be9e5c8bab0fffde02bbd466f278725dc24`  
		Last Modified: Tue, 06 Oct 2026 03:02:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5c68dee9334e775f2bdf178d00505ad44ac323b3df32c504c3f6dbe822f3c661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ab350867dc7f79d8b47a38f5adb80051c8c0982c3762f56b7a2d939473e2f1`

```dockerfile
```

-	Layers:
	-	`sha256:eb8234bed244315913c822c98466665fdc1ad620b0256b3fafcaacbaa0ca7e04`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc2402854926bc3cc47fa5958384ea2449f26a3199af47d6baf9ebcd4ceb8de`  
		Last Modified: Tue, 06 Oct 2026 03:02:02 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:c5b8bf2e666ec048a88fe2b900f12925b6cf3dfc807a4518518c900210085824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146905780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4b121bd2e459fb502028ff10e1fd5663cec9c74c880b9bdf913f2ae0fdb637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:15:27 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 02:15:45 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 02:16:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:16:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:16:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed2d56a99d9a3dae0e5ca351cfe8a6119ee531855fe36ec31a901126690f422`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f6027cf18d9b27558c414900ef3dfb6b6b84935abea7dfe66ffd10808fc00`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 17.7 MB (17710468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7ff2c85d6e71054cee3dd521f42115dbe4148ed4f7b41826ee12cb18094e48`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 1.2 MB (1220541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1a848a49fdc40b979ad44465fd986364b50cf2a5999ca507e24ed959107ae1`  
		Last Modified: Tue, 06 Oct 2026 02:16:22 GMT  
		Size: 45.6 MB (45632924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77a17e4579e1813537930b4c8cabdcd3cc61dc78a4ffbe242126dc5e4a4e527`  
		Last Modified: Tue, 06 Oct 2026 02:16:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f974ea364ec83c372c6da3e953d35a047d9f2ec1823e4511733cdcac822b02`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 54.2 MB (54202211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49eb28534fa9f18d1353df87e095dcf3dd943f78258afefa81ad94b3070a1edd`  
		Last Modified: Tue, 06 Oct 2026 02:16:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:fc1c2ababe170bcf85b68f875038bfd20edfa074aaa660a7d0dec403018f165c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10690431564e011fa52059e380fbeabffd79dcdd4fdb31a4c65ec9b4e025dab`

```dockerfile
```

-	Layers:
	-	`sha256:8fdecbec0a94b4de7e9f198fd37766af2ae20aef60c630cbda41cf1e460fc0de`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56310c5a9c96a9c82c67b3d9bf96172996b269498cd317fafe411a6fb9664a29`  
		Last Modified: Tue, 06 Oct 2026 02:16:20 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:94bfa892890fe161bab5f8f76ba6648b6d834abda702e73cfeeb93f46d4e37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149633077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e1e6744e262a671d1dd206b8f01bbc0c6d54afd885863dc6b8424c762f8d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:35:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:35:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:36:01 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:36:01 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_VERSION=4.1.12
# Tue, 06 Oct 2026 09:36:01 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Tue, 06 Oct 2026 09:36:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:36:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:36:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:36:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e72ad8a034a3199d7fa9eff529672e3821746c05d7acbf5f769948f33f7d01`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79c7462e96bbf8763e8cc49030dfda4740ed1eb9b4d6b716f668ee05473c61`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 19.3 MB (19319077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f973f1ee375066cead8b257e648838ec579f4fb34a789ca2ff63245e717a193`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 1.2 MB (1226098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84695c366bf69b6739176cdc5ca773d18dbbf24d5e31fe55c0d91466e856b4ac`  
		Last Modified: Tue, 06 Oct 2026 09:37:40 GMT  
		Size: 42.8 MB (42790581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63b545f1669b264eaa5e2b90d5c4ba4d15a285564dc21b2d143e01a409505bc`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f629a0940c6585dab0f29124bc779a0e792cc83793ca1de801a54089d036ea`  
		Last Modified: Tue, 06 Oct 2026 09:37:42 GMT  
		Size: 54.2 MB (54202428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc01e206acba499fac9dbde211c16f4b35ac8253a18b00bd65fb200cbb4d02ca`  
		Last Modified: Tue, 06 Oct 2026 09:37:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:8410195fa4865342e3da46264b5593f12a6da263ecf65824bd0f62ff16be38cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0318f2ffaec357bd6c7a39120f1a1a8132c00c0bdce96ce63fef3020cedd141f`

```dockerfile
```

-	Layers:
	-	`sha256:9f0e6477a9672ae13f6df90de1e117c00f56b67d57e326f3daf242bfe5eb3817`  
		Last Modified: Tue, 06 Oct 2026 09:37:39 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b89762cb85903233c07834df0bc198de5d442d2f1043bf671241b38712b57218`  
		Last Modified: Tue, 06 Oct 2026 09:37:38 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5`

```console
$ docker pull cassandra@sha256:618a493bcf1f817ea2f07288a46fa76fb2d9c4dfd5a04c28227336405782889c
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
$ docker pull cassandra@sha256:a317fe3b2d5ba8db4f11a53d1297650eff804bea22789d77d4fc191fa2d3d664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168264055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bcdccf1248ce65a275a65c2a82de1b80d6639675e1a1252e857ee7e23f3f70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:09:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e76d30e8f01d60b7a1d3472d2ccedf881597fd07436096cf47548a412b687b`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fd60b45c8922b399a04a3e42bd5e15d8a0aa2589567b3a36dcb9bfb7e3d736`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 15.7 MB (15650937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684db3de1dc6184273de5e3adf47f3219ba5f722fa1c51235e0e397b74bdca4f`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.3 MB (1310311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4c739acd15e924fda5dd554875bd4d2b2f2a4e685507e7890a2bbf96684996`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 47.5 MB (47510268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcc26f81b0d53dea5d98d78f01eaa601dc2382d9d4d1ca256b614879ed792e`  
		Last Modified: Tue, 06 Oct 2026 02:09:40 GMT  
		Size: 73.9 MB (73946732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadd92c13a2cbe93464969a398c27407ca28af30456dccebc5a3fe7d4ae75034`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:97c621a66ae2755f1f5073cff06f5cd9f985760170d67e978082149849741ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49e7246e071167035a66f4f9932d8fc97f128dd723e6fcc5252c01b55b468c9`

```dockerfile
```

-	Layers:
	-	`sha256:a427f931852daf7c5ad82e1fad4a60f24970e3397f4a854a2d4c750ab0615922`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea155c6eadf75a35da74d25470238bb93ac7d03ce04ac27eb8320b4caf4f1bc`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:602f85ad8e53097163d87cbda0e649818857369302469b5960098a790463c0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160978530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0029c3322c1d85abd179f1e5af2ad115ae5f475b742008f2f7daa695a2ddc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 03:01:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 03:01:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb59637184047414e07e87641e3331d4d91bfde7c74294932dde14675a3711`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d1e17b0f9dee34c5fa045a987bb2dc7e3b9aa9d3a465de157e5e4ab4918414`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 14.4 MB (14402448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc896c3853aeca6f3322b194354c88c2831cd015f0b84671414ba229194db8e5`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.3 MB (1275080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b101129b0716ce5bc828d4ba40daa659f150dd3cf4c93d86f31fdc6db5dca8`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 45.1 MB (45093486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d757c1ac365886edd77e0b384f1b927b1a337587a2e047ab61b94b774511fe4`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f58373b40f33ec8d28f8d5963d989a237b7099d5df6b08cad9a55651619da4`  
		Last Modified: Tue, 06 Oct 2026 03:02:08 GMT  
		Size: 73.9 MB (73946878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b684e1ec86303e0018063ec84ad84cc8f3435816ec4402da29e754e4a1777cfd`  
		Last Modified: Tue, 06 Oct 2026 03:02:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e7554100aac202f8c4267c0f721eb6ac0d5475f5d7166b6ab477ca0a0b9a026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5438d3e9c28c987b342a46bb6add4523d17e4bd740be70c3924f402684d8c25`

```dockerfile
```

-	Layers:
	-	`sha256:f9001a8506c1c3b7bcfee8e8e200efecedbe3b807a4b40f44e668d265429022d`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4392605081424f63e068ec26d44b7ffe67d74b6ed97ef2a826e8772e409c8a`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a2743a9abf8c101af68a00687c453d8dd968998eaf58bb48c68eb64775d5db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167943526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6e581a62774ff762c66d47f3e111ba160beb9c1e8bac70ae54dc0aee1b67fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:56 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31229b589dbebbc138c333f80187e0bccc072f1a0b7deb8b28581a38f066ef2`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c038029d87e063e3eafea0457a36f88e0c14503b24ef8f467e5a8a5a735eda4`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 15.5 MB (15535127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f67c10d43ac5edb229549f369905c266cbcd267e689bbdbd48d2368a2d1188`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 1.3 MB (1262347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa61ebc5e74e61f8a35815d66b88becaa1361aa3e9dc60ab91ca29b4feb1b637`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 47.0 MB (46996547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417a4bf45b158b4d625286fea67c2961d1ff23fbd3b595f9774df185ae81ec7`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9dee362949d676bacd27895fe85549926e84cc3c065fa26a2100679510c958`  
		Last Modified: Tue, 06 Oct 2026 02:15:56 GMT  
		Size: 73.9 MB (73946760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7567b47a1b0e288eaeb46b6dcb4f9f400c4ff1833954ef2242ee03869facd2`  
		Last Modified: Tue, 06 Oct 2026 02:15:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:2c046d2b2b74b1b4782230722be29099715881321af57b12c7fabea78d156a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d1fe103ac45a4be549a88136ad514811c3c2771f55783dd3b3201f3c7395d4`

```dockerfile
```

-	Layers:
	-	`sha256:fb0e28fd5052d9c1473696ad34f7b80f25008ea9f935a57343707127a645a33f`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebeccb9eeba00dde48ad40124a1d73dcd9354fea8c84d203b6327ac9772ffa2a`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; ppc64le

```console
$ docker pull cassandra@sha256:337197923cfb611022517e6c8532f407f6577c421b058e538fbf41250445d51d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172947903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47fbc64edb0495afe552daa6fe73ec81bcef01c3bec2cdc6c06b58880647d79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 09:34:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:34:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:34:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:34:03 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:34:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753c252eb96f4a909d572d0bf2e027fbf2ec8ca9d5bf22976ccb249731483283`  
		Last Modified: Tue, 06 Oct 2026 09:34:32 GMT  
		Size: 47.4 MB (47421981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4529fb244855fed788e8edead94d3c99606fa177e68267d934bd0ce87b2bb9`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a332b4e5a6a0a1ed8705e0643efafe1fb03f134c0295d5d1695cbf8e58d7f6`  
		Last Modified: Tue, 06 Oct 2026 09:34:33 GMT  
		Size: 73.9 MB (73946890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9056157a59726fb47fd36552b600e3172606beade235d713ed19583f640be0b`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e6ad9206cb2e1bfae400448f7e962f6a603269ffd16587eae166dce3934adfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacc7737fc060efb9976cef4a160e3022b2c7774dc783849316bfcad7a293043`

```dockerfile
```

-	Layers:
	-	`sha256:63fa6d75508487d771afbd05785f732d4f051dbc1f678fce57e27058da6335c4`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:301c915aa6ae9f1e3233c51f5ab48eb86631650530c68cdea69449534209a1be`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; s390x

```console
$ docker pull cassandra@sha256:678196d6ad094de91e96614580d3dc67e4f219b69f3dd883439b793f22108412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165269816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97abfcc5d7161817e92f30a2239c8cc6d062a2195fe86acf1c37069ea67822fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:30:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:30:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:30:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:30:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:30:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:30:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:30:34 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:30:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f47557172e41b22fe597d22d803984255a368c18346974a1624c3e100d05ae`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06d77c8435ecb0f82575b2ae667d13e999f58c74ebcf4c23d1408a6eb677ee3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 15.6 MB (15624643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59472a76e50a18f220af99bbdf360629643aa06a230c1618aeb0466be85b19c6`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.3 MB (1283897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9458e4b10ed1010e8bf050040877a3db30caad9abda82f6949da6c3622090`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 44.5 MB (44502548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a4fd2dbb9bf9c3671f7557274b5dc6b3968b30a1ff09d1275761b53bbedab3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8c01002751cc515d279785c36984df75b2e4d1a1531dee52e04e10161954f7`  
		Last Modified: Tue, 06 Oct 2026 02:30:53 GMT  
		Size: 73.9 MB (73947027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a1c9a828cd9256fb8d2d53e1aa9f6b0ba793244f4f278c2e50ff097c2dfba8`  
		Last Modified: Tue, 06 Oct 2026 02:30:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:5607d297c59ecb68cd64f1e065531977819372a5ce31cfe2af33c7556f6c2a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9bf34084b8921bef06de49443b5e55dc96147fadb00b57340dd25670e58c96`

```dockerfile
```

-	Layers:
	-	`sha256:d4142b48645d7bf8e0820efc5bce2b93fd09c6bc4a81e47d1cabf229f843f732`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45533dac49bffce0f82c93e8340c6ad9e0505ada2d98a4dd101b5b00b76e8fc1`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5-trixie`

```console
$ docker pull cassandra@sha256:618a493bcf1f817ea2f07288a46fa76fb2d9c4dfd5a04c28227336405782889c
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

### `cassandra:5-trixie` - linux; amd64

```console
$ docker pull cassandra@sha256:a317fe3b2d5ba8db4f11a53d1297650eff804bea22789d77d4fc191fa2d3d664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168264055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bcdccf1248ce65a275a65c2a82de1b80d6639675e1a1252e857ee7e23f3f70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:09:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e76d30e8f01d60b7a1d3472d2ccedf881597fd07436096cf47548a412b687b`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fd60b45c8922b399a04a3e42bd5e15d8a0aa2589567b3a36dcb9bfb7e3d736`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 15.7 MB (15650937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684db3de1dc6184273de5e3adf47f3219ba5f722fa1c51235e0e397b74bdca4f`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.3 MB (1310311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4c739acd15e924fda5dd554875bd4d2b2f2a4e685507e7890a2bbf96684996`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 47.5 MB (47510268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcc26f81b0d53dea5d98d78f01eaa601dc2382d9d4d1ca256b614879ed792e`  
		Last Modified: Tue, 06 Oct 2026 02:09:40 GMT  
		Size: 73.9 MB (73946732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadd92c13a2cbe93464969a398c27407ca28af30456dccebc5a3fe7d4ae75034`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:97c621a66ae2755f1f5073cff06f5cd9f985760170d67e978082149849741ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49e7246e071167035a66f4f9932d8fc97f128dd723e6fcc5252c01b55b468c9`

```dockerfile
```

-	Layers:
	-	`sha256:a427f931852daf7c5ad82e1fad4a60f24970e3397f4a854a2d4c750ab0615922`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea155c6eadf75a35da74d25470238bb93ac7d03ce04ac27eb8320b4caf4f1bc`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:602f85ad8e53097163d87cbda0e649818857369302469b5960098a790463c0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160978530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0029c3322c1d85abd179f1e5af2ad115ae5f475b742008f2f7daa695a2ddc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 03:01:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 03:01:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb59637184047414e07e87641e3331d4d91bfde7c74294932dde14675a3711`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d1e17b0f9dee34c5fa045a987bb2dc7e3b9aa9d3a465de157e5e4ab4918414`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 14.4 MB (14402448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc896c3853aeca6f3322b194354c88c2831cd015f0b84671414ba229194db8e5`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.3 MB (1275080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b101129b0716ce5bc828d4ba40daa659f150dd3cf4c93d86f31fdc6db5dca8`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 45.1 MB (45093486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d757c1ac365886edd77e0b384f1b927b1a337587a2e047ab61b94b774511fe4`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f58373b40f33ec8d28f8d5963d989a237b7099d5df6b08cad9a55651619da4`  
		Last Modified: Tue, 06 Oct 2026 03:02:08 GMT  
		Size: 73.9 MB (73946878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b684e1ec86303e0018063ec84ad84cc8f3435816ec4402da29e754e4a1777cfd`  
		Last Modified: Tue, 06 Oct 2026 03:02:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e7554100aac202f8c4267c0f721eb6ac0d5475f5d7166b6ab477ca0a0b9a026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5438d3e9c28c987b342a46bb6add4523d17e4bd740be70c3924f402684d8c25`

```dockerfile
```

-	Layers:
	-	`sha256:f9001a8506c1c3b7bcfee8e8e200efecedbe3b807a4b40f44e668d265429022d`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4392605081424f63e068ec26d44b7ffe67d74b6ed97ef2a826e8772e409c8a`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a2743a9abf8c101af68a00687c453d8dd968998eaf58bb48c68eb64775d5db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167943526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6e581a62774ff762c66d47f3e111ba160beb9c1e8bac70ae54dc0aee1b67fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:56 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31229b589dbebbc138c333f80187e0bccc072f1a0b7deb8b28581a38f066ef2`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c038029d87e063e3eafea0457a36f88e0c14503b24ef8f467e5a8a5a735eda4`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 15.5 MB (15535127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f67c10d43ac5edb229549f369905c266cbcd267e689bbdbd48d2368a2d1188`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 1.3 MB (1262347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa61ebc5e74e61f8a35815d66b88becaa1361aa3e9dc60ab91ca29b4feb1b637`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 47.0 MB (46996547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417a4bf45b158b4d625286fea67c2961d1ff23fbd3b595f9774df185ae81ec7`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9dee362949d676bacd27895fe85549926e84cc3c065fa26a2100679510c958`  
		Last Modified: Tue, 06 Oct 2026 02:15:56 GMT  
		Size: 73.9 MB (73946760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7567b47a1b0e288eaeb46b6dcb4f9f400c4ff1833954ef2242ee03869facd2`  
		Last Modified: Tue, 06 Oct 2026 02:15:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:2c046d2b2b74b1b4782230722be29099715881321af57b12c7fabea78d156a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d1fe103ac45a4be549a88136ad514811c3c2771f55783dd3b3201f3c7395d4`

```dockerfile
```

-	Layers:
	-	`sha256:fb0e28fd5052d9c1473696ad34f7b80f25008ea9f935a57343707127a645a33f`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebeccb9eeba00dde48ad40124a1d73dcd9354fea8c84d203b6327ac9772ffa2a`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:337197923cfb611022517e6c8532f407f6577c421b058e538fbf41250445d51d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172947903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47fbc64edb0495afe552daa6fe73ec81bcef01c3bec2cdc6c06b58880647d79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 09:34:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:34:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:34:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:34:03 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:34:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753c252eb96f4a909d572d0bf2e027fbf2ec8ca9d5bf22976ccb249731483283`  
		Last Modified: Tue, 06 Oct 2026 09:34:32 GMT  
		Size: 47.4 MB (47421981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4529fb244855fed788e8edead94d3c99606fa177e68267d934bd0ce87b2bb9`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a332b4e5a6a0a1ed8705e0643efafe1fb03f134c0295d5d1695cbf8e58d7f6`  
		Last Modified: Tue, 06 Oct 2026 09:34:33 GMT  
		Size: 73.9 MB (73946890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9056157a59726fb47fd36552b600e3172606beade235d713ed19583f640be0b`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e6ad9206cb2e1bfae400448f7e962f6a603269ffd16587eae166dce3934adfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacc7737fc060efb9976cef4a160e3022b2c7774dc783849316bfcad7a293043`

```dockerfile
```

-	Layers:
	-	`sha256:63fa6d75508487d771afbd05785f732d4f051dbc1f678fce57e27058da6335c4`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:301c915aa6ae9f1e3233c51f5ab48eb86631650530c68cdea69449534209a1be`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:678196d6ad094de91e96614580d3dc67e4f219b69f3dd883439b793f22108412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165269816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97abfcc5d7161817e92f30a2239c8cc6d062a2195fe86acf1c37069ea67822fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:30:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:30:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:30:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:30:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:30:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:30:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:30:34 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:30:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f47557172e41b22fe597d22d803984255a368c18346974a1624c3e100d05ae`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06d77c8435ecb0f82575b2ae667d13e999f58c74ebcf4c23d1408a6eb677ee3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 15.6 MB (15624643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59472a76e50a18f220af99bbdf360629643aa06a230c1618aeb0466be85b19c6`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.3 MB (1283897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9458e4b10ed1010e8bf050040877a3db30caad9abda82f6949da6c3622090`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 44.5 MB (44502548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a4fd2dbb9bf9c3671f7557274b5dc6b3968b30a1ff09d1275761b53bbedab3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8c01002751cc515d279785c36984df75b2e4d1a1531dee52e04e10161954f7`  
		Last Modified: Tue, 06 Oct 2026 02:30:53 GMT  
		Size: 73.9 MB (73947027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a1c9a828cd9256fb8d2d53e1aa9f6b0ba793244f4f278c2e50ff097c2dfba8`  
		Last Modified: Tue, 06 Oct 2026 02:30:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:5607d297c59ecb68cd64f1e065531977819372a5ce31cfe2af33c7556f6c2a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9bf34084b8921bef06de49443b5e55dc96147fadb00b57340dd25670e58c96`

```dockerfile
```

-	Layers:
	-	`sha256:d4142b48645d7bf8e0820efc5bce2b93fd09c6bc4a81e47d1cabf229f843f732`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45533dac49bffce0f82c93e8340c6ad9e0505ada2d98a4dd101b5b00b76e8fc1`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0`

```console
$ docker pull cassandra@sha256:618a493bcf1f817ea2f07288a46fa76fb2d9c4dfd5a04c28227336405782889c
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
$ docker pull cassandra@sha256:a317fe3b2d5ba8db4f11a53d1297650eff804bea22789d77d4fc191fa2d3d664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168264055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bcdccf1248ce65a275a65c2a82de1b80d6639675e1a1252e857ee7e23f3f70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:09:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e76d30e8f01d60b7a1d3472d2ccedf881597fd07436096cf47548a412b687b`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fd60b45c8922b399a04a3e42bd5e15d8a0aa2589567b3a36dcb9bfb7e3d736`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 15.7 MB (15650937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684db3de1dc6184273de5e3adf47f3219ba5f722fa1c51235e0e397b74bdca4f`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.3 MB (1310311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4c739acd15e924fda5dd554875bd4d2b2f2a4e685507e7890a2bbf96684996`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 47.5 MB (47510268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcc26f81b0d53dea5d98d78f01eaa601dc2382d9d4d1ca256b614879ed792e`  
		Last Modified: Tue, 06 Oct 2026 02:09:40 GMT  
		Size: 73.9 MB (73946732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadd92c13a2cbe93464969a398c27407ca28af30456dccebc5a3fe7d4ae75034`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:97c621a66ae2755f1f5073cff06f5cd9f985760170d67e978082149849741ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49e7246e071167035a66f4f9932d8fc97f128dd723e6fcc5252c01b55b468c9`

```dockerfile
```

-	Layers:
	-	`sha256:a427f931852daf7c5ad82e1fad4a60f24970e3397f4a854a2d4c750ab0615922`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea155c6eadf75a35da74d25470238bb93ac7d03ce04ac27eb8320b4caf4f1bc`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:602f85ad8e53097163d87cbda0e649818857369302469b5960098a790463c0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160978530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0029c3322c1d85abd179f1e5af2ad115ae5f475b742008f2f7daa695a2ddc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 03:01:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 03:01:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb59637184047414e07e87641e3331d4d91bfde7c74294932dde14675a3711`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d1e17b0f9dee34c5fa045a987bb2dc7e3b9aa9d3a465de157e5e4ab4918414`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 14.4 MB (14402448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc896c3853aeca6f3322b194354c88c2831cd015f0b84671414ba229194db8e5`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.3 MB (1275080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b101129b0716ce5bc828d4ba40daa659f150dd3cf4c93d86f31fdc6db5dca8`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 45.1 MB (45093486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d757c1ac365886edd77e0b384f1b927b1a337587a2e047ab61b94b774511fe4`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f58373b40f33ec8d28f8d5963d989a237b7099d5df6b08cad9a55651619da4`  
		Last Modified: Tue, 06 Oct 2026 03:02:08 GMT  
		Size: 73.9 MB (73946878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b684e1ec86303e0018063ec84ad84cc8f3435816ec4402da29e754e4a1777cfd`  
		Last Modified: Tue, 06 Oct 2026 03:02:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e7554100aac202f8c4267c0f721eb6ac0d5475f5d7166b6ab477ca0a0b9a026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5438d3e9c28c987b342a46bb6add4523d17e4bd740be70c3924f402684d8c25`

```dockerfile
```

-	Layers:
	-	`sha256:f9001a8506c1c3b7bcfee8e8e200efecedbe3b807a4b40f44e668d265429022d`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4392605081424f63e068ec26d44b7ffe67d74b6ed97ef2a826e8772e409c8a`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a2743a9abf8c101af68a00687c453d8dd968998eaf58bb48c68eb64775d5db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167943526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6e581a62774ff762c66d47f3e111ba160beb9c1e8bac70ae54dc0aee1b67fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:56 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31229b589dbebbc138c333f80187e0bccc072f1a0b7deb8b28581a38f066ef2`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c038029d87e063e3eafea0457a36f88e0c14503b24ef8f467e5a8a5a735eda4`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 15.5 MB (15535127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f67c10d43ac5edb229549f369905c266cbcd267e689bbdbd48d2368a2d1188`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 1.3 MB (1262347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa61ebc5e74e61f8a35815d66b88becaa1361aa3e9dc60ab91ca29b4feb1b637`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 47.0 MB (46996547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417a4bf45b158b4d625286fea67c2961d1ff23fbd3b595f9774df185ae81ec7`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9dee362949d676bacd27895fe85549926e84cc3c065fa26a2100679510c958`  
		Last Modified: Tue, 06 Oct 2026 02:15:56 GMT  
		Size: 73.9 MB (73946760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7567b47a1b0e288eaeb46b6dcb4f9f400c4ff1833954ef2242ee03869facd2`  
		Last Modified: Tue, 06 Oct 2026 02:15:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:2c046d2b2b74b1b4782230722be29099715881321af57b12c7fabea78d156a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d1fe103ac45a4be549a88136ad514811c3c2771f55783dd3b3201f3c7395d4`

```dockerfile
```

-	Layers:
	-	`sha256:fb0e28fd5052d9c1473696ad34f7b80f25008ea9f935a57343707127a645a33f`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebeccb9eeba00dde48ad40124a1d73dcd9354fea8c84d203b6327ac9772ffa2a`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:337197923cfb611022517e6c8532f407f6577c421b058e538fbf41250445d51d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172947903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47fbc64edb0495afe552daa6fe73ec81bcef01c3bec2cdc6c06b58880647d79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 09:34:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:34:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:34:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:34:03 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:34:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753c252eb96f4a909d572d0bf2e027fbf2ec8ca9d5bf22976ccb249731483283`  
		Last Modified: Tue, 06 Oct 2026 09:34:32 GMT  
		Size: 47.4 MB (47421981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4529fb244855fed788e8edead94d3c99606fa177e68267d934bd0ce87b2bb9`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a332b4e5a6a0a1ed8705e0643efafe1fb03f134c0295d5d1695cbf8e58d7f6`  
		Last Modified: Tue, 06 Oct 2026 09:34:33 GMT  
		Size: 73.9 MB (73946890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9056157a59726fb47fd36552b600e3172606beade235d713ed19583f640be0b`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e6ad9206cb2e1bfae400448f7e962f6a603269ffd16587eae166dce3934adfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacc7737fc060efb9976cef4a160e3022b2c7774dc783849316bfcad7a293043`

```dockerfile
```

-	Layers:
	-	`sha256:63fa6d75508487d771afbd05785f732d4f051dbc1f678fce57e27058da6335c4`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:301c915aa6ae9f1e3233c51f5ab48eb86631650530c68cdea69449534209a1be`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; s390x

```console
$ docker pull cassandra@sha256:678196d6ad094de91e96614580d3dc67e4f219b69f3dd883439b793f22108412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165269816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97abfcc5d7161817e92f30a2239c8cc6d062a2195fe86acf1c37069ea67822fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:30:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:30:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:30:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:30:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:30:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:30:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:30:34 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:30:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f47557172e41b22fe597d22d803984255a368c18346974a1624c3e100d05ae`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06d77c8435ecb0f82575b2ae667d13e999f58c74ebcf4c23d1408a6eb677ee3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 15.6 MB (15624643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59472a76e50a18f220af99bbdf360629643aa06a230c1618aeb0466be85b19c6`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.3 MB (1283897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9458e4b10ed1010e8bf050040877a3db30caad9abda82f6949da6c3622090`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 44.5 MB (44502548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a4fd2dbb9bf9c3671f7557274b5dc6b3968b30a1ff09d1275761b53bbedab3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8c01002751cc515d279785c36984df75b2e4d1a1531dee52e04e10161954f7`  
		Last Modified: Tue, 06 Oct 2026 02:30:53 GMT  
		Size: 73.9 MB (73947027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a1c9a828cd9256fb8d2d53e1aa9f6b0ba793244f4f278c2e50ff097c2dfba8`  
		Last Modified: Tue, 06 Oct 2026 02:30:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:5607d297c59ecb68cd64f1e065531977819372a5ce31cfe2af33c7556f6c2a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9bf34084b8921bef06de49443b5e55dc96147fadb00b57340dd25670e58c96`

```dockerfile
```

-	Layers:
	-	`sha256:d4142b48645d7bf8e0820efc5bce2b93fd09c6bc4a81e47d1cabf229f843f732`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45533dac49bffce0f82c93e8340c6ad9e0505ada2d98a4dd101b5b00b76e8fc1`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0-trixie`

```console
$ docker pull cassandra@sha256:618a493bcf1f817ea2f07288a46fa76fb2d9c4dfd5a04c28227336405782889c
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

### `cassandra:5.0-trixie` - linux; amd64

```console
$ docker pull cassandra@sha256:a317fe3b2d5ba8db4f11a53d1297650eff804bea22789d77d4fc191fa2d3d664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168264055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bcdccf1248ce65a275a65c2a82de1b80d6639675e1a1252e857ee7e23f3f70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:09:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e76d30e8f01d60b7a1d3472d2ccedf881597fd07436096cf47548a412b687b`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fd60b45c8922b399a04a3e42bd5e15d8a0aa2589567b3a36dcb9bfb7e3d736`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 15.7 MB (15650937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684db3de1dc6184273de5e3adf47f3219ba5f722fa1c51235e0e397b74bdca4f`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.3 MB (1310311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4c739acd15e924fda5dd554875bd4d2b2f2a4e685507e7890a2bbf96684996`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 47.5 MB (47510268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcc26f81b0d53dea5d98d78f01eaa601dc2382d9d4d1ca256b614879ed792e`  
		Last Modified: Tue, 06 Oct 2026 02:09:40 GMT  
		Size: 73.9 MB (73946732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadd92c13a2cbe93464969a398c27407ca28af30456dccebc5a3fe7d4ae75034`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:97c621a66ae2755f1f5073cff06f5cd9f985760170d67e978082149849741ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49e7246e071167035a66f4f9932d8fc97f128dd723e6fcc5252c01b55b468c9`

```dockerfile
```

-	Layers:
	-	`sha256:a427f931852daf7c5ad82e1fad4a60f24970e3397f4a854a2d4c750ab0615922`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea155c6eadf75a35da74d25470238bb93ac7d03ce04ac27eb8320b4caf4f1bc`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:602f85ad8e53097163d87cbda0e649818857369302469b5960098a790463c0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160978530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0029c3322c1d85abd179f1e5af2ad115ae5f475b742008f2f7daa695a2ddc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 03:01:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 03:01:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb59637184047414e07e87641e3331d4d91bfde7c74294932dde14675a3711`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d1e17b0f9dee34c5fa045a987bb2dc7e3b9aa9d3a465de157e5e4ab4918414`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 14.4 MB (14402448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc896c3853aeca6f3322b194354c88c2831cd015f0b84671414ba229194db8e5`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.3 MB (1275080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b101129b0716ce5bc828d4ba40daa659f150dd3cf4c93d86f31fdc6db5dca8`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 45.1 MB (45093486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d757c1ac365886edd77e0b384f1b927b1a337587a2e047ab61b94b774511fe4`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f58373b40f33ec8d28f8d5963d989a237b7099d5df6b08cad9a55651619da4`  
		Last Modified: Tue, 06 Oct 2026 03:02:08 GMT  
		Size: 73.9 MB (73946878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b684e1ec86303e0018063ec84ad84cc8f3435816ec4402da29e754e4a1777cfd`  
		Last Modified: Tue, 06 Oct 2026 03:02:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e7554100aac202f8c4267c0f721eb6ac0d5475f5d7166b6ab477ca0a0b9a026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5438d3e9c28c987b342a46bb6add4523d17e4bd740be70c3924f402684d8c25`

```dockerfile
```

-	Layers:
	-	`sha256:f9001a8506c1c3b7bcfee8e8e200efecedbe3b807a4b40f44e668d265429022d`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4392605081424f63e068ec26d44b7ffe67d74b6ed97ef2a826e8772e409c8a`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a2743a9abf8c101af68a00687c453d8dd968998eaf58bb48c68eb64775d5db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167943526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6e581a62774ff762c66d47f3e111ba160beb9c1e8bac70ae54dc0aee1b67fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:56 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31229b589dbebbc138c333f80187e0bccc072f1a0b7deb8b28581a38f066ef2`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c038029d87e063e3eafea0457a36f88e0c14503b24ef8f467e5a8a5a735eda4`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 15.5 MB (15535127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f67c10d43ac5edb229549f369905c266cbcd267e689bbdbd48d2368a2d1188`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 1.3 MB (1262347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa61ebc5e74e61f8a35815d66b88becaa1361aa3e9dc60ab91ca29b4feb1b637`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 47.0 MB (46996547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417a4bf45b158b4d625286fea67c2961d1ff23fbd3b595f9774df185ae81ec7`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9dee362949d676bacd27895fe85549926e84cc3c065fa26a2100679510c958`  
		Last Modified: Tue, 06 Oct 2026 02:15:56 GMT  
		Size: 73.9 MB (73946760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7567b47a1b0e288eaeb46b6dcb4f9f400c4ff1833954ef2242ee03869facd2`  
		Last Modified: Tue, 06 Oct 2026 02:15:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:2c046d2b2b74b1b4782230722be29099715881321af57b12c7fabea78d156a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d1fe103ac45a4be549a88136ad514811c3c2771f55783dd3b3201f3c7395d4`

```dockerfile
```

-	Layers:
	-	`sha256:fb0e28fd5052d9c1473696ad34f7b80f25008ea9f935a57343707127a645a33f`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebeccb9eeba00dde48ad40124a1d73dcd9354fea8c84d203b6327ac9772ffa2a`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:337197923cfb611022517e6c8532f407f6577c421b058e538fbf41250445d51d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172947903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47fbc64edb0495afe552daa6fe73ec81bcef01c3bec2cdc6c06b58880647d79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 09:34:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:34:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:34:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:34:03 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:34:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753c252eb96f4a909d572d0bf2e027fbf2ec8ca9d5bf22976ccb249731483283`  
		Last Modified: Tue, 06 Oct 2026 09:34:32 GMT  
		Size: 47.4 MB (47421981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4529fb244855fed788e8edead94d3c99606fa177e68267d934bd0ce87b2bb9`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a332b4e5a6a0a1ed8705e0643efafe1fb03f134c0295d5d1695cbf8e58d7f6`  
		Last Modified: Tue, 06 Oct 2026 09:34:33 GMT  
		Size: 73.9 MB (73946890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9056157a59726fb47fd36552b600e3172606beade235d713ed19583f640be0b`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e6ad9206cb2e1bfae400448f7e962f6a603269ffd16587eae166dce3934adfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacc7737fc060efb9976cef4a160e3022b2c7774dc783849316bfcad7a293043`

```dockerfile
```

-	Layers:
	-	`sha256:63fa6d75508487d771afbd05785f732d4f051dbc1f678fce57e27058da6335c4`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:301c915aa6ae9f1e3233c51f5ab48eb86631650530c68cdea69449534209a1be`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:678196d6ad094de91e96614580d3dc67e4f219b69f3dd883439b793f22108412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165269816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97abfcc5d7161817e92f30a2239c8cc6d062a2195fe86acf1c37069ea67822fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:30:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:30:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:30:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:30:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:30:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:30:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:30:34 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:30:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f47557172e41b22fe597d22d803984255a368c18346974a1624c3e100d05ae`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06d77c8435ecb0f82575b2ae667d13e999f58c74ebcf4c23d1408a6eb677ee3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 15.6 MB (15624643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59472a76e50a18f220af99bbdf360629643aa06a230c1618aeb0466be85b19c6`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.3 MB (1283897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9458e4b10ed1010e8bf050040877a3db30caad9abda82f6949da6c3622090`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 44.5 MB (44502548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a4fd2dbb9bf9c3671f7557274b5dc6b3968b30a1ff09d1275761b53bbedab3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8c01002751cc515d279785c36984df75b2e4d1a1531dee52e04e10161954f7`  
		Last Modified: Tue, 06 Oct 2026 02:30:53 GMT  
		Size: 73.9 MB (73947027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a1c9a828cd9256fb8d2d53e1aa9f6b0ba793244f4f278c2e50ff097c2dfba8`  
		Last Modified: Tue, 06 Oct 2026 02:30:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:5607d297c59ecb68cd64f1e065531977819372a5ce31cfe2af33c7556f6c2a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9bf34084b8921bef06de49443b5e55dc96147fadb00b57340dd25670e58c96`

```dockerfile
```

-	Layers:
	-	`sha256:d4142b48645d7bf8e0820efc5bce2b93fd09c6bc4a81e47d1cabf229f843f732`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45533dac49bffce0f82c93e8340c6ad9e0505ada2d98a4dd101b5b00b76e8fc1`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.9`

```console
$ docker pull cassandra@sha256:618a493bcf1f817ea2f07288a46fa76fb2d9c4dfd5a04c28227336405782889c
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

### `cassandra:5.0.9` - linux; amd64

```console
$ docker pull cassandra@sha256:a317fe3b2d5ba8db4f11a53d1297650eff804bea22789d77d4fc191fa2d3d664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168264055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bcdccf1248ce65a275a65c2a82de1b80d6639675e1a1252e857ee7e23f3f70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:09:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e76d30e8f01d60b7a1d3472d2ccedf881597fd07436096cf47548a412b687b`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fd60b45c8922b399a04a3e42bd5e15d8a0aa2589567b3a36dcb9bfb7e3d736`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 15.7 MB (15650937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684db3de1dc6184273de5e3adf47f3219ba5f722fa1c51235e0e397b74bdca4f`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.3 MB (1310311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4c739acd15e924fda5dd554875bd4d2b2f2a4e685507e7890a2bbf96684996`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 47.5 MB (47510268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcc26f81b0d53dea5d98d78f01eaa601dc2382d9d4d1ca256b614879ed792e`  
		Last Modified: Tue, 06 Oct 2026 02:09:40 GMT  
		Size: 73.9 MB (73946732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadd92c13a2cbe93464969a398c27407ca28af30456dccebc5a3fe7d4ae75034`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:97c621a66ae2755f1f5073cff06f5cd9f985760170d67e978082149849741ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49e7246e071167035a66f4f9932d8fc97f128dd723e6fcc5252c01b55b468c9`

```dockerfile
```

-	Layers:
	-	`sha256:a427f931852daf7c5ad82e1fad4a60f24970e3397f4a854a2d4c750ab0615922`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea155c6eadf75a35da74d25470238bb93ac7d03ce04ac27eb8320b4caf4f1bc`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:602f85ad8e53097163d87cbda0e649818857369302469b5960098a790463c0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160978530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0029c3322c1d85abd179f1e5af2ad115ae5f475b742008f2f7daa695a2ddc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 03:01:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 03:01:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb59637184047414e07e87641e3331d4d91bfde7c74294932dde14675a3711`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d1e17b0f9dee34c5fa045a987bb2dc7e3b9aa9d3a465de157e5e4ab4918414`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 14.4 MB (14402448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc896c3853aeca6f3322b194354c88c2831cd015f0b84671414ba229194db8e5`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.3 MB (1275080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b101129b0716ce5bc828d4ba40daa659f150dd3cf4c93d86f31fdc6db5dca8`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 45.1 MB (45093486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d757c1ac365886edd77e0b384f1b927b1a337587a2e047ab61b94b774511fe4`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f58373b40f33ec8d28f8d5963d989a237b7099d5df6b08cad9a55651619da4`  
		Last Modified: Tue, 06 Oct 2026 03:02:08 GMT  
		Size: 73.9 MB (73946878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b684e1ec86303e0018063ec84ad84cc8f3435816ec4402da29e754e4a1777cfd`  
		Last Modified: Tue, 06 Oct 2026 03:02:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e7554100aac202f8c4267c0f721eb6ac0d5475f5d7166b6ab477ca0a0b9a026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5438d3e9c28c987b342a46bb6add4523d17e4bd740be70c3924f402684d8c25`

```dockerfile
```

-	Layers:
	-	`sha256:f9001a8506c1c3b7bcfee8e8e200efecedbe3b807a4b40f44e668d265429022d`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4392605081424f63e068ec26d44b7ffe67d74b6ed97ef2a826e8772e409c8a`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a2743a9abf8c101af68a00687c453d8dd968998eaf58bb48c68eb64775d5db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167943526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6e581a62774ff762c66d47f3e111ba160beb9c1e8bac70ae54dc0aee1b67fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:56 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31229b589dbebbc138c333f80187e0bccc072f1a0b7deb8b28581a38f066ef2`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c038029d87e063e3eafea0457a36f88e0c14503b24ef8f467e5a8a5a735eda4`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 15.5 MB (15535127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f67c10d43ac5edb229549f369905c266cbcd267e689bbdbd48d2368a2d1188`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 1.3 MB (1262347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa61ebc5e74e61f8a35815d66b88becaa1361aa3e9dc60ab91ca29b4feb1b637`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 47.0 MB (46996547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417a4bf45b158b4d625286fea67c2961d1ff23fbd3b595f9774df185ae81ec7`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9dee362949d676bacd27895fe85549926e84cc3c065fa26a2100679510c958`  
		Last Modified: Tue, 06 Oct 2026 02:15:56 GMT  
		Size: 73.9 MB (73946760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7567b47a1b0e288eaeb46b6dcb4f9f400c4ff1833954ef2242ee03869facd2`  
		Last Modified: Tue, 06 Oct 2026 02:15:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:2c046d2b2b74b1b4782230722be29099715881321af57b12c7fabea78d156a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d1fe103ac45a4be549a88136ad514811c3c2771f55783dd3b3201f3c7395d4`

```dockerfile
```

-	Layers:
	-	`sha256:fb0e28fd5052d9c1473696ad34f7b80f25008ea9f935a57343707127a645a33f`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebeccb9eeba00dde48ad40124a1d73dcd9354fea8c84d203b6327ac9772ffa2a`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; ppc64le

```console
$ docker pull cassandra@sha256:337197923cfb611022517e6c8532f407f6577c421b058e538fbf41250445d51d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172947903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47fbc64edb0495afe552daa6fe73ec81bcef01c3bec2cdc6c06b58880647d79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 09:34:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:34:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:34:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:34:03 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:34:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753c252eb96f4a909d572d0bf2e027fbf2ec8ca9d5bf22976ccb249731483283`  
		Last Modified: Tue, 06 Oct 2026 09:34:32 GMT  
		Size: 47.4 MB (47421981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4529fb244855fed788e8edead94d3c99606fa177e68267d934bd0ce87b2bb9`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a332b4e5a6a0a1ed8705e0643efafe1fb03f134c0295d5d1695cbf8e58d7f6`  
		Last Modified: Tue, 06 Oct 2026 09:34:33 GMT  
		Size: 73.9 MB (73946890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9056157a59726fb47fd36552b600e3172606beade235d713ed19583f640be0b`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e6ad9206cb2e1bfae400448f7e962f6a603269ffd16587eae166dce3934adfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacc7737fc060efb9976cef4a160e3022b2c7774dc783849316bfcad7a293043`

```dockerfile
```

-	Layers:
	-	`sha256:63fa6d75508487d771afbd05785f732d4f051dbc1f678fce57e27058da6335c4`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:301c915aa6ae9f1e3233c51f5ab48eb86631650530c68cdea69449534209a1be`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; s390x

```console
$ docker pull cassandra@sha256:678196d6ad094de91e96614580d3dc67e4f219b69f3dd883439b793f22108412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165269816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97abfcc5d7161817e92f30a2239c8cc6d062a2195fe86acf1c37069ea67822fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:30:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:30:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:30:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:30:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:30:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:30:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:30:34 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:30:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f47557172e41b22fe597d22d803984255a368c18346974a1624c3e100d05ae`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06d77c8435ecb0f82575b2ae667d13e999f58c74ebcf4c23d1408a6eb677ee3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 15.6 MB (15624643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59472a76e50a18f220af99bbdf360629643aa06a230c1618aeb0466be85b19c6`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.3 MB (1283897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9458e4b10ed1010e8bf050040877a3db30caad9abda82f6949da6c3622090`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 44.5 MB (44502548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a4fd2dbb9bf9c3671f7557274b5dc6b3968b30a1ff09d1275761b53bbedab3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8c01002751cc515d279785c36984df75b2e4d1a1531dee52e04e10161954f7`  
		Last Modified: Tue, 06 Oct 2026 02:30:53 GMT  
		Size: 73.9 MB (73947027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a1c9a828cd9256fb8d2d53e1aa9f6b0ba793244f4f278c2e50ff097c2dfba8`  
		Last Modified: Tue, 06 Oct 2026 02:30:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:5607d297c59ecb68cd64f1e065531977819372a5ce31cfe2af33c7556f6c2a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9bf34084b8921bef06de49443b5e55dc96147fadb00b57340dd25670e58c96`

```dockerfile
```

-	Layers:
	-	`sha256:d4142b48645d7bf8e0820efc5bce2b93fd09c6bc4a81e47d1cabf229f843f732`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45533dac49bffce0f82c93e8340c6ad9e0505ada2d98a4dd101b5b00b76e8fc1`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.9-trixie`

```console
$ docker pull cassandra@sha256:618a493bcf1f817ea2f07288a46fa76fb2d9c4dfd5a04c28227336405782889c
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

### `cassandra:5.0.9-trixie` - linux; amd64

```console
$ docker pull cassandra@sha256:a317fe3b2d5ba8db4f11a53d1297650eff804bea22789d77d4fc191fa2d3d664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168264055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bcdccf1248ce65a275a65c2a82de1b80d6639675e1a1252e857ee7e23f3f70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:09:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e76d30e8f01d60b7a1d3472d2ccedf881597fd07436096cf47548a412b687b`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fd60b45c8922b399a04a3e42bd5e15d8a0aa2589567b3a36dcb9bfb7e3d736`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 15.7 MB (15650937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684db3de1dc6184273de5e3adf47f3219ba5f722fa1c51235e0e397b74bdca4f`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.3 MB (1310311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4c739acd15e924fda5dd554875bd4d2b2f2a4e685507e7890a2bbf96684996`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 47.5 MB (47510268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcc26f81b0d53dea5d98d78f01eaa601dc2382d9d4d1ca256b614879ed792e`  
		Last Modified: Tue, 06 Oct 2026 02:09:40 GMT  
		Size: 73.9 MB (73946732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadd92c13a2cbe93464969a398c27407ca28af30456dccebc5a3fe7d4ae75034`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:97c621a66ae2755f1f5073cff06f5cd9f985760170d67e978082149849741ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49e7246e071167035a66f4f9932d8fc97f128dd723e6fcc5252c01b55b468c9`

```dockerfile
```

-	Layers:
	-	`sha256:a427f931852daf7c5ad82e1fad4a60f24970e3397f4a854a2d4c750ab0615922`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea155c6eadf75a35da74d25470238bb93ac7d03ce04ac27eb8320b4caf4f1bc`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:602f85ad8e53097163d87cbda0e649818857369302469b5960098a790463c0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160978530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0029c3322c1d85abd179f1e5af2ad115ae5f475b742008f2f7daa695a2ddc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 03:01:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 03:01:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb59637184047414e07e87641e3331d4d91bfde7c74294932dde14675a3711`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d1e17b0f9dee34c5fa045a987bb2dc7e3b9aa9d3a465de157e5e4ab4918414`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 14.4 MB (14402448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc896c3853aeca6f3322b194354c88c2831cd015f0b84671414ba229194db8e5`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.3 MB (1275080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b101129b0716ce5bc828d4ba40daa659f150dd3cf4c93d86f31fdc6db5dca8`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 45.1 MB (45093486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d757c1ac365886edd77e0b384f1b927b1a337587a2e047ab61b94b774511fe4`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f58373b40f33ec8d28f8d5963d989a237b7099d5df6b08cad9a55651619da4`  
		Last Modified: Tue, 06 Oct 2026 03:02:08 GMT  
		Size: 73.9 MB (73946878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b684e1ec86303e0018063ec84ad84cc8f3435816ec4402da29e754e4a1777cfd`  
		Last Modified: Tue, 06 Oct 2026 03:02:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e7554100aac202f8c4267c0f721eb6ac0d5475f5d7166b6ab477ca0a0b9a026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5438d3e9c28c987b342a46bb6add4523d17e4bd740be70c3924f402684d8c25`

```dockerfile
```

-	Layers:
	-	`sha256:f9001a8506c1c3b7bcfee8e8e200efecedbe3b807a4b40f44e668d265429022d`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4392605081424f63e068ec26d44b7ffe67d74b6ed97ef2a826e8772e409c8a`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a2743a9abf8c101af68a00687c453d8dd968998eaf58bb48c68eb64775d5db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167943526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6e581a62774ff762c66d47f3e111ba160beb9c1e8bac70ae54dc0aee1b67fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:56 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31229b589dbebbc138c333f80187e0bccc072f1a0b7deb8b28581a38f066ef2`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c038029d87e063e3eafea0457a36f88e0c14503b24ef8f467e5a8a5a735eda4`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 15.5 MB (15535127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f67c10d43ac5edb229549f369905c266cbcd267e689bbdbd48d2368a2d1188`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 1.3 MB (1262347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa61ebc5e74e61f8a35815d66b88becaa1361aa3e9dc60ab91ca29b4feb1b637`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 47.0 MB (46996547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417a4bf45b158b4d625286fea67c2961d1ff23fbd3b595f9774df185ae81ec7`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9dee362949d676bacd27895fe85549926e84cc3c065fa26a2100679510c958`  
		Last Modified: Tue, 06 Oct 2026 02:15:56 GMT  
		Size: 73.9 MB (73946760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7567b47a1b0e288eaeb46b6dcb4f9f400c4ff1833954ef2242ee03869facd2`  
		Last Modified: Tue, 06 Oct 2026 02:15:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:2c046d2b2b74b1b4782230722be29099715881321af57b12c7fabea78d156a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d1fe103ac45a4be549a88136ad514811c3c2771f55783dd3b3201f3c7395d4`

```dockerfile
```

-	Layers:
	-	`sha256:fb0e28fd5052d9c1473696ad34f7b80f25008ea9f935a57343707127a645a33f`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebeccb9eeba00dde48ad40124a1d73dcd9354fea8c84d203b6327ac9772ffa2a`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:337197923cfb611022517e6c8532f407f6577c421b058e538fbf41250445d51d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172947903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47fbc64edb0495afe552daa6fe73ec81bcef01c3bec2cdc6c06b58880647d79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 09:34:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:34:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:34:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:34:03 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:34:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753c252eb96f4a909d572d0bf2e027fbf2ec8ca9d5bf22976ccb249731483283`  
		Last Modified: Tue, 06 Oct 2026 09:34:32 GMT  
		Size: 47.4 MB (47421981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4529fb244855fed788e8edead94d3c99606fa177e68267d934bd0ce87b2bb9`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a332b4e5a6a0a1ed8705e0643efafe1fb03f134c0295d5d1695cbf8e58d7f6`  
		Last Modified: Tue, 06 Oct 2026 09:34:33 GMT  
		Size: 73.9 MB (73946890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9056157a59726fb47fd36552b600e3172606beade235d713ed19583f640be0b`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e6ad9206cb2e1bfae400448f7e962f6a603269ffd16587eae166dce3934adfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacc7737fc060efb9976cef4a160e3022b2c7774dc783849316bfcad7a293043`

```dockerfile
```

-	Layers:
	-	`sha256:63fa6d75508487d771afbd05785f732d4f051dbc1f678fce57e27058da6335c4`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:301c915aa6ae9f1e3233c51f5ab48eb86631650530c68cdea69449534209a1be`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:678196d6ad094de91e96614580d3dc67e4f219b69f3dd883439b793f22108412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165269816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97abfcc5d7161817e92f30a2239c8cc6d062a2195fe86acf1c37069ea67822fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:30:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:30:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:30:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:30:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:30:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:30:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:30:34 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:30:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f47557172e41b22fe597d22d803984255a368c18346974a1624c3e100d05ae`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06d77c8435ecb0f82575b2ae667d13e999f58c74ebcf4c23d1408a6eb677ee3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 15.6 MB (15624643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59472a76e50a18f220af99bbdf360629643aa06a230c1618aeb0466be85b19c6`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.3 MB (1283897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9458e4b10ed1010e8bf050040877a3db30caad9abda82f6949da6c3622090`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 44.5 MB (44502548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a4fd2dbb9bf9c3671f7557274b5dc6b3968b30a1ff09d1275761b53bbedab3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8c01002751cc515d279785c36984df75b2e4d1a1531dee52e04e10161954f7`  
		Last Modified: Tue, 06 Oct 2026 02:30:53 GMT  
		Size: 73.9 MB (73947027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a1c9a828cd9256fb8d2d53e1aa9f6b0ba793244f4f278c2e50ff097c2dfba8`  
		Last Modified: Tue, 06 Oct 2026 02:30:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:5607d297c59ecb68cd64f1e065531977819372a5ce31cfe2af33c7556f6c2a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9bf34084b8921bef06de49443b5e55dc96147fadb00b57340dd25670e58c96`

```dockerfile
```

-	Layers:
	-	`sha256:d4142b48645d7bf8e0820efc5bce2b93fd09c6bc4a81e47d1cabf229f843f732`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45533dac49bffce0f82c93e8340c6ad9e0505ada2d98a4dd101b5b00b76e8fc1`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0`

```console
$ docker pull cassandra@sha256:4ef4618b36f8dbb1b366b5b59e203463199cd4d60f786c51f6b7beaefbc13faa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:6.0` - linux; amd64

```console
$ docker pull cassandra@sha256:fe4436468b696563ea660d50fff94f4b2c850c8cd3b9ff3ea3623dcc5039edea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174238750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d873f76ed39d2fc64244db323839c24034760a5c51be0eef973d351751dcc1a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:09:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:28 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:28 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ba41de61d713d34ac3c4ccf7a297a7249bb682a37cd93c2ebc08995ca2d2b4`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c00aaf167c5b84b94ef10c196c8661f9cdd406f5dc9ab095833e0b97e58ca5`  
		Last Modified: Tue, 06 Oct 2026 02:09:43 GMT  
		Size: 15.7 MB (15650917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0635ea6407f99aaec2d966430a900b4989df47bdb7c870202fb523c2f22b44`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 1.3 MB (1310307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37869a9b526da008d11cdd7e350bfc9ab53d6eb96182b47c3f9c749bbac4ecca`  
		Last Modified: Tue, 06 Oct 2026 02:09:44 GMT  
		Size: 53.1 MB (53091285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b345d84d53d3f6197845d1697cbefc5d74c183ef6806f093d0ea75ecf1e6f45e`  
		Last Modified: Tue, 06 Oct 2026 02:09:45 GMT  
		Size: 74.3 MB (74340433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eea8407e5bbf7f5fbdd4eb30e2c0ec4291d2385667a64a2e8ac35523b5a4501`  
		Last Modified: Tue, 06 Oct 2026 02:09:44 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:0d19c1fdc3688b37345ddcbc639a342e69c21d08b23973c20d81ed669e37b2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b2bece46fdf9e463d3cec8456b454b4a678afcc8a2af23922b43b654f84301`

```dockerfile
```

-	Layers:
	-	`sha256:6c4b28e458da0a0a3d2a79bde782485b798ef896394a0411b0b627d858493eee`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 3.0 MB (2985069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a48a505e3f779291c61c014115f6f5ec3c472f54768ccd43b14eec7f0172b387`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:af183c8e92b851c52e7b5992a37eea4690cc210b049d5694502a73577825c308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173607906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55be9bc42214d363f53ab9daca05e735a592871e727601d8369fc8d161415034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:09 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:15:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:31 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23ff6aacd1ed9fdb981c82bfae0c506af1e660ea75f5812184d723f745cf60a`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cae78bb01960d01bb1f46abc5f53c09559d4f76e7971e42e23d972befe139e6`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 15.5 MB (15535056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fd2b2e1b87955ec1233b09758ffcc08c9eabb7570303ad891a162a61fca87b`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 1.3 MB (1262408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16ab652aaaebdfd2a211e9ce33b445f5d4ab3192fb40052e0b5be9665ae0609`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 52.3 MB (52267084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42553568406a2622b39710b0af76f72898d2a5197ec8098d000cd4ff4ec3a399`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083a74dceb1a215e2df80e2b6d49a0d1258dc597f456fdbc8f06a448d14bcf0c`  
		Last Modified: Tue, 06 Oct 2026 02:15:47 GMT  
		Size: 74.3 MB (74340617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78de35d5c19fc5cfcffa56715a929734387551baa69f32104602d3969f0fc95c`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:ff7678c5f44a5665ef9f49c0b2661cd7d987436333470fd0f94cfbdfcd52c530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f88764c67dbb561f867f3040377d21197fb0dfdcd51be5af0b9e6dba67f274`

```dockerfile
```

-	Layers:
	-	`sha256:25380cd326fc7385d9c3230268883d6e2480eeb41ec33a098d998d6fb38fad3b`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 3.0 MB (2984777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f522b7ab083ff50da0f27dd0955073af2e2bd059ea5b0881427805bc4ad5a958`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:818c0477e45fdb368219da2442283a20dff3b89da7b0a6ea88dace570cb33ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179029598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482f3eed6159d145b38956d35e7aa9e85df042c293e0b5eb26e5df719326c5c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:12 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:12 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:12 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 09:33:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:33:55 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:33:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:33:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:33:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:33:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d639c187a7a968d3292e3bf6d5e334f8c16fd90034108a228efa7fac550306a3`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 53.1 MB (53109941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c746738bfc76e25bb44667f3b239f6ddd77aa711548c98c3cf2879dfa36dddb2`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83320d9bdb030c23cab3d4910684c18129c24b0e9562d3a9454c7badb21e5577`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 74.3 MB (74340622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9040b78c7f5006fcd1e96cfb8dec7fee3963797c7aa95daf5d69d3c29e580dee`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:2ab5319c258d664e6f0126323029dd2b5e328e8143d6751926757a751544c8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd35cf0a1e900df79bb6841a2ac3917b51b2018d859a66f30b72d7592bfd1f6`

```dockerfile
```

-	Layers:
	-	`sha256:ea24264508a024403edaf13782b966a4262b788b7be80a2030152d89b72c42a5`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 3.0 MB (2988426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7e0996fb2d8a9bb4a6e863a0f4e4695f9847aef964fd40db161d58249a1340c`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 35.9 KB (35945 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0` - linux; s390x

```console
$ docker pull cassandra@sha256:7e7d29ef8bcb2fb00587e18a0263a0c8f1b94c25d0378210dc14744371899243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170791826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb69f7987540a82e5cfca08c1728fe785c18370948fc7ea60b139bf89ab317`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:29:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:29:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:29:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:29:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:29:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:29:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:29:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:29:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:29:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:29:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:29:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:29:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f396ccd7602abeb7764d387f1f9f1c8be1784d05c071c77e1dd096957676973e`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f729d1a101437f8262b5a46db81404c8ae966d142d0f84fa6257356d798cffa`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 15.6 MB (15624526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dc4d70e4242dcf08e1cd09e0b8105ac30818181ba3181d023f6082b8c058fc`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 1.3 MB (1283921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ea8701b1756a9d55ab1206571a63b33f4a33fbbc62274d520d049df7ef278e`  
		Last Modified: Tue, 06 Oct 2026 02:30:04 GMT  
		Size: 49.6 MB (49630952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a58e87749ea88d1e3b5ea5d4b28a86b45aaa42ce5260818483aaa5cc376d91`  
		Last Modified: Tue, 06 Oct 2026 02:30:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52a2191f1db93cdde47f6c10dc371a13c4cb95382674e04cb05582a79d834b0`  
		Last Modified: Tue, 06 Oct 2026 02:30:06 GMT  
		Size: 74.3 MB (74340725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb82aec422480282879d2eda02de2fe84c7b3f92aa9d6c01de33eebcf6ac15a1`  
		Last Modified: Tue, 06 Oct 2026 02:30:05 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:6ed44bd6e44d5dd8a4efab9bd47c45de5f353e4c9a614cf3c167f8d686ac733f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3021704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1513a018cc5a459f6af92e940017690c133f483ea13f502feb4549f7fb42e0`

```dockerfile
```

-	Layers:
	-	`sha256:b2a9a0a4825519a90ec43162c268fc51cef704faf53c95bf384d83f5629ceb44`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 3.0 MB (2985822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6118ac13ba0b85b8542286319643c3564b191c2560a96d8cf99e6e4afa411e8`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 35.9 KB (35882 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0-alpha2`

```console
$ docker pull cassandra@sha256:4ef4618b36f8dbb1b366b5b59e203463199cd4d60f786c51f6b7beaefbc13faa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:6.0-alpha2` - linux; amd64

```console
$ docker pull cassandra@sha256:fe4436468b696563ea660d50fff94f4b2c850c8cd3b9ff3ea3623dcc5039edea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174238750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d873f76ed39d2fc64244db323839c24034760a5c51be0eef973d351751dcc1a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:09:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:28 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:28 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ba41de61d713d34ac3c4ccf7a297a7249bb682a37cd93c2ebc08995ca2d2b4`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c00aaf167c5b84b94ef10c196c8661f9cdd406f5dc9ab095833e0b97e58ca5`  
		Last Modified: Tue, 06 Oct 2026 02:09:43 GMT  
		Size: 15.7 MB (15650917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0635ea6407f99aaec2d966430a900b4989df47bdb7c870202fb523c2f22b44`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 1.3 MB (1310307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37869a9b526da008d11cdd7e350bfc9ab53d6eb96182b47c3f9c749bbac4ecca`  
		Last Modified: Tue, 06 Oct 2026 02:09:44 GMT  
		Size: 53.1 MB (53091285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b345d84d53d3f6197845d1697cbefc5d74c183ef6806f093d0ea75ecf1e6f45e`  
		Last Modified: Tue, 06 Oct 2026 02:09:45 GMT  
		Size: 74.3 MB (74340433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eea8407e5bbf7f5fbdd4eb30e2c0ec4291d2385667a64a2e8ac35523b5a4501`  
		Last Modified: Tue, 06 Oct 2026 02:09:44 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:0d19c1fdc3688b37345ddcbc639a342e69c21d08b23973c20d81ed669e37b2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b2bece46fdf9e463d3cec8456b454b4a678afcc8a2af23922b43b654f84301`

```dockerfile
```

-	Layers:
	-	`sha256:6c4b28e458da0a0a3d2a79bde782485b798ef896394a0411b0b627d858493eee`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 3.0 MB (2985069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a48a505e3f779291c61c014115f6f5ec3c472f54768ccd43b14eec7f0172b387`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:af183c8e92b851c52e7b5992a37eea4690cc210b049d5694502a73577825c308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173607906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55be9bc42214d363f53ab9daca05e735a592871e727601d8369fc8d161415034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:09 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:15:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:31 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23ff6aacd1ed9fdb981c82bfae0c506af1e660ea75f5812184d723f745cf60a`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cae78bb01960d01bb1f46abc5f53c09559d4f76e7971e42e23d972befe139e6`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 15.5 MB (15535056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fd2b2e1b87955ec1233b09758ffcc08c9eabb7570303ad891a162a61fca87b`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 1.3 MB (1262408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16ab652aaaebdfd2a211e9ce33b445f5d4ab3192fb40052e0b5be9665ae0609`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 52.3 MB (52267084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42553568406a2622b39710b0af76f72898d2a5197ec8098d000cd4ff4ec3a399`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083a74dceb1a215e2df80e2b6d49a0d1258dc597f456fdbc8f06a448d14bcf0c`  
		Last Modified: Tue, 06 Oct 2026 02:15:47 GMT  
		Size: 74.3 MB (74340617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78de35d5c19fc5cfcffa56715a929734387551baa69f32104602d3969f0fc95c`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:ff7678c5f44a5665ef9f49c0b2661cd7d987436333470fd0f94cfbdfcd52c530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f88764c67dbb561f867f3040377d21197fb0dfdcd51be5af0b9e6dba67f274`

```dockerfile
```

-	Layers:
	-	`sha256:25380cd326fc7385d9c3230268883d6e2480eeb41ec33a098d998d6fb38fad3b`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 3.0 MB (2984777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f522b7ab083ff50da0f27dd0955073af2e2bd059ea5b0881427805bc4ad5a958`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2` - linux; ppc64le

```console
$ docker pull cassandra@sha256:818c0477e45fdb368219da2442283a20dff3b89da7b0a6ea88dace570cb33ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179029598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482f3eed6159d145b38956d35e7aa9e85df042c293e0b5eb26e5df719326c5c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:12 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:12 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:12 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 09:33:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:33:55 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:33:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:33:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:33:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:33:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d639c187a7a968d3292e3bf6d5e334f8c16fd90034108a228efa7fac550306a3`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 53.1 MB (53109941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c746738bfc76e25bb44667f3b239f6ddd77aa711548c98c3cf2879dfa36dddb2`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83320d9bdb030c23cab3d4910684c18129c24b0e9562d3a9454c7badb21e5577`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 74.3 MB (74340622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9040b78c7f5006fcd1e96cfb8dec7fee3963797c7aa95daf5d69d3c29e580dee`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:2ab5319c258d664e6f0126323029dd2b5e328e8143d6751926757a751544c8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd35cf0a1e900df79bb6841a2ac3917b51b2018d859a66f30b72d7592bfd1f6`

```dockerfile
```

-	Layers:
	-	`sha256:ea24264508a024403edaf13782b966a4262b788b7be80a2030152d89b72c42a5`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 3.0 MB (2988426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7e0996fb2d8a9bb4a6e863a0f4e4695f9847aef964fd40db161d58249a1340c`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 35.9 KB (35945 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2` - linux; s390x

```console
$ docker pull cassandra@sha256:7e7d29ef8bcb2fb00587e18a0263a0c8f1b94c25d0378210dc14744371899243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170791826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb69f7987540a82e5cfca08c1728fe785c18370948fc7ea60b139bf89ab317`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:29:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:29:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:29:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:29:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:29:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:29:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:29:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:29:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:29:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:29:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:29:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:29:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f396ccd7602abeb7764d387f1f9f1c8be1784d05c071c77e1dd096957676973e`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f729d1a101437f8262b5a46db81404c8ae966d142d0f84fa6257356d798cffa`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 15.6 MB (15624526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dc4d70e4242dcf08e1cd09e0b8105ac30818181ba3181d023f6082b8c058fc`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 1.3 MB (1283921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ea8701b1756a9d55ab1206571a63b33f4a33fbbc62274d520d049df7ef278e`  
		Last Modified: Tue, 06 Oct 2026 02:30:04 GMT  
		Size: 49.6 MB (49630952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a58e87749ea88d1e3b5ea5d4b28a86b45aaa42ce5260818483aaa5cc376d91`  
		Last Modified: Tue, 06 Oct 2026 02:30:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52a2191f1db93cdde47f6c10dc371a13c4cb95382674e04cb05582a79d834b0`  
		Last Modified: Tue, 06 Oct 2026 02:30:06 GMT  
		Size: 74.3 MB (74340725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb82aec422480282879d2eda02de2fe84c7b3f92aa9d6c01de33eebcf6ac15a1`  
		Last Modified: Tue, 06 Oct 2026 02:30:05 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:6ed44bd6e44d5dd8a4efab9bd47c45de5f353e4c9a614cf3c167f8d686ac733f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3021704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1513a018cc5a459f6af92e940017690c133f483ea13f502feb4549f7fb42e0`

```dockerfile
```

-	Layers:
	-	`sha256:b2a9a0a4825519a90ec43162c268fc51cef704faf53c95bf384d83f5629ceb44`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 3.0 MB (2985822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6118ac13ba0b85b8542286319643c3564b191c2560a96d8cf99e6e4afa411e8`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 35.9 KB (35882 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0-alpha2-trixie`

```console
$ docker pull cassandra@sha256:4ef4618b36f8dbb1b366b5b59e203463199cd4d60f786c51f6b7beaefbc13faa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:6.0-alpha2-trixie` - linux; amd64

```console
$ docker pull cassandra@sha256:fe4436468b696563ea660d50fff94f4b2c850c8cd3b9ff3ea3623dcc5039edea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174238750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d873f76ed39d2fc64244db323839c24034760a5c51be0eef973d351751dcc1a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:09:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:28 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:28 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ba41de61d713d34ac3c4ccf7a297a7249bb682a37cd93c2ebc08995ca2d2b4`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c00aaf167c5b84b94ef10c196c8661f9cdd406f5dc9ab095833e0b97e58ca5`  
		Last Modified: Tue, 06 Oct 2026 02:09:43 GMT  
		Size: 15.7 MB (15650917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0635ea6407f99aaec2d966430a900b4989df47bdb7c870202fb523c2f22b44`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 1.3 MB (1310307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37869a9b526da008d11cdd7e350bfc9ab53d6eb96182b47c3f9c749bbac4ecca`  
		Last Modified: Tue, 06 Oct 2026 02:09:44 GMT  
		Size: 53.1 MB (53091285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b345d84d53d3f6197845d1697cbefc5d74c183ef6806f093d0ea75ecf1e6f45e`  
		Last Modified: Tue, 06 Oct 2026 02:09:45 GMT  
		Size: 74.3 MB (74340433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eea8407e5bbf7f5fbdd4eb30e2c0ec4291d2385667a64a2e8ac35523b5a4501`  
		Last Modified: Tue, 06 Oct 2026 02:09:44 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:0d19c1fdc3688b37345ddcbc639a342e69c21d08b23973c20d81ed669e37b2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b2bece46fdf9e463d3cec8456b454b4a678afcc8a2af23922b43b654f84301`

```dockerfile
```

-	Layers:
	-	`sha256:6c4b28e458da0a0a3d2a79bde782485b798ef896394a0411b0b627d858493eee`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 3.0 MB (2985069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a48a505e3f779291c61c014115f6f5ec3c472f54768ccd43b14eec7f0172b387`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:af183c8e92b851c52e7b5992a37eea4690cc210b049d5694502a73577825c308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173607906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55be9bc42214d363f53ab9daca05e735a592871e727601d8369fc8d161415034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:09 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:15:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:31 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23ff6aacd1ed9fdb981c82bfae0c506af1e660ea75f5812184d723f745cf60a`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cae78bb01960d01bb1f46abc5f53c09559d4f76e7971e42e23d972befe139e6`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 15.5 MB (15535056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fd2b2e1b87955ec1233b09758ffcc08c9eabb7570303ad891a162a61fca87b`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 1.3 MB (1262408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16ab652aaaebdfd2a211e9ce33b445f5d4ab3192fb40052e0b5be9665ae0609`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 52.3 MB (52267084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42553568406a2622b39710b0af76f72898d2a5197ec8098d000cd4ff4ec3a399`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083a74dceb1a215e2df80e2b6d49a0d1258dc597f456fdbc8f06a448d14bcf0c`  
		Last Modified: Tue, 06 Oct 2026 02:15:47 GMT  
		Size: 74.3 MB (74340617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78de35d5c19fc5cfcffa56715a929734387551baa69f32104602d3969f0fc95c`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:ff7678c5f44a5665ef9f49c0b2661cd7d987436333470fd0f94cfbdfcd52c530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f88764c67dbb561f867f3040377d21197fb0dfdcd51be5af0b9e6dba67f274`

```dockerfile
```

-	Layers:
	-	`sha256:25380cd326fc7385d9c3230268883d6e2480eeb41ec33a098d998d6fb38fad3b`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 3.0 MB (2984777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f522b7ab083ff50da0f27dd0955073af2e2bd059ea5b0881427805bc4ad5a958`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:818c0477e45fdb368219da2442283a20dff3b89da7b0a6ea88dace570cb33ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179029598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482f3eed6159d145b38956d35e7aa9e85df042c293e0b5eb26e5df719326c5c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:12 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:12 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:12 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 09:33:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:33:55 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:33:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:33:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:33:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:33:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d639c187a7a968d3292e3bf6d5e334f8c16fd90034108a228efa7fac550306a3`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 53.1 MB (53109941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c746738bfc76e25bb44667f3b239f6ddd77aa711548c98c3cf2879dfa36dddb2`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83320d9bdb030c23cab3d4910684c18129c24b0e9562d3a9454c7badb21e5577`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 74.3 MB (74340622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9040b78c7f5006fcd1e96cfb8dec7fee3963797c7aa95daf5d69d3c29e580dee`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:2ab5319c258d664e6f0126323029dd2b5e328e8143d6751926757a751544c8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd35cf0a1e900df79bb6841a2ac3917b51b2018d859a66f30b72d7592bfd1f6`

```dockerfile
```

-	Layers:
	-	`sha256:ea24264508a024403edaf13782b966a4262b788b7be80a2030152d89b72c42a5`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 3.0 MB (2988426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7e0996fb2d8a9bb4a6e863a0f4e4695f9847aef964fd40db161d58249a1340c`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 35.9 KB (35945 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:7e7d29ef8bcb2fb00587e18a0263a0c8f1b94c25d0378210dc14744371899243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170791826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb69f7987540a82e5cfca08c1728fe785c18370948fc7ea60b139bf89ab317`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:29:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:29:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:29:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:29:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:29:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:29:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:29:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:29:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:29:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:29:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:29:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:29:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f396ccd7602abeb7764d387f1f9f1c8be1784d05c071c77e1dd096957676973e`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f729d1a101437f8262b5a46db81404c8ae966d142d0f84fa6257356d798cffa`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 15.6 MB (15624526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dc4d70e4242dcf08e1cd09e0b8105ac30818181ba3181d023f6082b8c058fc`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 1.3 MB (1283921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ea8701b1756a9d55ab1206571a63b33f4a33fbbc62274d520d049df7ef278e`  
		Last Modified: Tue, 06 Oct 2026 02:30:04 GMT  
		Size: 49.6 MB (49630952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a58e87749ea88d1e3b5ea5d4b28a86b45aaa42ce5260818483aaa5cc376d91`  
		Last Modified: Tue, 06 Oct 2026 02:30:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52a2191f1db93cdde47f6c10dc371a13c4cb95382674e04cb05582a79d834b0`  
		Last Modified: Tue, 06 Oct 2026 02:30:06 GMT  
		Size: 74.3 MB (74340725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb82aec422480282879d2eda02de2fe84c7b3f92aa9d6c01de33eebcf6ac15a1`  
		Last Modified: Tue, 06 Oct 2026 02:30:05 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:6ed44bd6e44d5dd8a4efab9bd47c45de5f353e4c9a614cf3c167f8d686ac733f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3021704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1513a018cc5a459f6af92e940017690c133f483ea13f502feb4549f7fb42e0`

```dockerfile
```

-	Layers:
	-	`sha256:b2a9a0a4825519a90ec43162c268fc51cef704faf53c95bf384d83f5629ceb44`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 3.0 MB (2985822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6118ac13ba0b85b8542286319643c3564b191c2560a96d8cf99e6e4afa411e8`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 35.9 KB (35882 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0-trixie`

```console
$ docker pull cassandra@sha256:4ef4618b36f8dbb1b366b5b59e203463199cd4d60f786c51f6b7beaefbc13faa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `cassandra:6.0-trixie` - linux; amd64

```console
$ docker pull cassandra@sha256:fe4436468b696563ea660d50fff94f4b2c850c8cd3b9ff3ea3623dcc5039edea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174238750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d873f76ed39d2fc64244db323839c24034760a5c51be0eef973d351751dcc1a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:09:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:09:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:28 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:28 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ba41de61d713d34ac3c4ccf7a297a7249bb682a37cd93c2ebc08995ca2d2b4`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c00aaf167c5b84b94ef10c196c8661f9cdd406f5dc9ab095833e0b97e58ca5`  
		Last Modified: Tue, 06 Oct 2026 02:09:43 GMT  
		Size: 15.7 MB (15650917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0635ea6407f99aaec2d966430a900b4989df47bdb7c870202fb523c2f22b44`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 1.3 MB (1310307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37869a9b526da008d11cdd7e350bfc9ab53d6eb96182b47c3f9c749bbac4ecca`  
		Last Modified: Tue, 06 Oct 2026 02:09:44 GMT  
		Size: 53.1 MB (53091285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b345d84d53d3f6197845d1697cbefc5d74c183ef6806f093d0ea75ecf1e6f45e`  
		Last Modified: Tue, 06 Oct 2026 02:09:45 GMT  
		Size: 74.3 MB (74340433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eea8407e5bbf7f5fbdd4eb30e2c0ec4291d2385667a64a2e8ac35523b5a4501`  
		Last Modified: Tue, 06 Oct 2026 02:09:44 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:0d19c1fdc3688b37345ddcbc639a342e69c21d08b23973c20d81ed669e37b2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b2bece46fdf9e463d3cec8456b454b4a678afcc8a2af23922b43b654f84301`

```dockerfile
```

-	Layers:
	-	`sha256:6c4b28e458da0a0a3d2a79bde782485b798ef896394a0411b0b627d858493eee`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 3.0 MB (2985069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a48a505e3f779291c61c014115f6f5ec3c472f54768ccd43b14eec7f0172b387`  
		Last Modified: Tue, 06 Oct 2026 02:09:42 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:af183c8e92b851c52e7b5992a37eea4690cc210b049d5694502a73577825c308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173607906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55be9bc42214d363f53ab9daca05e735a592871e727601d8369fc8d161415034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:09 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:15:09 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:15:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:31 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23ff6aacd1ed9fdb981c82bfae0c506af1e660ea75f5812184d723f745cf60a`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cae78bb01960d01bb1f46abc5f53c09559d4f76e7971e42e23d972befe139e6`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 15.5 MB (15535056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fd2b2e1b87955ec1233b09758ffcc08c9eabb7570303ad891a162a61fca87b`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 1.3 MB (1262408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16ab652aaaebdfd2a211e9ce33b445f5d4ab3192fb40052e0b5be9665ae0609`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 52.3 MB (52267084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42553568406a2622b39710b0af76f72898d2a5197ec8098d000cd4ff4ec3a399`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083a74dceb1a215e2df80e2b6d49a0d1258dc597f456fdbc8f06a448d14bcf0c`  
		Last Modified: Tue, 06 Oct 2026 02:15:47 GMT  
		Size: 74.3 MB (74340617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78de35d5c19fc5cfcffa56715a929734387551baa69f32104602d3969f0fc95c`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:ff7678c5f44a5665ef9f49c0b2661cd7d987436333470fd0f94cfbdfcd52c530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f88764c67dbb561f867f3040377d21197fb0dfdcd51be5af0b9e6dba67f274`

```dockerfile
```

-	Layers:
	-	`sha256:25380cd326fc7385d9c3230268883d6e2480eeb41ec33a098d998d6fb38fad3b`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 3.0 MB (2984777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f522b7ab083ff50da0f27dd0955073af2e2bd059ea5b0881427805bc4ad5a958`  
		Last Modified: Tue, 06 Oct 2026 02:15:44 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:818c0477e45fdb368219da2442283a20dff3b89da7b0a6ea88dace570cb33ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179029598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482f3eed6159d145b38956d35e7aa9e85df042c293e0b5eb26e5df719326c5c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:12 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:12 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:12 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 09:33:12 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 09:33:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:33:55 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:33:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:33:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:33:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:33:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d639c187a7a968d3292e3bf6d5e334f8c16fd90034108a228efa7fac550306a3`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 53.1 MB (53109941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c746738bfc76e25bb44667f3b239f6ddd77aa711548c98c3cf2879dfa36dddb2`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83320d9bdb030c23cab3d4910684c18129c24b0e9562d3a9454c7badb21e5577`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 74.3 MB (74340622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9040b78c7f5006fcd1e96cfb8dec7fee3963797c7aa95daf5d69d3c29e580dee`  
		Last Modified: Tue, 06 Oct 2026 09:34:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:2ab5319c258d664e6f0126323029dd2b5e328e8143d6751926757a751544c8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd35cf0a1e900df79bb6841a2ac3917b51b2018d859a66f30b72d7592bfd1f6`

```dockerfile
```

-	Layers:
	-	`sha256:ea24264508a024403edaf13782b966a4262b788b7be80a2030152d89b72c42a5`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 3.0 MB (2988426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7e0996fb2d8a9bb4a6e863a0f4e4695f9847aef964fd40db161d58249a1340c`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 35.9 KB (35945 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:7e7d29ef8bcb2fb00587e18a0263a0c8f1b94c25d0378210dc14744371899243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170791826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb69f7987540a82e5cfca08c1728fe785c18370948fc7ea60b139bf89ab317`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:29:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:29:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:29:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:29:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:29:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:29:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Tue, 06 Oct 2026 02:29:29 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Tue, 06 Oct 2026 02:29:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:29:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:29:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:29:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:29:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:29:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f396ccd7602abeb7764d387f1f9f1c8be1784d05c071c77e1dd096957676973e`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f729d1a101437f8262b5a46db81404c8ae966d142d0f84fa6257356d798cffa`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 15.6 MB (15624526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dc4d70e4242dcf08e1cd09e0b8105ac30818181ba3181d023f6082b8c058fc`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 1.3 MB (1283921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ea8701b1756a9d55ab1206571a63b33f4a33fbbc62274d520d049df7ef278e`  
		Last Modified: Tue, 06 Oct 2026 02:30:04 GMT  
		Size: 49.6 MB (49630952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a58e87749ea88d1e3b5ea5d4b28a86b45aaa42ce5260818483aaa5cc376d91`  
		Last Modified: Tue, 06 Oct 2026 02:30:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52a2191f1db93cdde47f6c10dc371a13c4cb95382674e04cb05582a79d834b0`  
		Last Modified: Tue, 06 Oct 2026 02:30:06 GMT  
		Size: 74.3 MB (74340725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb82aec422480282879d2eda02de2fe84c7b3f92aa9d6c01de33eebcf6ac15a1`  
		Last Modified: Tue, 06 Oct 2026 02:30:05 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:6ed44bd6e44d5dd8a4efab9bd47c45de5f353e4c9a614cf3c167f8d686ac733f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3021704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1513a018cc5a459f6af92e940017690c133f483ea13f502feb4549f7fb42e0`

```dockerfile
```

-	Layers:
	-	`sha256:b2a9a0a4825519a90ec43162c268fc51cef704faf53c95bf384d83f5629ceb44`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 3.0 MB (2985822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6118ac13ba0b85b8542286319643c3564b191c2560a96d8cf99e6e4afa411e8`  
		Last Modified: Tue, 06 Oct 2026 02:30:03 GMT  
		Size: 35.9 KB (35882 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:618a493bcf1f817ea2f07288a46fa76fb2d9c4dfd5a04c28227336405782889c
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
$ docker pull cassandra@sha256:a317fe3b2d5ba8db4f11a53d1297650eff804bea22789d77d4fc191fa2d3d664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168264055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bcdccf1248ce65a275a65c2a82de1b80d6639675e1a1252e857ee7e23f3f70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:09:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e76d30e8f01d60b7a1d3472d2ccedf881597fd07436096cf47548a412b687b`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fd60b45c8922b399a04a3e42bd5e15d8a0aa2589567b3a36dcb9bfb7e3d736`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 15.7 MB (15650937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684db3de1dc6184273de5e3adf47f3219ba5f722fa1c51235e0e397b74bdca4f`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.3 MB (1310311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4c739acd15e924fda5dd554875bd4d2b2f2a4e685507e7890a2bbf96684996`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 47.5 MB (47510268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcc26f81b0d53dea5d98d78f01eaa601dc2382d9d4d1ca256b614879ed792e`  
		Last Modified: Tue, 06 Oct 2026 02:09:40 GMT  
		Size: 73.9 MB (73946732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadd92c13a2cbe93464969a398c27407ca28af30456dccebc5a3fe7d4ae75034`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:97c621a66ae2755f1f5073cff06f5cd9f985760170d67e978082149849741ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49e7246e071167035a66f4f9932d8fc97f128dd723e6fcc5252c01b55b468c9`

```dockerfile
```

-	Layers:
	-	`sha256:a427f931852daf7c5ad82e1fad4a60f24970e3397f4a854a2d4c750ab0615922`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea155c6eadf75a35da74d25470238bb93ac7d03ce04ac27eb8320b4caf4f1bc`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:602f85ad8e53097163d87cbda0e649818857369302469b5960098a790463c0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160978530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0029c3322c1d85abd179f1e5af2ad115ae5f475b742008f2f7daa695a2ddc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 03:01:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 03:01:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb59637184047414e07e87641e3331d4d91bfde7c74294932dde14675a3711`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d1e17b0f9dee34c5fa045a987bb2dc7e3b9aa9d3a465de157e5e4ab4918414`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 14.4 MB (14402448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc896c3853aeca6f3322b194354c88c2831cd015f0b84671414ba229194db8e5`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.3 MB (1275080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b101129b0716ce5bc828d4ba40daa659f150dd3cf4c93d86f31fdc6db5dca8`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 45.1 MB (45093486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d757c1ac365886edd77e0b384f1b927b1a337587a2e047ab61b94b774511fe4`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f58373b40f33ec8d28f8d5963d989a237b7099d5df6b08cad9a55651619da4`  
		Last Modified: Tue, 06 Oct 2026 03:02:08 GMT  
		Size: 73.9 MB (73946878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b684e1ec86303e0018063ec84ad84cc8f3435816ec4402da29e754e4a1777cfd`  
		Last Modified: Tue, 06 Oct 2026 03:02:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e7554100aac202f8c4267c0f721eb6ac0d5475f5d7166b6ab477ca0a0b9a026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5438d3e9c28c987b342a46bb6add4523d17e4bd740be70c3924f402684d8c25`

```dockerfile
```

-	Layers:
	-	`sha256:f9001a8506c1c3b7bcfee8e8e200efecedbe3b807a4b40f44e668d265429022d`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4392605081424f63e068ec26d44b7ffe67d74b6ed97ef2a826e8772e409c8a`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a2743a9abf8c101af68a00687c453d8dd968998eaf58bb48c68eb64775d5db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167943526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6e581a62774ff762c66d47f3e111ba160beb9c1e8bac70ae54dc0aee1b67fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:56 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31229b589dbebbc138c333f80187e0bccc072f1a0b7deb8b28581a38f066ef2`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c038029d87e063e3eafea0457a36f88e0c14503b24ef8f467e5a8a5a735eda4`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 15.5 MB (15535127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f67c10d43ac5edb229549f369905c266cbcd267e689bbdbd48d2368a2d1188`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 1.3 MB (1262347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa61ebc5e74e61f8a35815d66b88becaa1361aa3e9dc60ab91ca29b4feb1b637`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 47.0 MB (46996547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417a4bf45b158b4d625286fea67c2961d1ff23fbd3b595f9774df185ae81ec7`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9dee362949d676bacd27895fe85549926e84cc3c065fa26a2100679510c958`  
		Last Modified: Tue, 06 Oct 2026 02:15:56 GMT  
		Size: 73.9 MB (73946760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7567b47a1b0e288eaeb46b6dcb4f9f400c4ff1833954ef2242ee03869facd2`  
		Last Modified: Tue, 06 Oct 2026 02:15:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:2c046d2b2b74b1b4782230722be29099715881321af57b12c7fabea78d156a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d1fe103ac45a4be549a88136ad514811c3c2771f55783dd3b3201f3c7395d4`

```dockerfile
```

-	Layers:
	-	`sha256:fb0e28fd5052d9c1473696ad34f7b80f25008ea9f935a57343707127a645a33f`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebeccb9eeba00dde48ad40124a1d73dcd9354fea8c84d203b6327ac9772ffa2a`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:337197923cfb611022517e6c8532f407f6577c421b058e538fbf41250445d51d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172947903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47fbc64edb0495afe552daa6fe73ec81bcef01c3bec2cdc6c06b58880647d79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 09:34:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:34:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:34:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:34:03 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:34:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753c252eb96f4a909d572d0bf2e027fbf2ec8ca9d5bf22976ccb249731483283`  
		Last Modified: Tue, 06 Oct 2026 09:34:32 GMT  
		Size: 47.4 MB (47421981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4529fb244855fed788e8edead94d3c99606fa177e68267d934bd0ce87b2bb9`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a332b4e5a6a0a1ed8705e0643efafe1fb03f134c0295d5d1695cbf8e58d7f6`  
		Last Modified: Tue, 06 Oct 2026 09:34:33 GMT  
		Size: 73.9 MB (73946890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9056157a59726fb47fd36552b600e3172606beade235d713ed19583f640be0b`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e6ad9206cb2e1bfae400448f7e962f6a603269ffd16587eae166dce3934adfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacc7737fc060efb9976cef4a160e3022b2c7774dc783849316bfcad7a293043`

```dockerfile
```

-	Layers:
	-	`sha256:63fa6d75508487d771afbd05785f732d4f051dbc1f678fce57e27058da6335c4`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:301c915aa6ae9f1e3233c51f5ab48eb86631650530c68cdea69449534209a1be`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; s390x

```console
$ docker pull cassandra@sha256:678196d6ad094de91e96614580d3dc67e4f219b69f3dd883439b793f22108412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165269816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97abfcc5d7161817e92f30a2239c8cc6d062a2195fe86acf1c37069ea67822fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:30:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:30:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:30:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:30:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:30:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:30:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:30:34 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:30:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f47557172e41b22fe597d22d803984255a368c18346974a1624c3e100d05ae`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06d77c8435ecb0f82575b2ae667d13e999f58c74ebcf4c23d1408a6eb677ee3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 15.6 MB (15624643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59472a76e50a18f220af99bbdf360629643aa06a230c1618aeb0466be85b19c6`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.3 MB (1283897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9458e4b10ed1010e8bf050040877a3db30caad9abda82f6949da6c3622090`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 44.5 MB (44502548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a4fd2dbb9bf9c3671f7557274b5dc6b3968b30a1ff09d1275761b53bbedab3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8c01002751cc515d279785c36984df75b2e4d1a1531dee52e04e10161954f7`  
		Last Modified: Tue, 06 Oct 2026 02:30:53 GMT  
		Size: 73.9 MB (73947027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a1c9a828cd9256fb8d2d53e1aa9f6b0ba793244f4f278c2e50ff097c2dfba8`  
		Last Modified: Tue, 06 Oct 2026 02:30:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:5607d297c59ecb68cd64f1e065531977819372a5ce31cfe2af33c7556f6c2a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9bf34084b8921bef06de49443b5e55dc96147fadb00b57340dd25670e58c96`

```dockerfile
```

-	Layers:
	-	`sha256:d4142b48645d7bf8e0820efc5bce2b93fd09c6bc4a81e47d1cabf229f843f732`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45533dac49bffce0f82c93e8340c6ad9e0505ada2d98a4dd101b5b00b76e8fc1`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:trixie`

```console
$ docker pull cassandra@sha256:618a493bcf1f817ea2f07288a46fa76fb2d9c4dfd5a04c28227336405782889c
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

### `cassandra:trixie` - linux; amd64

```console
$ docker pull cassandra@sha256:a317fe3b2d5ba8db4f11a53d1297650eff804bea22789d77d4fc191fa2d3d664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168264055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bcdccf1248ce65a275a65c2a82de1b80d6639675e1a1252e857ee7e23f3f70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:08:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:08:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:09:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:09:00 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:09:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:09:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:09:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:09:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e76d30e8f01d60b7a1d3472d2ccedf881597fd07436096cf47548a412b687b`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fd60b45c8922b399a04a3e42bd5e15d8a0aa2589567b3a36dcb9bfb7e3d736`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 15.7 MB (15650937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684db3de1dc6184273de5e3adf47f3219ba5f722fa1c51235e0e397b74bdca4f`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 1.3 MB (1310311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4c739acd15e924fda5dd554875bd4d2b2f2a4e685507e7890a2bbf96684996`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 47.5 MB (47510268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a015b1dd9766648bfee9d80a122f870637c0819e95c71a80d9aa2dda72d4de`  
		Last Modified: Tue, 06 Oct 2026 02:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcc26f81b0d53dea5d98d78f01eaa601dc2382d9d4d1ca256b614879ed792e`  
		Last Modified: Tue, 06 Oct 2026 02:09:40 GMT  
		Size: 73.9 MB (73946732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadd92c13a2cbe93464969a398c27407ca28af30456dccebc5a3fe7d4ae75034`  
		Last Modified: Tue, 06 Oct 2026 02:09:39 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:97c621a66ae2755f1f5073cff06f5cd9f985760170d67e978082149849741ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49e7246e071167035a66f4f9932d8fc97f128dd723e6fcc5252c01b55b468c9`

```dockerfile
```

-	Layers:
	-	`sha256:a427f931852daf7c5ad82e1fad4a60f24970e3397f4a854a2d4c750ab0615922`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea155c6eadf75a35da74d25470238bb93ac7d03ce04ac27eb8320b4caf4f1bc`  
		Last Modified: Tue, 06 Oct 2026 02:09:37 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:602f85ad8e53097163d87cbda0e649818857369302469b5960098a790463c0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160978530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0029c3322c1d85abd179f1e5af2ad115ae5f475b742008f2f7daa695a2ddc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 03:01:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 03:01:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 03:01:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:01:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 03:01:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:01:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 03:01:29 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 03:01:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 03:01:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:01:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 03:01:53 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 03:01:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb59637184047414e07e87641e3331d4d91bfde7c74294932dde14675a3711`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d1e17b0f9dee34c5fa045a987bb2dc7e3b9aa9d3a465de157e5e4ab4918414`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 14.4 MB (14402448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc896c3853aeca6f3322b194354c88c2831cd015f0b84671414ba229194db8e5`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 1.3 MB (1275080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b101129b0716ce5bc828d4ba40daa659f150dd3cf4c93d86f31fdc6db5dca8`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 45.1 MB (45093486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d757c1ac365886edd77e0b384f1b927b1a337587a2e047ab61b94b774511fe4`  
		Last Modified: Tue, 06 Oct 2026 03:02:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f58373b40f33ec8d28f8d5963d989a237b7099d5df6b08cad9a55651619da4`  
		Last Modified: Tue, 06 Oct 2026 03:02:08 GMT  
		Size: 73.9 MB (73946878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b684e1ec86303e0018063ec84ad84cc8f3435816ec4402da29e754e4a1777cfd`  
		Last Modified: Tue, 06 Oct 2026 03:02:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e7554100aac202f8c4267c0f721eb6ac0d5475f5d7166b6ab477ca0a0b9a026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5438d3e9c28c987b342a46bb6add4523d17e4bd740be70c3924f402684d8c25`

```dockerfile
```

-	Layers:
	-	`sha256:f9001a8506c1c3b7bcfee8e8e200efecedbe3b807a4b40f44e668d265429022d`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff4392605081424f63e068ec26d44b7ffe67d74b6ed97ef2a826e8772e409c8a`  
		Last Modified: Tue, 06 Oct 2026 03:02:05 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a2743a9abf8c101af68a00687c453d8dd968998eaf58bb48c68eb64775d5db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167943526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6e581a62774ff762c66d47f3e111ba160beb9c1e8bac70ae54dc0aee1b67fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:56 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:15:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:15:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:15:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:15:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:15:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:15:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:15:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:15:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:15:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:15:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31229b589dbebbc138c333f80187e0bccc072f1a0b7deb8b28581a38f066ef2`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c038029d87e063e3eafea0457a36f88e0c14503b24ef8f467e5a8a5a735eda4`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 15.5 MB (15535127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f67c10d43ac5edb229549f369905c266cbcd267e689bbdbd48d2368a2d1188`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 1.3 MB (1262347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa61ebc5e74e61f8a35815d66b88becaa1361aa3e9dc60ab91ca29b4feb1b637`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 47.0 MB (46996547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417a4bf45b158b4d625286fea67c2961d1ff23fbd3b595f9774df185ae81ec7`  
		Last Modified: Tue, 06 Oct 2026 02:15:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9dee362949d676bacd27895fe85549926e84cc3c065fa26a2100679510c958`  
		Last Modified: Tue, 06 Oct 2026 02:15:56 GMT  
		Size: 73.9 MB (73946760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7567b47a1b0e288eaeb46b6dcb4f9f400c4ff1833954ef2242ee03869facd2`  
		Last Modified: Tue, 06 Oct 2026 02:15:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:2c046d2b2b74b1b4782230722be29099715881321af57b12c7fabea78d156a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d1fe103ac45a4be549a88136ad514811c3c2771f55783dd3b3201f3c7395d4`

```dockerfile
```

-	Layers:
	-	`sha256:fb0e28fd5052d9c1473696ad34f7b80f25008ea9f935a57343707127a645a33f`  
		Last Modified: Tue, 06 Oct 2026 02:15:53 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebeccb9eeba00dde48ad40124a1d73dcd9354fea8c84d203b6327ac9772ffa2a`  
		Last Modified: Tue, 06 Oct 2026 02:15:52 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:337197923cfb611022517e6c8532f407f6577c421b058e538fbf41250445d51d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172947903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47fbc64edb0495afe552daa6fe73ec81bcef01c3bec2cdc6c06b58880647d79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:32:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 09:32:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 09:33:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 09:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 09:33:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:33:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 09:33:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 09:34:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 09:34:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 09:34:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 09:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 09:34:03 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 09:34:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991afaf4255363d4740cbc0168c61ce425206a44a2feec99674d3e92d3b27a4`  
		Last Modified: Tue, 06 Oct 2026 09:34:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc410a5ad2a8f354e743a4b08393f01adf68b96904d18a85442a08748b4f342c`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 16.7 MB (16657783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e46f12c5e6a50bf354930a5943cf358a1edacd32967ad57112dcd2cd95228b`  
		Last Modified: Tue, 06 Oct 2026 09:34:27 GMT  
		Size: 1.3 MB (1267189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753c252eb96f4a909d572d0bf2e027fbf2ec8ca9d5bf22976ccb249731483283`  
		Last Modified: Tue, 06 Oct 2026 09:34:32 GMT  
		Size: 47.4 MB (47421981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4529fb244855fed788e8edead94d3c99606fa177e68267d934bd0ce87b2bb9`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a332b4e5a6a0a1ed8705e0643efafe1fb03f134c0295d5d1695cbf8e58d7f6`  
		Last Modified: Tue, 06 Oct 2026 09:34:33 GMT  
		Size: 73.9 MB (73946890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9056157a59726fb47fd36552b600e3172606beade235d713ed19583f640be0b`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7e6ad9206cb2e1bfae400448f7e962f6a603269ffd16587eae166dce3934adfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacc7737fc060efb9976cef4a160e3022b2c7774dc783849316bfcad7a293043`

```dockerfile
```

-	Layers:
	-	`sha256:63fa6d75508487d771afbd05785f732d4f051dbc1f678fce57e27058da6335c4`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:301c915aa6ae9f1e3233c51f5ab48eb86631650530c68cdea69449534209a1be`  
		Last Modified: Tue, 06 Oct 2026 09:34:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:678196d6ad094de91e96614580d3dc67e4f219b69f3dd883439b793f22108412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165269816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97abfcc5d7161817e92f30a2239c8cc6d062a2195fe86acf1c37069ea67822fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:30:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 06 Oct 2026 02:30:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:30:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:30:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
RUN java --version # buildkit
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 06 Oct 2026 02:30:18 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:30:18 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 06 Oct 2026 02:30:18 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 06 Oct 2026 02:30:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 06 Oct 2026 02:30:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:30:34 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 06 Oct 2026 02:30:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f47557172e41b22fe597d22d803984255a368c18346974a1624c3e100d05ae`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06d77c8435ecb0f82575b2ae667d13e999f58c74ebcf4c23d1408a6eb677ee3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 15.6 MB (15624643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59472a76e50a18f220af99bbdf360629643aa06a230c1618aeb0466be85b19c6`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 1.3 MB (1283897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9458e4b10ed1010e8bf050040877a3db30caad9abda82f6949da6c3622090`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 44.5 MB (44502548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a4fd2dbb9bf9c3671f7557274b5dc6b3968b30a1ff09d1275761b53bbedab3`  
		Last Modified: Tue, 06 Oct 2026 02:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8c01002751cc515d279785c36984df75b2e4d1a1531dee52e04e10161954f7`  
		Last Modified: Tue, 06 Oct 2026 02:30:53 GMT  
		Size: 73.9 MB (73947027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a1c9a828cd9256fb8d2d53e1aa9f6b0ba793244f4f278c2e50ff097c2dfba8`  
		Last Modified: Tue, 06 Oct 2026 02:30:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:5607d297c59ecb68cd64f1e065531977819372a5ce31cfe2af33c7556f6c2a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9bf34084b8921bef06de49443b5e55dc96147fadb00b57340dd25670e58c96`

```dockerfile
```

-	Layers:
	-	`sha256:d4142b48645d7bf8e0820efc5bce2b93fd09c6bc4a81e47d1cabf229f843f732`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45533dac49bffce0f82c93e8340c6ad9e0505ada2d98a4dd101b5b00b76e8fc1`  
		Last Modified: Tue, 06 Oct 2026 02:30:50 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json
