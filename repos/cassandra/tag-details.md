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
$ docker pull cassandra@sha256:1757ddc6daec6d7b211016a4de447af9c0614c591c0bdc1052cdff7ee668b871
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
$ docker pull cassandra@sha256:217bd1a154a0140980e9d484df837b52675a44c85cb294c79db5cd9b7631efce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b55b4e449addbbd0220f11ad2fdc89ad17081de35dc8c89c2800b8604d95b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:46:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764677ec74f0d3be826a289f4ffce2e731c02e1f4618cf4782490b2f9d467571`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f813dab636be2001a785a7aa5107cf74a3c258af4fa6f63c4447f7a8a72f731`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 18.1 MB (18149456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a940bcf73ad0eebc6c73af5ef2fb8c5fdbd1cd9d833f782be395816b076df47c`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.3 MB (1266592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa21e85d4df2b39da2e1d36c9ade6d25f0f6f079d64de38edc2a13cfe5e1bd0c`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 47.3 MB (47336021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596bfcd41c60dd5ceb536517f0b7b394305ba2a1de76a00d1d96b9d22f3a96ca`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762d2eaaca42e0b44de5ee5a8d0a789c9563a0daa1ae8f9360c913e78ab7a0d5`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 54.2 MB (54194471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6b4bcad78cfed9d71ea8df0754475ad55a54c93426c899c4fe4d20ad965a8a`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:c4f09466a37663e99d07c5039cf227270b86d359ab6c136d1d7b76afcfb94ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec5b3d480cbee55eb7ccdfdf8c7f1e2a042f04a629610adbcf9f4da0ed2b89c`

```dockerfile
```

-	Layers:
	-	`sha256:d38da561d0b37ec91664f1bb443950e3a0d3e2254bd13723e00c745112fe3e91`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a530d3790f59b8b1dd4b18f51cfa340a0a79d44da0e01837703c257a1a737d9`  
		Last Modified: Tue, 04 Aug 2026 02:47:08 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51b0bb39588d21922677a51f7ab80ca810128d14365f889f461cb0dbc1f3b076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd2777689ca4f93b82f00d8278b39f48c9bf6e70a247b26e8afb9fd5b8b6eba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db02da3c0a5bb9094a407a8aff26de50dbab6a9680509369f0d525c5d5c0fb0`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61aef5c1fe81d531f91bc192ea42d504e352706c8b90b0cfb8ce203d5ca98d2c`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 16.2 MB (16217685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdfaf0ae1fc23eea7c32647baa8644fb04eeda2d2e8e286b0323e49fb95ebaf`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.2 MB (1232637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9070116486ef0774b8292c776e8bd3a85ad3b646d434a5349e9448fbf69045`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 45.4 MB (45444935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d830e705cba5e66dc44cfb50f4594d5afbe71752a6af39e5707f6f71eceb11`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 54.2 MB (54194497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a5fd760f07ec4b9d0ce49a9ef5735ceb24633d70cb00b82c9a074c15878445`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:4a5f5782b03df41f727cfa8a20dc62fa0c62ea3f405c95c8e62f9df9916f2ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a90fde34144a87df765cd1c4f285097fdaf36994bb81783929d9007934c88d`

```dockerfile
```

-	Layers:
	-	`sha256:9e4d4710711d98052fee578ae5d063b302289a64ee0a542744fb566ab87c50ed`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:900895a9ce14f2745463e31565daf58241f85224a39e83694faaa4eed3e646b4`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 36.6 KB (36648 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a18afc59c0c00370ab6c5e4089f6397c940f22b08df849e563fdb98908883d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76297af3077271bdb5633a6d307fdf1911e501faf1e0515df15f3f3c3f540610`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22c08a8ba5cd97c93f6fc732d93372e96277fa872c870a565990d644c5ed4a7`  
		Last Modified: Tue, 04 Aug 2026 02:47:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12c96af608d2b932c00bf4fc0b01ca70279531d6eba77db7bfd3241ed1c6f27`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 17.9 MB (17901684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95173a57579e6f5f9261fa4b7d8c300e395613b8986d58085f93b5781f9b047`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.2 MB (1220119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5554d3a73a26a1ea5e9d0cbc3fd218accc123f784ecac4052e9e2f491537a934`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 45.7 MB (45652593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41de592d26e1f3d6b38b525d7375f124eb9fa0af8b1a3972f0f622168ec076b`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112b95f191945d213ad28afab8403050738c581f112e887da9fbf262d25928b0`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 54.2 MB (54194476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e20c1550b040870d54ebe2bcd7688a4a5c75d8bd9aa8a306757a1e9d853b8d`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:b5252f63f5b8cb2edbb6006920572fe1a288f7d58ec59bbcaff26d7127e20fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bbbead6ab255e487f42c2e9b13d26f81e70accafe8d62eb081cb10a1b69aa37`

```dockerfile
```

-	Layers:
	-	`sha256:bb7840fb2f338715492b5e90020366bc237185ebf766e8e4572e72db92288f34`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1197c080fa9a1c7687bfa78961001b25a149352a374427723b6a8012be2c9e6`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ddd1e5251cb2533418aaa77c1e4343d57f63e0b126ef87d5f981eb5c4f0999d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d00bc2085934e9a6954e6426a07d848a1a87341b4ad927150129c0fff7751d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 04:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:43 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6842793c17e5dcc736bba42cfaee73a7214bbfe5399b7a27eb45894ab42ce6`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 42.8 MB (42801374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5890280b18cacf005ea0174824298db74b3445781e2aef125409cd10a72ae3fb`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 54.2 MB (54194772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19920dbe0750f38b1de6f9b7491daf06d1a528c58cd7b491f3b0e2378e3cf1a`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:d7b3e212b280cef7a60f864fa1771efd384337ef4766700ff0a6b9f043b64d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40954275761db9b3fede42800ae827279ff560e700c3a65715ca8f3f56d40375`

```dockerfile
```

-	Layers:
	-	`sha256:bfb88fa6894102b5371868140caf1b37f62fd01472d8c4679e688eb5b20421ba`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0071a50e02eef12ac52ed4ab35e6b8682f021ae402a15c8d511675e00483ce18`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; s390x

```console
$ docker pull cassandra@sha256:7c104580b8c8eb7df7c6f393d6cee2b9ef7f9cfee5ef88854538a9e0891846b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141137021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee043ef829a7dd4a10aa1c52091bffd5790817b76d9342b3aab7dc04214c158e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2277d74a56064628da71612f40c180b39e9734a29874f980e8fdfe597fb30a50`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 41.4 MB (41354118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549acc0e26eb53bd952a2166370b64f3da6eb4593b488c6ab8f8495b86de70a6`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345ad78ba8c773dcfa9701154a238bc6588a7df9d3338f655391d6817a101c75`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 54.2 MB (54194517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4a73db32c45214fe626fdbc201a6ec8cdf8bcd11e724c2e4828808edfbca20`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:167eb673906f9f9caa639765bad821f1413740bc8c8d66746e8b5ca9a16b43ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5257ac66181992fc47641a917d2daa56b628f230636d5bb8ed84623115edec47`

```dockerfile
```

-	Layers:
	-	`sha256:2941637605f1ee7e4308d17e0197af133af51c333ec4158096c0bad36a3df59d`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61cf7a3f8b4afffee71f297624525a5f888d88ac3f832b0923caadfd6a78baca`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4-bookworm`

```console
$ docker pull cassandra@sha256:1757ddc6daec6d7b211016a4de447af9c0614c591c0bdc1052cdff7ee668b871
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
$ docker pull cassandra@sha256:217bd1a154a0140980e9d484df837b52675a44c85cb294c79db5cd9b7631efce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b55b4e449addbbd0220f11ad2fdc89ad17081de35dc8c89c2800b8604d95b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:46:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764677ec74f0d3be826a289f4ffce2e731c02e1f4618cf4782490b2f9d467571`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f813dab636be2001a785a7aa5107cf74a3c258af4fa6f63c4447f7a8a72f731`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 18.1 MB (18149456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a940bcf73ad0eebc6c73af5ef2fb8c5fdbd1cd9d833f782be395816b076df47c`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.3 MB (1266592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa21e85d4df2b39da2e1d36c9ade6d25f0f6f079d64de38edc2a13cfe5e1bd0c`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 47.3 MB (47336021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596bfcd41c60dd5ceb536517f0b7b394305ba2a1de76a00d1d96b9d22f3a96ca`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762d2eaaca42e0b44de5ee5a8d0a789c9563a0daa1ae8f9360c913e78ab7a0d5`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 54.2 MB (54194471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6b4bcad78cfed9d71ea8df0754475ad55a54c93426c899c4fe4d20ad965a8a`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c4f09466a37663e99d07c5039cf227270b86d359ab6c136d1d7b76afcfb94ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec5b3d480cbee55eb7ccdfdf8c7f1e2a042f04a629610adbcf9f4da0ed2b89c`

```dockerfile
```

-	Layers:
	-	`sha256:d38da561d0b37ec91664f1bb443950e3a0d3e2254bd13723e00c745112fe3e91`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a530d3790f59b8b1dd4b18f51cfa340a0a79d44da0e01837703c257a1a737d9`  
		Last Modified: Tue, 04 Aug 2026 02:47:08 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51b0bb39588d21922677a51f7ab80ca810128d14365f889f461cb0dbc1f3b076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd2777689ca4f93b82f00d8278b39f48c9bf6e70a247b26e8afb9fd5b8b6eba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db02da3c0a5bb9094a407a8aff26de50dbab6a9680509369f0d525c5d5c0fb0`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61aef5c1fe81d531f91bc192ea42d504e352706c8b90b0cfb8ce203d5ca98d2c`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 16.2 MB (16217685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdfaf0ae1fc23eea7c32647baa8644fb04eeda2d2e8e286b0323e49fb95ebaf`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.2 MB (1232637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9070116486ef0774b8292c776e8bd3a85ad3b646d434a5349e9448fbf69045`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 45.4 MB (45444935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d830e705cba5e66dc44cfb50f4594d5afbe71752a6af39e5707f6f71eceb11`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 54.2 MB (54194497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a5fd760f07ec4b9d0ce49a9ef5735ceb24633d70cb00b82c9a074c15878445`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:4a5f5782b03df41f727cfa8a20dc62fa0c62ea3f405c95c8e62f9df9916f2ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a90fde34144a87df765cd1c4f285097fdaf36994bb81783929d9007934c88d`

```dockerfile
```

-	Layers:
	-	`sha256:9e4d4710711d98052fee578ae5d063b302289a64ee0a542744fb566ab87c50ed`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:900895a9ce14f2745463e31565daf58241f85224a39e83694faaa4eed3e646b4`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 36.6 KB (36648 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a18afc59c0c00370ab6c5e4089f6397c940f22b08df849e563fdb98908883d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76297af3077271bdb5633a6d307fdf1911e501faf1e0515df15f3f3c3f540610`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22c08a8ba5cd97c93f6fc732d93372e96277fa872c870a565990d644c5ed4a7`  
		Last Modified: Tue, 04 Aug 2026 02:47:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12c96af608d2b932c00bf4fc0b01ca70279531d6eba77db7bfd3241ed1c6f27`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 17.9 MB (17901684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95173a57579e6f5f9261fa4b7d8c300e395613b8986d58085f93b5781f9b047`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.2 MB (1220119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5554d3a73a26a1ea5e9d0cbc3fd218accc123f784ecac4052e9e2f491537a934`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 45.7 MB (45652593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41de592d26e1f3d6b38b525d7375f124eb9fa0af8b1a3972f0f622168ec076b`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112b95f191945d213ad28afab8403050738c581f112e887da9fbf262d25928b0`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 54.2 MB (54194476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e20c1550b040870d54ebe2bcd7688a4a5c75d8bd9aa8a306757a1e9d853b8d`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b5252f63f5b8cb2edbb6006920572fe1a288f7d58ec59bbcaff26d7127e20fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bbbead6ab255e487f42c2e9b13d26f81e70accafe8d62eb081cb10a1b69aa37`

```dockerfile
```

-	Layers:
	-	`sha256:bb7840fb2f338715492b5e90020366bc237185ebf766e8e4572e72db92288f34`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1197c080fa9a1c7687bfa78961001b25a149352a374427723b6a8012be2c9e6`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ddd1e5251cb2533418aaa77c1e4343d57f63e0b126ef87d5f981eb5c4f0999d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d00bc2085934e9a6954e6426a07d848a1a87341b4ad927150129c0fff7751d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 04:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:43 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6842793c17e5dcc736bba42cfaee73a7214bbfe5399b7a27eb45894ab42ce6`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 42.8 MB (42801374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5890280b18cacf005ea0174824298db74b3445781e2aef125409cd10a72ae3fb`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 54.2 MB (54194772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19920dbe0750f38b1de6f9b7491daf06d1a528c58cd7b491f3b0e2378e3cf1a`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:d7b3e212b280cef7a60f864fa1771efd384337ef4766700ff0a6b9f043b64d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40954275761db9b3fede42800ae827279ff560e700c3a65715ca8f3f56d40375`

```dockerfile
```

-	Layers:
	-	`sha256:bfb88fa6894102b5371868140caf1b37f62fd01472d8c4679e688eb5b20421ba`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0071a50e02eef12ac52ed4ab35e6b8682f021ae402a15c8d511675e00483ce18`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:7c104580b8c8eb7df7c6f393d6cee2b9ef7f9cfee5ef88854538a9e0891846b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141137021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee043ef829a7dd4a10aa1c52091bffd5790817b76d9342b3aab7dc04214c158e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2277d74a56064628da71612f40c180b39e9734a29874f980e8fdfe597fb30a50`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 41.4 MB (41354118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549acc0e26eb53bd952a2166370b64f3da6eb4593b488c6ab8f8495b86de70a6`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345ad78ba8c773dcfa9701154a238bc6588a7df9d3338f655391d6817a101c75`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 54.2 MB (54194517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4a73db32c45214fe626fdbc201a6ec8cdf8bcd11e724c2e4828808edfbca20`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:167eb673906f9f9caa639765bad821f1413740bc8c8d66746e8b5ca9a16b43ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5257ac66181992fc47641a917d2daa56b628f230636d5bb8ed84623115edec47`

```dockerfile
```

-	Layers:
	-	`sha256:2941637605f1ee7e4308d17e0197af133af51c333ec4158096c0bad36a3df59d`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61cf7a3f8b4afffee71f297624525a5f888d88ac3f832b0923caadfd6a78baca`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0`

```console
$ docker pull cassandra@sha256:e1e6200d5c59913a792f8328f91e162152a688cf44109257ea32c90fcbd819b2
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
$ docker pull cassandra@sha256:fc99d3342ca727bfaa211c780526341d97d7bda05503f14a8d1c05598f8ca816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147066282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1db443247726427724b88654ca561fcc314666b897007684329b424d1821a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:02 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d00097a603d16b1a699b4b4a2a90adfe01c9f3f9a601624373492aa386ba55`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050a3ab69feee7dfe47af87e177a27a55c638c8d07ee6f46c5347b2c43d6cb00`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 18.1 MB (18149505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079c441806434a15f0830e20d1317fd833b28d94a1365c331e0578520a529ef6`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.3 MB (1266618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2fda5e8e1b2d4e7888541897433d6bdca7f39c14ea32a324eed918d8a54049`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 47.3 MB (47336005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfa7f267f551a978689e5f969ffcf517cc42c02e02e65e001e9058c656613cb1`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4625f3d56d06fcb5c71e74d620a9372a9780d3544b2887a0a728d631fbc9a44`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 52.1 MB (52079044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc3643226459fb25e17552ecedc6c30fe951d9fb2c1515af6cecfbba74989b2`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:f47c2611f2498a8681f6b04463f2de946832a2d9f132bd05e4a02dfc29ac14d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2dda8dbcb6c0d4c2f8926e8c27ff39cba186a9dceb6a9a0b5fcb6b837263d9`

```dockerfile
```

-	Layers:
	-	`sha256:fd604687130e43ebaaeb5435967609350a339fc4f31a105c2f60df755b986c43`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 3.3 MB (3274818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5d93145d5a2dcec605e5b39bc81def1d620e87df081c5f5bcc98812c875c1f0`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:4cf139c57bc2689d22f583dcd3881a43ccce26f5202c46f371a9ef6db432704d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138916422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d38bb481ce3daeab9006dd793a65b9012c8da12ae5bac4544fa6fd61b9e9f62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:24 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:21:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:45 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:45 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad68315edf1a2e7d0793ba19bfc2a970c5f991a4dea58fcbf84056e93c5461ef`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3c33092b5d19d1d42cea65ec4e57bfb091ef180527afcfa092f4bc8138ec7a`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 16.2 MB (16217642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f89f4f4b3fccec04ca7a37cb93975ea73e6d7f6b98516d5b3aa0f2903e21bf`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea0b8ef78b3c79c2896a0018f17cbf053b03dc9dff46090883d09f2af627427`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 45.4 MB (45444951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a9038740d31965fd615bb656c9dc5e7e1d8c83430bb38ae87ac59682dd4061`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1cadcd3ba5159d098c7563e72d1d08db7ab5c84065f2526f252e8ee7c567ed`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 52.1 MB (52078992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535c7b26efd3f634aa2ccf28fb43d1b745e26cbeeb0be3bac60d6eb6f66c45e0`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:56506ed7b3c1398a9c958149d1d4119a167c191b3f82c20d347cd91311195c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce1062af551dea94c10d56dc5400f591b7983c0ca6331e70a6720b8d3517c73`

```dockerfile
```

-	Layers:
	-	`sha256:044b4ce69eb0eab7f417fb1597326b793130ca62cb98755bfa87c1ab63fc056b`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 3.3 MB (3278532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a55b3c5b22471f10537aba129d0b661115fd633e235a235bf362967c977684a5`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8d80e881aee7cdfcd80ecdcf7c58f3e038d9b24d29f794286793aaa98162bdb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144973113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f01df4348b73e8a07e70b5ad48bfff01317d1e71ff17a7b59b1183bd897faa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e0745af3f58770ffd087a8e337bdc54c419c298dbd6b5c95b48882963ab13f`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccfdb72aa20bda04dc10b9e6558e65bd261a4cf2cd2797ff3b53bfaea847b7e`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 17.9 MB (17901600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84c8b7c9eb7bedfefb0f7bacdb74394971ec8a9f37cbf38dbf9f8d7ff3cf531`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 1.2 MB (1220137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c185bf9bec7b3ab89704afe40aef056df830a1b74262d15cd1d3b1e6724455`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 45.7 MB (45652593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e725a50512ac546b5f93e418e49fdb27f3b85202f250e3ae3b3b0a46c2a6095`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 52.1 MB (52079065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44508a5ecfe7dc86b439ae56b28af240a1b7ec45ecd8e1eabf9525585950a1f2`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:b3a6d02c3fc3a74e3e424da637067343a034f93ae1e555af71291c0f617b9022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6814768e116d4b151268d4d279cd61280502e9a1d0b50ae0489d21fae3be7d0c`

```dockerfile
```

-	Layers:
	-	`sha256:811cf92f307d124cebdcd3d103051657c4e1883822588b303b5c228b4c9ae048`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 3.3 MB (3275153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125daa659bb624fdde48c9ea5100d7bec74b4b80348a8846357e56b823438d3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:d375038b0d782733b71e5b0f3efe33bcf36318725a15fe9d3db203894a8c5c14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147681728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e4f96238d5b59278abdc49775c9be137173fd9e2e042812d49a6a5deecfcc15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 04:43:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:43:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:43:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:43:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:43:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:43:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6842793c17e5dcc736bba42cfaee73a7214bbfe5399b7a27eb45894ab42ce6`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 42.8 MB (42801374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2eabcc0572c7b80a7a8b47b0250540bdccf485d8f0d271c359e7f402793770`  
		Last Modified: Tue, 04 Aug 2026 04:44:02 GMT  
		Size: 52.1 MB (52079314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940762818f29e490689519ed6383272e70284e9a0b70c569e67170e6058a6af7`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:907c8c631fb8a9caeacf7aa798c3e6a24fe43ae3707e3916e29382bbead77492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ff358a70e4a15140bfb5a388c5b11b46ade24acebdf6c89364116a8eb5bf34`

```dockerfile
```

-	Layers:
	-	`sha256:812fe2716a50524930f5e24a52d61c399880cee8f6423a8eb3bcad3beafd5bb5`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 3.3 MB (3279066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:091cf6d005c2c38a973d67d1dc09cb3a5ae914e662d4a933f22ca7cf683da253`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 35.9 KB (35934 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; s390x

```console
$ docker pull cassandra@sha256:d3f4c831e6081b9a615bb3096a540719ba9282cb73ab16d8b4f47bf990f0d3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139021663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69553766101cfd2be99665d51a9e054fd050b5d911a9bf0b9de574dd3364621`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:47:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:22 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:22 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:22 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:37 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:37 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47574014e6a98ce10fecdb2adfed195ad3c5add4ae3179ffe77b9c21bbf89457`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3111f8651aac0689cd651ab52390db31497c3e6757ee19970eecba70344934c`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 17.5 MB (17457199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cb2762f84f8592c83d5b413d21298dc8b26f1512af56303e876361ae4bbfd`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 1.2 MB (1240474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffe2b84c100fd3f60ef79a4021e4149cdacdd8c85521725b5500d6103263440`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 41.4 MB (41354142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99530f55772e02e2b6db81abfd86a7eeb16d0e171876591fdd54c38e9400b0e4`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb06eec60ff9f12432886cf49ea731e7f9126420e3b3021237354dd905bca27e`  
		Last Modified: Tue, 04 Aug 2026 02:47:59 GMT  
		Size: 52.1 MB (52079120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a21cc4887c747fbae2f70def465b8090aabec0a7c114c6c807c140994b52c4`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:6a1d012b25e2d6d8659e8aa9beec745faecf6b045bc0b574646937cb606c783e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f3404569f3e19fcca333c6ca9e60f0c7a6f7d02fac64cf97eed44d54f08a07`

```dockerfile
```

-	Layers:
	-	`sha256:138ce90c1e7028e3afee8f2e6cd72929f6e345effe1679e5804fc84e1d41e35d`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 3.3 MB (3270960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e944a0d86195983c57f7d0e5e1bc1177a18db428db61f257b873c10e306ea254`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0-bookworm`

```console
$ docker pull cassandra@sha256:e1e6200d5c59913a792f8328f91e162152a688cf44109257ea32c90fcbd819b2
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
$ docker pull cassandra@sha256:fc99d3342ca727bfaa211c780526341d97d7bda05503f14a8d1c05598f8ca816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147066282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1db443247726427724b88654ca561fcc314666b897007684329b424d1821a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:02 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d00097a603d16b1a699b4b4a2a90adfe01c9f3f9a601624373492aa386ba55`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050a3ab69feee7dfe47af87e177a27a55c638c8d07ee6f46c5347b2c43d6cb00`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 18.1 MB (18149505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079c441806434a15f0830e20d1317fd833b28d94a1365c331e0578520a529ef6`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.3 MB (1266618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2fda5e8e1b2d4e7888541897433d6bdca7f39c14ea32a324eed918d8a54049`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 47.3 MB (47336005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfa7f267f551a978689e5f969ffcf517cc42c02e02e65e001e9058c656613cb1`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4625f3d56d06fcb5c71e74d620a9372a9780d3544b2887a0a728d631fbc9a44`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 52.1 MB (52079044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc3643226459fb25e17552ecedc6c30fe951d9fb2c1515af6cecfbba74989b2`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:f47c2611f2498a8681f6b04463f2de946832a2d9f132bd05e4a02dfc29ac14d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2dda8dbcb6c0d4c2f8926e8c27ff39cba186a9dceb6a9a0b5fcb6b837263d9`

```dockerfile
```

-	Layers:
	-	`sha256:fd604687130e43ebaaeb5435967609350a339fc4f31a105c2f60df755b986c43`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 3.3 MB (3274818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5d93145d5a2dcec605e5b39bc81def1d620e87df081c5f5bcc98812c875c1f0`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:4cf139c57bc2689d22f583dcd3881a43ccce26f5202c46f371a9ef6db432704d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138916422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d38bb481ce3daeab9006dd793a65b9012c8da12ae5bac4544fa6fd61b9e9f62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:24 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:21:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:45 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:45 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad68315edf1a2e7d0793ba19bfc2a970c5f991a4dea58fcbf84056e93c5461ef`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3c33092b5d19d1d42cea65ec4e57bfb091ef180527afcfa092f4bc8138ec7a`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 16.2 MB (16217642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f89f4f4b3fccec04ca7a37cb93975ea73e6d7f6b98516d5b3aa0f2903e21bf`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea0b8ef78b3c79c2896a0018f17cbf053b03dc9dff46090883d09f2af627427`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 45.4 MB (45444951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a9038740d31965fd615bb656c9dc5e7e1d8c83430bb38ae87ac59682dd4061`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1cadcd3ba5159d098c7563e72d1d08db7ab5c84065f2526f252e8ee7c567ed`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 52.1 MB (52078992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535c7b26efd3f634aa2ccf28fb43d1b745e26cbeeb0be3bac60d6eb6f66c45e0`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:56506ed7b3c1398a9c958149d1d4119a167c191b3f82c20d347cd91311195c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce1062af551dea94c10d56dc5400f591b7983c0ca6331e70a6720b8d3517c73`

```dockerfile
```

-	Layers:
	-	`sha256:044b4ce69eb0eab7f417fb1597326b793130ca62cb98755bfa87c1ab63fc056b`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 3.3 MB (3278532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a55b3c5b22471f10537aba129d0b661115fd633e235a235bf362967c977684a5`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8d80e881aee7cdfcd80ecdcf7c58f3e038d9b24d29f794286793aaa98162bdb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144973113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f01df4348b73e8a07e70b5ad48bfff01317d1e71ff17a7b59b1183bd897faa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e0745af3f58770ffd087a8e337bdc54c419c298dbd6b5c95b48882963ab13f`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccfdb72aa20bda04dc10b9e6558e65bd261a4cf2cd2797ff3b53bfaea847b7e`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 17.9 MB (17901600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84c8b7c9eb7bedfefb0f7bacdb74394971ec8a9f37cbf38dbf9f8d7ff3cf531`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 1.2 MB (1220137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c185bf9bec7b3ab89704afe40aef056df830a1b74262d15cd1d3b1e6724455`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 45.7 MB (45652593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e725a50512ac546b5f93e418e49fdb27f3b85202f250e3ae3b3b0a46c2a6095`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 52.1 MB (52079065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44508a5ecfe7dc86b439ae56b28af240a1b7ec45ecd8e1eabf9525585950a1f2`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b3a6d02c3fc3a74e3e424da637067343a034f93ae1e555af71291c0f617b9022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6814768e116d4b151268d4d279cd61280502e9a1d0b50ae0489d21fae3be7d0c`

```dockerfile
```

-	Layers:
	-	`sha256:811cf92f307d124cebdcd3d103051657c4e1883822588b303b5c228b4c9ae048`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 3.3 MB (3275153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125daa659bb624fdde48c9ea5100d7bec74b4b80348a8846357e56b823438d3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:d375038b0d782733b71e5b0f3efe33bcf36318725a15fe9d3db203894a8c5c14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147681728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e4f96238d5b59278abdc49775c9be137173fd9e2e042812d49a6a5deecfcc15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 04:43:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:43:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:43:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:43:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:43:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:43:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6842793c17e5dcc736bba42cfaee73a7214bbfe5399b7a27eb45894ab42ce6`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 42.8 MB (42801374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2eabcc0572c7b80a7a8b47b0250540bdccf485d8f0d271c359e7f402793770`  
		Last Modified: Tue, 04 Aug 2026 04:44:02 GMT  
		Size: 52.1 MB (52079314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940762818f29e490689519ed6383272e70284e9a0b70c569e67170e6058a6af7`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:907c8c631fb8a9caeacf7aa798c3e6a24fe43ae3707e3916e29382bbead77492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ff358a70e4a15140bfb5a388c5b11b46ade24acebdf6c89364116a8eb5bf34`

```dockerfile
```

-	Layers:
	-	`sha256:812fe2716a50524930f5e24a52d61c399880cee8f6423a8eb3bcad3beafd5bb5`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 3.3 MB (3279066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:091cf6d005c2c38a973d67d1dc09cb3a5ae914e662d4a933f22ca7cf683da253`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 35.9 KB (35934 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:d3f4c831e6081b9a615bb3096a540719ba9282cb73ab16d8b4f47bf990f0d3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139021663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69553766101cfd2be99665d51a9e054fd050b5d911a9bf0b9de574dd3364621`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:47:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:22 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:22 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:22 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:37 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:37 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47574014e6a98ce10fecdb2adfed195ad3c5add4ae3179ffe77b9c21bbf89457`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3111f8651aac0689cd651ab52390db31497c3e6757ee19970eecba70344934c`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 17.5 MB (17457199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cb2762f84f8592c83d5b413d21298dc8b26f1512af56303e876361ae4bbfd`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 1.2 MB (1240474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffe2b84c100fd3f60ef79a4021e4149cdacdd8c85521725b5500d6103263440`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 41.4 MB (41354142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99530f55772e02e2b6db81abfd86a7eeb16d0e171876591fdd54c38e9400b0e4`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb06eec60ff9f12432886cf49ea731e7f9126420e3b3021237354dd905bca27e`  
		Last Modified: Tue, 04 Aug 2026 02:47:59 GMT  
		Size: 52.1 MB (52079120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a21cc4887c747fbae2f70def465b8090aabec0a7c114c6c807c140994b52c4`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:6a1d012b25e2d6d8659e8aa9beec745faecf6b045bc0b574646937cb606c783e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f3404569f3e19fcca333c6ca9e60f0c7a6f7d02fac64cf97eed44d54f08a07`

```dockerfile
```

-	Layers:
	-	`sha256:138ce90c1e7028e3afee8f2e6cd72929f6e345effe1679e5804fc84e1d41e35d`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 3.3 MB (3270960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e944a0d86195983c57f7d0e5e1bc1177a18db428db61f257b873c10e306ea254`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.20`

```console
$ docker pull cassandra@sha256:e1e6200d5c59913a792f8328f91e162152a688cf44109257ea32c90fcbd819b2
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
$ docker pull cassandra@sha256:fc99d3342ca727bfaa211c780526341d97d7bda05503f14a8d1c05598f8ca816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147066282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1db443247726427724b88654ca561fcc314666b897007684329b424d1821a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:02 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d00097a603d16b1a699b4b4a2a90adfe01c9f3f9a601624373492aa386ba55`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050a3ab69feee7dfe47af87e177a27a55c638c8d07ee6f46c5347b2c43d6cb00`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 18.1 MB (18149505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079c441806434a15f0830e20d1317fd833b28d94a1365c331e0578520a529ef6`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.3 MB (1266618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2fda5e8e1b2d4e7888541897433d6bdca7f39c14ea32a324eed918d8a54049`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 47.3 MB (47336005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfa7f267f551a978689e5f969ffcf517cc42c02e02e65e001e9058c656613cb1`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4625f3d56d06fcb5c71e74d620a9372a9780d3544b2887a0a728d631fbc9a44`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 52.1 MB (52079044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc3643226459fb25e17552ecedc6c30fe951d9fb2c1515af6cecfbba74989b2`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:f47c2611f2498a8681f6b04463f2de946832a2d9f132bd05e4a02dfc29ac14d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2dda8dbcb6c0d4c2f8926e8c27ff39cba186a9dceb6a9a0b5fcb6b837263d9`

```dockerfile
```

-	Layers:
	-	`sha256:fd604687130e43ebaaeb5435967609350a339fc4f31a105c2f60df755b986c43`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 3.3 MB (3274818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5d93145d5a2dcec605e5b39bc81def1d620e87df081c5f5bcc98812c875c1f0`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:4cf139c57bc2689d22f583dcd3881a43ccce26f5202c46f371a9ef6db432704d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138916422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d38bb481ce3daeab9006dd793a65b9012c8da12ae5bac4544fa6fd61b9e9f62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:24 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:21:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:45 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:45 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad68315edf1a2e7d0793ba19bfc2a970c5f991a4dea58fcbf84056e93c5461ef`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3c33092b5d19d1d42cea65ec4e57bfb091ef180527afcfa092f4bc8138ec7a`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 16.2 MB (16217642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f89f4f4b3fccec04ca7a37cb93975ea73e6d7f6b98516d5b3aa0f2903e21bf`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea0b8ef78b3c79c2896a0018f17cbf053b03dc9dff46090883d09f2af627427`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 45.4 MB (45444951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a9038740d31965fd615bb656c9dc5e7e1d8c83430bb38ae87ac59682dd4061`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1cadcd3ba5159d098c7563e72d1d08db7ab5c84065f2526f252e8ee7c567ed`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 52.1 MB (52078992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535c7b26efd3f634aa2ccf28fb43d1b745e26cbeeb0be3bac60d6eb6f66c45e0`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:56506ed7b3c1398a9c958149d1d4119a167c191b3f82c20d347cd91311195c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce1062af551dea94c10d56dc5400f591b7983c0ca6331e70a6720b8d3517c73`

```dockerfile
```

-	Layers:
	-	`sha256:044b4ce69eb0eab7f417fb1597326b793130ca62cb98755bfa87c1ab63fc056b`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 3.3 MB (3278532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a55b3c5b22471f10537aba129d0b661115fd633e235a235bf362967c977684a5`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8d80e881aee7cdfcd80ecdcf7c58f3e038d9b24d29f794286793aaa98162bdb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144973113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f01df4348b73e8a07e70b5ad48bfff01317d1e71ff17a7b59b1183bd897faa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e0745af3f58770ffd087a8e337bdc54c419c298dbd6b5c95b48882963ab13f`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccfdb72aa20bda04dc10b9e6558e65bd261a4cf2cd2797ff3b53bfaea847b7e`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 17.9 MB (17901600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84c8b7c9eb7bedfefb0f7bacdb74394971ec8a9f37cbf38dbf9f8d7ff3cf531`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 1.2 MB (1220137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c185bf9bec7b3ab89704afe40aef056df830a1b74262d15cd1d3b1e6724455`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 45.7 MB (45652593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e725a50512ac546b5f93e418e49fdb27f3b85202f250e3ae3b3b0a46c2a6095`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 52.1 MB (52079065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44508a5ecfe7dc86b439ae56b28af240a1b7ec45ecd8e1eabf9525585950a1f2`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:b3a6d02c3fc3a74e3e424da637067343a034f93ae1e555af71291c0f617b9022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6814768e116d4b151268d4d279cd61280502e9a1d0b50ae0489d21fae3be7d0c`

```dockerfile
```

-	Layers:
	-	`sha256:811cf92f307d124cebdcd3d103051657c4e1883822588b303b5c228b4c9ae048`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 3.3 MB (3275153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125daa659bb624fdde48c9ea5100d7bec74b4b80348a8846357e56b823438d3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; ppc64le

```console
$ docker pull cassandra@sha256:d375038b0d782733b71e5b0f3efe33bcf36318725a15fe9d3db203894a8c5c14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147681728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e4f96238d5b59278abdc49775c9be137173fd9e2e042812d49a6a5deecfcc15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 04:43:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:43:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:43:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:43:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:43:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:43:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6842793c17e5dcc736bba42cfaee73a7214bbfe5399b7a27eb45894ab42ce6`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 42.8 MB (42801374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2eabcc0572c7b80a7a8b47b0250540bdccf485d8f0d271c359e7f402793770`  
		Last Modified: Tue, 04 Aug 2026 04:44:02 GMT  
		Size: 52.1 MB (52079314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940762818f29e490689519ed6383272e70284e9a0b70c569e67170e6058a6af7`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:907c8c631fb8a9caeacf7aa798c3e6a24fe43ae3707e3916e29382bbead77492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ff358a70e4a15140bfb5a388c5b11b46ade24acebdf6c89364116a8eb5bf34`

```dockerfile
```

-	Layers:
	-	`sha256:812fe2716a50524930f5e24a52d61c399880cee8f6423a8eb3bcad3beafd5bb5`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 3.3 MB (3279066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:091cf6d005c2c38a973d67d1dc09cb3a5ae914e662d4a933f22ca7cf683da253`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 35.9 KB (35934 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; s390x

```console
$ docker pull cassandra@sha256:d3f4c831e6081b9a615bb3096a540719ba9282cb73ab16d8b4f47bf990f0d3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139021663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69553766101cfd2be99665d51a9e054fd050b5d911a9bf0b9de574dd3364621`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:47:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:22 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:22 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:22 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:37 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:37 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47574014e6a98ce10fecdb2adfed195ad3c5add4ae3179ffe77b9c21bbf89457`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3111f8651aac0689cd651ab52390db31497c3e6757ee19970eecba70344934c`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 17.5 MB (17457199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cb2762f84f8592c83d5b413d21298dc8b26f1512af56303e876361ae4bbfd`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 1.2 MB (1240474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffe2b84c100fd3f60ef79a4021e4149cdacdd8c85521725b5500d6103263440`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 41.4 MB (41354142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99530f55772e02e2b6db81abfd86a7eeb16d0e171876591fdd54c38e9400b0e4`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb06eec60ff9f12432886cf49ea731e7f9126420e3b3021237354dd905bca27e`  
		Last Modified: Tue, 04 Aug 2026 02:47:59 GMT  
		Size: 52.1 MB (52079120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a21cc4887c747fbae2f70def465b8090aabec0a7c114c6c807c140994b52c4`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:6a1d012b25e2d6d8659e8aa9beec745faecf6b045bc0b574646937cb606c783e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f3404569f3e19fcca333c6ca9e60f0c7a6f7d02fac64cf97eed44d54f08a07`

```dockerfile
```

-	Layers:
	-	`sha256:138ce90c1e7028e3afee8f2e6cd72929f6e345effe1679e5804fc84e1d41e35d`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 3.3 MB (3270960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e944a0d86195983c57f7d0e5e1bc1177a18db428db61f257b873c10e306ea254`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.20-bookworm`

```console
$ docker pull cassandra@sha256:e1e6200d5c59913a792f8328f91e162152a688cf44109257ea32c90fcbd819b2
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
$ docker pull cassandra@sha256:fc99d3342ca727bfaa211c780526341d97d7bda05503f14a8d1c05598f8ca816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147066282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1db443247726427724b88654ca561fcc314666b897007684329b424d1821a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:02 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d00097a603d16b1a699b4b4a2a90adfe01c9f3f9a601624373492aa386ba55`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050a3ab69feee7dfe47af87e177a27a55c638c8d07ee6f46c5347b2c43d6cb00`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 18.1 MB (18149505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079c441806434a15f0830e20d1317fd833b28d94a1365c331e0578520a529ef6`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.3 MB (1266618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2fda5e8e1b2d4e7888541897433d6bdca7f39c14ea32a324eed918d8a54049`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 47.3 MB (47336005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfa7f267f551a978689e5f969ffcf517cc42c02e02e65e001e9058c656613cb1`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4625f3d56d06fcb5c71e74d620a9372a9780d3544b2887a0a728d631fbc9a44`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 52.1 MB (52079044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc3643226459fb25e17552ecedc6c30fe951d9fb2c1515af6cecfbba74989b2`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:f47c2611f2498a8681f6b04463f2de946832a2d9f132bd05e4a02dfc29ac14d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2dda8dbcb6c0d4c2f8926e8c27ff39cba186a9dceb6a9a0b5fcb6b837263d9`

```dockerfile
```

-	Layers:
	-	`sha256:fd604687130e43ebaaeb5435967609350a339fc4f31a105c2f60df755b986c43`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 3.3 MB (3274818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5d93145d5a2dcec605e5b39bc81def1d620e87df081c5f5bcc98812c875c1f0`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:4cf139c57bc2689d22f583dcd3881a43ccce26f5202c46f371a9ef6db432704d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138916422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d38bb481ce3daeab9006dd793a65b9012c8da12ae5bac4544fa6fd61b9e9f62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:24 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:21:24 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:21:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:45 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:45 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad68315edf1a2e7d0793ba19bfc2a970c5f991a4dea58fcbf84056e93c5461ef`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3c33092b5d19d1d42cea65ec4e57bfb091ef180527afcfa092f4bc8138ec7a`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 16.2 MB (16217642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f89f4f4b3fccec04ca7a37cb93975ea73e6d7f6b98516d5b3aa0f2903e21bf`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea0b8ef78b3c79c2896a0018f17cbf053b03dc9dff46090883d09f2af627427`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 45.4 MB (45444951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a9038740d31965fd615bb656c9dc5e7e1d8c83430bb38ae87ac59682dd4061`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1cadcd3ba5159d098c7563e72d1d08db7ab5c84065f2526f252e8ee7c567ed`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 52.1 MB (52078992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535c7b26efd3f634aa2ccf28fb43d1b745e26cbeeb0be3bac60d6eb6f66c45e0`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:56506ed7b3c1398a9c958149d1d4119a167c191b3f82c20d347cd91311195c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce1062af551dea94c10d56dc5400f591b7983c0ca6331e70a6720b8d3517c73`

```dockerfile
```

-	Layers:
	-	`sha256:044b4ce69eb0eab7f417fb1597326b793130ca62cb98755bfa87c1ab63fc056b`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 3.3 MB (3278532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a55b3c5b22471f10537aba129d0b661115fd633e235a235bf362967c977684a5`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8d80e881aee7cdfcd80ecdcf7c58f3e038d9b24d29f794286793aaa98162bdb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144973113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f01df4348b73e8a07e70b5ad48bfff01317d1e71ff17a7b59b1183bd897faa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e0745af3f58770ffd087a8e337bdc54c419c298dbd6b5c95b48882963ab13f`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccfdb72aa20bda04dc10b9e6558e65bd261a4cf2cd2797ff3b53bfaea847b7e`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 17.9 MB (17901600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84c8b7c9eb7bedfefb0f7bacdb74394971ec8a9f37cbf38dbf9f8d7ff3cf531`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 1.2 MB (1220137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c185bf9bec7b3ab89704afe40aef056df830a1b74262d15cd1d3b1e6724455`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 45.7 MB (45652593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e725a50512ac546b5f93e418e49fdb27f3b85202f250e3ae3b3b0a46c2a6095`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 52.1 MB (52079065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44508a5ecfe7dc86b439ae56b28af240a1b7ec45ecd8e1eabf9525585950a1f2`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b3a6d02c3fc3a74e3e424da637067343a034f93ae1e555af71291c0f617b9022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6814768e116d4b151268d4d279cd61280502e9a1d0b50ae0489d21fae3be7d0c`

```dockerfile
```

-	Layers:
	-	`sha256:811cf92f307d124cebdcd3d103051657c4e1883822588b303b5c228b4c9ae048`  
		Last Modified: Tue, 04 Aug 2026 02:47:21 GMT  
		Size: 3.3 MB (3275153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125daa659bb624fdde48c9ea5100d7bec74b4b80348a8846357e56b823438d3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:d375038b0d782733b71e5b0f3efe33bcf36318725a15fe9d3db203894a8c5c14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147681728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e4f96238d5b59278abdc49775c9be137173fd9e2e042812d49a6a5deecfcc15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 04:43:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:43:34 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:43:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:43:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:43:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:43:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6842793c17e5dcc736bba42cfaee73a7214bbfe5399b7a27eb45894ab42ce6`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 42.8 MB (42801374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2eabcc0572c7b80a7a8b47b0250540bdccf485d8f0d271c359e7f402793770`  
		Last Modified: Tue, 04 Aug 2026 04:44:02 GMT  
		Size: 52.1 MB (52079314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940762818f29e490689519ed6383272e70284e9a0b70c569e67170e6058a6af7`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:907c8c631fb8a9caeacf7aa798c3e6a24fe43ae3707e3916e29382bbead77492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ff358a70e4a15140bfb5a388c5b11b46ade24acebdf6c89364116a8eb5bf34`

```dockerfile
```

-	Layers:
	-	`sha256:812fe2716a50524930f5e24a52d61c399880cee8f6423a8eb3bcad3beafd5bb5`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 3.3 MB (3279066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:091cf6d005c2c38a973d67d1dc09cb3a5ae914e662d4a933f22ca7cf683da253`  
		Last Modified: Tue, 04 Aug 2026 04:44:00 GMT  
		Size: 35.9 KB (35934 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:d3f4c831e6081b9a615bb3096a540719ba9282cb73ab16d8b4f47bf990f0d3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139021663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69553766101cfd2be99665d51a9e054fd050b5d911a9bf0b9de574dd3364621`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:47:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:22 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:22 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:22 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_VERSION=4.0.20
# Tue, 04 Aug 2026 02:47:22 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Tue, 04 Aug 2026 02:47:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:37 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:37 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47574014e6a98ce10fecdb2adfed195ad3c5add4ae3179ffe77b9c21bbf89457`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3111f8651aac0689cd651ab52390db31497c3e6757ee19970eecba70344934c`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 17.5 MB (17457199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cb2762f84f8592c83d5b413d21298dc8b26f1512af56303e876361ae4bbfd`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 1.2 MB (1240474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffe2b84c100fd3f60ef79a4021e4149cdacdd8c85521725b5500d6103263440`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 41.4 MB (41354142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99530f55772e02e2b6db81abfd86a7eeb16d0e171876591fdd54c38e9400b0e4`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb06eec60ff9f12432886cf49ea731e7f9126420e3b3021237354dd905bca27e`  
		Last Modified: Tue, 04 Aug 2026 02:47:59 GMT  
		Size: 52.1 MB (52079120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a21cc4887c747fbae2f70def465b8090aabec0a7c114c6c807c140994b52c4`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:6a1d012b25e2d6d8659e8aa9beec745faecf6b045bc0b574646937cb606c783e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f3404569f3e19fcca333c6ca9e60f0c7a6f7d02fac64cf97eed44d54f08a07`

```dockerfile
```

-	Layers:
	-	`sha256:138ce90c1e7028e3afee8f2e6cd72929f6e345effe1679e5804fc84e1d41e35d`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 3.3 MB (3270960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e944a0d86195983c57f7d0e5e1bc1177a18db428db61f257b873c10e306ea254`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1`

```console
$ docker pull cassandra@sha256:1757ddc6daec6d7b211016a4de447af9c0614c591c0bdc1052cdff7ee668b871
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
$ docker pull cassandra@sha256:217bd1a154a0140980e9d484df837b52675a44c85cb294c79db5cd9b7631efce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b55b4e449addbbd0220f11ad2fdc89ad17081de35dc8c89c2800b8604d95b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:46:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764677ec74f0d3be826a289f4ffce2e731c02e1f4618cf4782490b2f9d467571`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f813dab636be2001a785a7aa5107cf74a3c258af4fa6f63c4447f7a8a72f731`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 18.1 MB (18149456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a940bcf73ad0eebc6c73af5ef2fb8c5fdbd1cd9d833f782be395816b076df47c`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.3 MB (1266592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa21e85d4df2b39da2e1d36c9ade6d25f0f6f079d64de38edc2a13cfe5e1bd0c`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 47.3 MB (47336021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596bfcd41c60dd5ceb536517f0b7b394305ba2a1de76a00d1d96b9d22f3a96ca`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762d2eaaca42e0b44de5ee5a8d0a789c9563a0daa1ae8f9360c913e78ab7a0d5`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 54.2 MB (54194471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6b4bcad78cfed9d71ea8df0754475ad55a54c93426c899c4fe4d20ad965a8a`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:c4f09466a37663e99d07c5039cf227270b86d359ab6c136d1d7b76afcfb94ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec5b3d480cbee55eb7ccdfdf8c7f1e2a042f04a629610adbcf9f4da0ed2b89c`

```dockerfile
```

-	Layers:
	-	`sha256:d38da561d0b37ec91664f1bb443950e3a0d3e2254bd13723e00c745112fe3e91`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a530d3790f59b8b1dd4b18f51cfa340a0a79d44da0e01837703c257a1a737d9`  
		Last Modified: Tue, 04 Aug 2026 02:47:08 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51b0bb39588d21922677a51f7ab80ca810128d14365f889f461cb0dbc1f3b076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd2777689ca4f93b82f00d8278b39f48c9bf6e70a247b26e8afb9fd5b8b6eba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db02da3c0a5bb9094a407a8aff26de50dbab6a9680509369f0d525c5d5c0fb0`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61aef5c1fe81d531f91bc192ea42d504e352706c8b90b0cfb8ce203d5ca98d2c`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 16.2 MB (16217685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdfaf0ae1fc23eea7c32647baa8644fb04eeda2d2e8e286b0323e49fb95ebaf`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.2 MB (1232637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9070116486ef0774b8292c776e8bd3a85ad3b646d434a5349e9448fbf69045`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 45.4 MB (45444935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d830e705cba5e66dc44cfb50f4594d5afbe71752a6af39e5707f6f71eceb11`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 54.2 MB (54194497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a5fd760f07ec4b9d0ce49a9ef5735ceb24633d70cb00b82c9a074c15878445`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:4a5f5782b03df41f727cfa8a20dc62fa0c62ea3f405c95c8e62f9df9916f2ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a90fde34144a87df765cd1c4f285097fdaf36994bb81783929d9007934c88d`

```dockerfile
```

-	Layers:
	-	`sha256:9e4d4710711d98052fee578ae5d063b302289a64ee0a542744fb566ab87c50ed`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:900895a9ce14f2745463e31565daf58241f85224a39e83694faaa4eed3e646b4`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 36.6 KB (36648 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a18afc59c0c00370ab6c5e4089f6397c940f22b08df849e563fdb98908883d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76297af3077271bdb5633a6d307fdf1911e501faf1e0515df15f3f3c3f540610`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22c08a8ba5cd97c93f6fc732d93372e96277fa872c870a565990d644c5ed4a7`  
		Last Modified: Tue, 04 Aug 2026 02:47:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12c96af608d2b932c00bf4fc0b01ca70279531d6eba77db7bfd3241ed1c6f27`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 17.9 MB (17901684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95173a57579e6f5f9261fa4b7d8c300e395613b8986d58085f93b5781f9b047`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.2 MB (1220119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5554d3a73a26a1ea5e9d0cbc3fd218accc123f784ecac4052e9e2f491537a934`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 45.7 MB (45652593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41de592d26e1f3d6b38b525d7375f124eb9fa0af8b1a3972f0f622168ec076b`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112b95f191945d213ad28afab8403050738c581f112e887da9fbf262d25928b0`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 54.2 MB (54194476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e20c1550b040870d54ebe2bcd7688a4a5c75d8bd9aa8a306757a1e9d853b8d`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:b5252f63f5b8cb2edbb6006920572fe1a288f7d58ec59bbcaff26d7127e20fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bbbead6ab255e487f42c2e9b13d26f81e70accafe8d62eb081cb10a1b69aa37`

```dockerfile
```

-	Layers:
	-	`sha256:bb7840fb2f338715492b5e90020366bc237185ebf766e8e4572e72db92288f34`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1197c080fa9a1c7687bfa78961001b25a149352a374427723b6a8012be2c9e6`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ddd1e5251cb2533418aaa77c1e4343d57f63e0b126ef87d5f981eb5c4f0999d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d00bc2085934e9a6954e6426a07d848a1a87341b4ad927150129c0fff7751d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 04:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:43 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6842793c17e5dcc736bba42cfaee73a7214bbfe5399b7a27eb45894ab42ce6`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 42.8 MB (42801374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5890280b18cacf005ea0174824298db74b3445781e2aef125409cd10a72ae3fb`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 54.2 MB (54194772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19920dbe0750f38b1de6f9b7491daf06d1a528c58cd7b491f3b0e2378e3cf1a`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:d7b3e212b280cef7a60f864fa1771efd384337ef4766700ff0a6b9f043b64d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40954275761db9b3fede42800ae827279ff560e700c3a65715ca8f3f56d40375`

```dockerfile
```

-	Layers:
	-	`sha256:bfb88fa6894102b5371868140caf1b37f62fd01472d8c4679e688eb5b20421ba`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0071a50e02eef12ac52ed4ab35e6b8682f021ae402a15c8d511675e00483ce18`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; s390x

```console
$ docker pull cassandra@sha256:7c104580b8c8eb7df7c6f393d6cee2b9ef7f9cfee5ef88854538a9e0891846b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141137021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee043ef829a7dd4a10aa1c52091bffd5790817b76d9342b3aab7dc04214c158e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2277d74a56064628da71612f40c180b39e9734a29874f980e8fdfe597fb30a50`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 41.4 MB (41354118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549acc0e26eb53bd952a2166370b64f3da6eb4593b488c6ab8f8495b86de70a6`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345ad78ba8c773dcfa9701154a238bc6588a7df9d3338f655391d6817a101c75`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 54.2 MB (54194517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4a73db32c45214fe626fdbc201a6ec8cdf8bcd11e724c2e4828808edfbca20`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:167eb673906f9f9caa639765bad821f1413740bc8c8d66746e8b5ca9a16b43ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5257ac66181992fc47641a917d2daa56b628f230636d5bb8ed84623115edec47`

```dockerfile
```

-	Layers:
	-	`sha256:2941637605f1ee7e4308d17e0197af133af51c333ec4158096c0bad36a3df59d`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61cf7a3f8b4afffee71f297624525a5f888d88ac3f832b0923caadfd6a78baca`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1-bookworm`

```console
$ docker pull cassandra@sha256:1757ddc6daec6d7b211016a4de447af9c0614c591c0bdc1052cdff7ee668b871
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
$ docker pull cassandra@sha256:217bd1a154a0140980e9d484df837b52675a44c85cb294c79db5cd9b7631efce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b55b4e449addbbd0220f11ad2fdc89ad17081de35dc8c89c2800b8604d95b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:46:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764677ec74f0d3be826a289f4ffce2e731c02e1f4618cf4782490b2f9d467571`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f813dab636be2001a785a7aa5107cf74a3c258af4fa6f63c4447f7a8a72f731`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 18.1 MB (18149456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a940bcf73ad0eebc6c73af5ef2fb8c5fdbd1cd9d833f782be395816b076df47c`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.3 MB (1266592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa21e85d4df2b39da2e1d36c9ade6d25f0f6f079d64de38edc2a13cfe5e1bd0c`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 47.3 MB (47336021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596bfcd41c60dd5ceb536517f0b7b394305ba2a1de76a00d1d96b9d22f3a96ca`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762d2eaaca42e0b44de5ee5a8d0a789c9563a0daa1ae8f9360c913e78ab7a0d5`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 54.2 MB (54194471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6b4bcad78cfed9d71ea8df0754475ad55a54c93426c899c4fe4d20ad965a8a`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c4f09466a37663e99d07c5039cf227270b86d359ab6c136d1d7b76afcfb94ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec5b3d480cbee55eb7ccdfdf8c7f1e2a042f04a629610adbcf9f4da0ed2b89c`

```dockerfile
```

-	Layers:
	-	`sha256:d38da561d0b37ec91664f1bb443950e3a0d3e2254bd13723e00c745112fe3e91`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a530d3790f59b8b1dd4b18f51cfa340a0a79d44da0e01837703c257a1a737d9`  
		Last Modified: Tue, 04 Aug 2026 02:47:08 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51b0bb39588d21922677a51f7ab80ca810128d14365f889f461cb0dbc1f3b076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd2777689ca4f93b82f00d8278b39f48c9bf6e70a247b26e8afb9fd5b8b6eba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db02da3c0a5bb9094a407a8aff26de50dbab6a9680509369f0d525c5d5c0fb0`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61aef5c1fe81d531f91bc192ea42d504e352706c8b90b0cfb8ce203d5ca98d2c`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 16.2 MB (16217685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdfaf0ae1fc23eea7c32647baa8644fb04eeda2d2e8e286b0323e49fb95ebaf`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.2 MB (1232637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9070116486ef0774b8292c776e8bd3a85ad3b646d434a5349e9448fbf69045`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 45.4 MB (45444935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d830e705cba5e66dc44cfb50f4594d5afbe71752a6af39e5707f6f71eceb11`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 54.2 MB (54194497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a5fd760f07ec4b9d0ce49a9ef5735ceb24633d70cb00b82c9a074c15878445`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:4a5f5782b03df41f727cfa8a20dc62fa0c62ea3f405c95c8e62f9df9916f2ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a90fde34144a87df765cd1c4f285097fdaf36994bb81783929d9007934c88d`

```dockerfile
```

-	Layers:
	-	`sha256:9e4d4710711d98052fee578ae5d063b302289a64ee0a542744fb566ab87c50ed`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:900895a9ce14f2745463e31565daf58241f85224a39e83694faaa4eed3e646b4`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 36.6 KB (36648 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a18afc59c0c00370ab6c5e4089f6397c940f22b08df849e563fdb98908883d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76297af3077271bdb5633a6d307fdf1911e501faf1e0515df15f3f3c3f540610`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22c08a8ba5cd97c93f6fc732d93372e96277fa872c870a565990d644c5ed4a7`  
		Last Modified: Tue, 04 Aug 2026 02:47:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12c96af608d2b932c00bf4fc0b01ca70279531d6eba77db7bfd3241ed1c6f27`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 17.9 MB (17901684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95173a57579e6f5f9261fa4b7d8c300e395613b8986d58085f93b5781f9b047`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.2 MB (1220119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5554d3a73a26a1ea5e9d0cbc3fd218accc123f784ecac4052e9e2f491537a934`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 45.7 MB (45652593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41de592d26e1f3d6b38b525d7375f124eb9fa0af8b1a3972f0f622168ec076b`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112b95f191945d213ad28afab8403050738c581f112e887da9fbf262d25928b0`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 54.2 MB (54194476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e20c1550b040870d54ebe2bcd7688a4a5c75d8bd9aa8a306757a1e9d853b8d`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b5252f63f5b8cb2edbb6006920572fe1a288f7d58ec59bbcaff26d7127e20fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bbbead6ab255e487f42c2e9b13d26f81e70accafe8d62eb081cb10a1b69aa37`

```dockerfile
```

-	Layers:
	-	`sha256:bb7840fb2f338715492b5e90020366bc237185ebf766e8e4572e72db92288f34`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1197c080fa9a1c7687bfa78961001b25a149352a374427723b6a8012be2c9e6`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ddd1e5251cb2533418aaa77c1e4343d57f63e0b126ef87d5f981eb5c4f0999d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d00bc2085934e9a6954e6426a07d848a1a87341b4ad927150129c0fff7751d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 04:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:43 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6842793c17e5dcc736bba42cfaee73a7214bbfe5399b7a27eb45894ab42ce6`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 42.8 MB (42801374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5890280b18cacf005ea0174824298db74b3445781e2aef125409cd10a72ae3fb`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 54.2 MB (54194772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19920dbe0750f38b1de6f9b7491daf06d1a528c58cd7b491f3b0e2378e3cf1a`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:d7b3e212b280cef7a60f864fa1771efd384337ef4766700ff0a6b9f043b64d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40954275761db9b3fede42800ae827279ff560e700c3a65715ca8f3f56d40375`

```dockerfile
```

-	Layers:
	-	`sha256:bfb88fa6894102b5371868140caf1b37f62fd01472d8c4679e688eb5b20421ba`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0071a50e02eef12ac52ed4ab35e6b8682f021ae402a15c8d511675e00483ce18`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:7c104580b8c8eb7df7c6f393d6cee2b9ef7f9cfee5ef88854538a9e0891846b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141137021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee043ef829a7dd4a10aa1c52091bffd5790817b76d9342b3aab7dc04214c158e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2277d74a56064628da71612f40c180b39e9734a29874f980e8fdfe597fb30a50`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 41.4 MB (41354118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549acc0e26eb53bd952a2166370b64f3da6eb4593b488c6ab8f8495b86de70a6`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345ad78ba8c773dcfa9701154a238bc6588a7df9d3338f655391d6817a101c75`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 54.2 MB (54194517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4a73db32c45214fe626fdbc201a6ec8cdf8bcd11e724c2e4828808edfbca20`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:167eb673906f9f9caa639765bad821f1413740bc8c8d66746e8b5ca9a16b43ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5257ac66181992fc47641a917d2daa56b628f230636d5bb8ed84623115edec47`

```dockerfile
```

-	Layers:
	-	`sha256:2941637605f1ee7e4308d17e0197af133af51c333ec4158096c0bad36a3df59d`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61cf7a3f8b4afffee71f297624525a5f888d88ac3f832b0923caadfd6a78baca`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.11`

```console
$ docker pull cassandra@sha256:1757ddc6daec6d7b211016a4de447af9c0614c591c0bdc1052cdff7ee668b871
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
$ docker pull cassandra@sha256:217bd1a154a0140980e9d484df837b52675a44c85cb294c79db5cd9b7631efce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b55b4e449addbbd0220f11ad2fdc89ad17081de35dc8c89c2800b8604d95b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:46:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764677ec74f0d3be826a289f4ffce2e731c02e1f4618cf4782490b2f9d467571`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f813dab636be2001a785a7aa5107cf74a3c258af4fa6f63c4447f7a8a72f731`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 18.1 MB (18149456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a940bcf73ad0eebc6c73af5ef2fb8c5fdbd1cd9d833f782be395816b076df47c`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.3 MB (1266592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa21e85d4df2b39da2e1d36c9ade6d25f0f6f079d64de38edc2a13cfe5e1bd0c`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 47.3 MB (47336021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596bfcd41c60dd5ceb536517f0b7b394305ba2a1de76a00d1d96b9d22f3a96ca`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762d2eaaca42e0b44de5ee5a8d0a789c9563a0daa1ae8f9360c913e78ab7a0d5`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 54.2 MB (54194471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6b4bcad78cfed9d71ea8df0754475ad55a54c93426c899c4fe4d20ad965a8a`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:c4f09466a37663e99d07c5039cf227270b86d359ab6c136d1d7b76afcfb94ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec5b3d480cbee55eb7ccdfdf8c7f1e2a042f04a629610adbcf9f4da0ed2b89c`

```dockerfile
```

-	Layers:
	-	`sha256:d38da561d0b37ec91664f1bb443950e3a0d3e2254bd13723e00c745112fe3e91`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a530d3790f59b8b1dd4b18f51cfa340a0a79d44da0e01837703c257a1a737d9`  
		Last Modified: Tue, 04 Aug 2026 02:47:08 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51b0bb39588d21922677a51f7ab80ca810128d14365f889f461cb0dbc1f3b076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd2777689ca4f93b82f00d8278b39f48c9bf6e70a247b26e8afb9fd5b8b6eba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db02da3c0a5bb9094a407a8aff26de50dbab6a9680509369f0d525c5d5c0fb0`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61aef5c1fe81d531f91bc192ea42d504e352706c8b90b0cfb8ce203d5ca98d2c`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 16.2 MB (16217685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdfaf0ae1fc23eea7c32647baa8644fb04eeda2d2e8e286b0323e49fb95ebaf`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.2 MB (1232637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9070116486ef0774b8292c776e8bd3a85ad3b646d434a5349e9448fbf69045`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 45.4 MB (45444935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d830e705cba5e66dc44cfb50f4594d5afbe71752a6af39e5707f6f71eceb11`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 54.2 MB (54194497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a5fd760f07ec4b9d0ce49a9ef5735ceb24633d70cb00b82c9a074c15878445`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:4a5f5782b03df41f727cfa8a20dc62fa0c62ea3f405c95c8e62f9df9916f2ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a90fde34144a87df765cd1c4f285097fdaf36994bb81783929d9007934c88d`

```dockerfile
```

-	Layers:
	-	`sha256:9e4d4710711d98052fee578ae5d063b302289a64ee0a542744fb566ab87c50ed`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:900895a9ce14f2745463e31565daf58241f85224a39e83694faaa4eed3e646b4`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 36.6 KB (36648 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a18afc59c0c00370ab6c5e4089f6397c940f22b08df849e563fdb98908883d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76297af3077271bdb5633a6d307fdf1911e501faf1e0515df15f3f3c3f540610`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22c08a8ba5cd97c93f6fc732d93372e96277fa872c870a565990d644c5ed4a7`  
		Last Modified: Tue, 04 Aug 2026 02:47:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12c96af608d2b932c00bf4fc0b01ca70279531d6eba77db7bfd3241ed1c6f27`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 17.9 MB (17901684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95173a57579e6f5f9261fa4b7d8c300e395613b8986d58085f93b5781f9b047`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.2 MB (1220119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5554d3a73a26a1ea5e9d0cbc3fd218accc123f784ecac4052e9e2f491537a934`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 45.7 MB (45652593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41de592d26e1f3d6b38b525d7375f124eb9fa0af8b1a3972f0f622168ec076b`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112b95f191945d213ad28afab8403050738c581f112e887da9fbf262d25928b0`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 54.2 MB (54194476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e20c1550b040870d54ebe2bcd7688a4a5c75d8bd9aa8a306757a1e9d853b8d`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:b5252f63f5b8cb2edbb6006920572fe1a288f7d58ec59bbcaff26d7127e20fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bbbead6ab255e487f42c2e9b13d26f81e70accafe8d62eb081cb10a1b69aa37`

```dockerfile
```

-	Layers:
	-	`sha256:bb7840fb2f338715492b5e90020366bc237185ebf766e8e4572e72db92288f34`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1197c080fa9a1c7687bfa78961001b25a149352a374427723b6a8012be2c9e6`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ddd1e5251cb2533418aaa77c1e4343d57f63e0b126ef87d5f981eb5c4f0999d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d00bc2085934e9a6954e6426a07d848a1a87341b4ad927150129c0fff7751d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 04:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:43 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6842793c17e5dcc736bba42cfaee73a7214bbfe5399b7a27eb45894ab42ce6`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 42.8 MB (42801374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5890280b18cacf005ea0174824298db74b3445781e2aef125409cd10a72ae3fb`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 54.2 MB (54194772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19920dbe0750f38b1de6f9b7491daf06d1a528c58cd7b491f3b0e2378e3cf1a`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:d7b3e212b280cef7a60f864fa1771efd384337ef4766700ff0a6b9f043b64d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40954275761db9b3fede42800ae827279ff560e700c3a65715ca8f3f56d40375`

```dockerfile
```

-	Layers:
	-	`sha256:bfb88fa6894102b5371868140caf1b37f62fd01472d8c4679e688eb5b20421ba`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0071a50e02eef12ac52ed4ab35e6b8682f021ae402a15c8d511675e00483ce18`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; s390x

```console
$ docker pull cassandra@sha256:7c104580b8c8eb7df7c6f393d6cee2b9ef7f9cfee5ef88854538a9e0891846b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141137021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee043ef829a7dd4a10aa1c52091bffd5790817b76d9342b3aab7dc04214c158e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2277d74a56064628da71612f40c180b39e9734a29874f980e8fdfe597fb30a50`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 41.4 MB (41354118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549acc0e26eb53bd952a2166370b64f3da6eb4593b488c6ab8f8495b86de70a6`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345ad78ba8c773dcfa9701154a238bc6588a7df9d3338f655391d6817a101c75`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 54.2 MB (54194517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4a73db32c45214fe626fdbc201a6ec8cdf8bcd11e724c2e4828808edfbca20`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:167eb673906f9f9caa639765bad821f1413740bc8c8d66746e8b5ca9a16b43ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5257ac66181992fc47641a917d2daa56b628f230636d5bb8ed84623115edec47`

```dockerfile
```

-	Layers:
	-	`sha256:2941637605f1ee7e4308d17e0197af133af51c333ec4158096c0bad36a3df59d`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61cf7a3f8b4afffee71f297624525a5f888d88ac3f832b0923caadfd6a78baca`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.11-bookworm`

```console
$ docker pull cassandra@sha256:1757ddc6daec6d7b211016a4de447af9c0614c591c0bdc1052cdff7ee668b871
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
$ docker pull cassandra@sha256:217bd1a154a0140980e9d484df837b52675a44c85cb294c79db5cd9b7631efce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149181646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b55b4e449addbbd0220f11ad2fdc89ad17081de35dc8c89c2800b8604d95b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:20 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:38 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:38 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:38 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:46:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764677ec74f0d3be826a289f4ffce2e731c02e1f4618cf4782490b2f9d467571`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f813dab636be2001a785a7aa5107cf74a3c258af4fa6f63c4447f7a8a72f731`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 18.1 MB (18149456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a940bcf73ad0eebc6c73af5ef2fb8c5fdbd1cd9d833f782be395816b076df47c`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 1.3 MB (1266592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa21e85d4df2b39da2e1d36c9ade6d25f0f6f079d64de38edc2a13cfe5e1bd0c`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 47.3 MB (47336021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596bfcd41c60dd5ceb536517f0b7b394305ba2a1de76a00d1d96b9d22f3a96ca`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762d2eaaca42e0b44de5ee5a8d0a789c9563a0daa1ae8f9360c913e78ab7a0d5`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 54.2 MB (54194471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6b4bcad78cfed9d71ea8df0754475ad55a54c93426c899c4fe4d20ad965a8a`  
		Last Modified: Tue, 04 Aug 2026 02:47:11 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c4f09466a37663e99d07c5039cf227270b86d359ab6c136d1d7b76afcfb94ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec5b3d480cbee55eb7ccdfdf8c7f1e2a042f04a629610adbcf9f4da0ed2b89c`

```dockerfile
```

-	Layers:
	-	`sha256:d38da561d0b37ec91664f1bb443950e3a0d3e2254bd13723e00c745112fe3e91`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 3.3 MB (3281885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a530d3790f59b8b1dd4b18f51cfa340a0a79d44da0e01837703c257a1a737d9`  
		Last Modified: Tue, 04 Aug 2026 02:47:08 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:51b0bb39588d21922677a51f7ab80ca810128d14365f889f461cb0dbc1f3b076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141031996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd2777689ca4f93b82f00d8278b39f48c9bf6e70a247b26e8afb9fd5b8b6eba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db02da3c0a5bb9094a407a8aff26de50dbab6a9680509369f0d525c5d5c0fb0`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61aef5c1fe81d531f91bc192ea42d504e352706c8b90b0cfb8ce203d5ca98d2c`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 16.2 MB (16217685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdfaf0ae1fc23eea7c32647baa8644fb04eeda2d2e8e286b0323e49fb95ebaf`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 1.2 MB (1232637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9070116486ef0774b8292c776e8bd3a85ad3b646d434a5349e9448fbf69045`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 45.4 MB (45444935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d830e705cba5e66dc44cfb50f4594d5afbe71752a6af39e5707f6f71eceb11`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 54.2 MB (54194497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a5fd760f07ec4b9d0ce49a9ef5735ceb24633d70cb00b82c9a074c15878445`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:4a5f5782b03df41f727cfa8a20dc62fa0c62ea3f405c95c8e62f9df9916f2ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a90fde34144a87df765cd1c4f285097fdaf36994bb81783929d9007934c88d`

```dockerfile
```

-	Layers:
	-	`sha256:9e4d4710711d98052fee578ae5d063b302289a64ee0a542744fb566ab87c50ed`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 3.3 MB (3285615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:900895a9ce14f2745463e31565daf58241f85224a39e83694faaa4eed3e646b4`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 36.6 KB (36648 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:a18afc59c0c00370ab6c5e4089f6397c940f22b08df849e563fdb98908883d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147088588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76297af3077271bdb5633a6d307fdf1911e501faf1e0515df15f3f3c3f540610`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:29 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22c08a8ba5cd97c93f6fc732d93372e96277fa872c870a565990d644c5ed4a7`  
		Last Modified: Tue, 04 Aug 2026 02:47:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12c96af608d2b932c00bf4fc0b01ca70279531d6eba77db7bfd3241ed1c6f27`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 17.9 MB (17901684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95173a57579e6f5f9261fa4b7d8c300e395613b8986d58085f93b5781f9b047`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 1.2 MB (1220119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5554d3a73a26a1ea5e9d0cbc3fd218accc123f784ecac4052e9e2f491537a934`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 45.7 MB (45652593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41de592d26e1f3d6b38b525d7375f124eb9fa0af8b1a3972f0f622168ec076b`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112b95f191945d213ad28afab8403050738c581f112e887da9fbf262d25928b0`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 54.2 MB (54194476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e20c1550b040870d54ebe2bcd7688a4a5c75d8bd9aa8a306757a1e9d853b8d`  
		Last Modified: Tue, 04 Aug 2026 02:47:16 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b5252f63f5b8cb2edbb6006920572fe1a288f7d58ec59bbcaff26d7127e20fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bbbead6ab255e487f42c2e9b13d26f81e70accafe8d62eb081cb10a1b69aa37`

```dockerfile
```

-	Layers:
	-	`sha256:bb7840fb2f338715492b5e90020366bc237185ebf766e8e4572e72db92288f34`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 3.3 MB (3282244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1197c080fa9a1c7687bfa78961001b25a149352a374427723b6a8012be2c9e6`  
		Last Modified: Tue, 04 Aug 2026 02:47:14 GMT  
		Size: 36.7 KB (36693 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ddd1e5251cb2533418aaa77c1e4343d57f63e0b126ef87d5f981eb5c4f0999d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149797186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d00bc2085934e9a6954e6426a07d848a1a87341b4ad927150129c0fff7751d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 04:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:43 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6842793c17e5dcc736bba42cfaee73a7214bbfe5399b7a27eb45894ab42ce6`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 42.8 MB (42801374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5890280b18cacf005ea0174824298db74b3445781e2aef125409cd10a72ae3fb`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 54.2 MB (54194772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19920dbe0750f38b1de6f9b7491daf06d1a528c58cd7b491f3b0e2378e3cf1a`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:d7b3e212b280cef7a60f864fa1771efd384337ef4766700ff0a6b9f043b64d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40954275761db9b3fede42800ae827279ff560e700c3a65715ca8f3f56d40375`

```dockerfile
```

-	Layers:
	-	`sha256:bfb88fa6894102b5371868140caf1b37f62fd01472d8c4679e688eb5b20421ba`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3286145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0071a50e02eef12ac52ed4ab35e6b8682f021ae402a15c8d511675e00483ce18`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:7c104580b8c8eb7df7c6f393d6cee2b9ef7f9cfee5ef88854538a9e0891846b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141137021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee043ef829a7dd4a10aa1c52091bffd5790817b76d9342b3aab7dc04214c158e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_VERSION=4.1.11
# Tue, 04 Aug 2026 02:47:04 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Tue, 04 Aug 2026 02:47:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2277d74a56064628da71612f40c180b39e9734a29874f980e8fdfe597fb30a50`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 41.4 MB (41354118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549acc0e26eb53bd952a2166370b64f3da6eb4593b488c6ab8f8495b86de70a6`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345ad78ba8c773dcfa9701154a238bc6588a7df9d3338f655391d6817a101c75`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 54.2 MB (54194517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4a73db32c45214fe626fdbc201a6ec8cdf8bcd11e724c2e4828808edfbca20`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:167eb673906f9f9caa639765bad821f1413740bc8c8d66746e8b5ca9a16b43ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5257ac66181992fc47641a917d2daa56b628f230636d5bb8ed84623115edec47`

```dockerfile
```

-	Layers:
	-	`sha256:2941637605f1ee7e4308d17e0197af133af51c333ec4158096c0bad36a3df59d`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 3.3 MB (3278027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61cf7a3f8b4afffee71f297624525a5f888d88ac3f832b0923caadfd6a78baca`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5`

```console
$ docker pull cassandra@sha256:cce7e2b7f30692d24a347f44caee3755f39840c9d1b42182fc4057a2f64c3edf
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
$ docker pull cassandra@sha256:d31bbe405682ad83e5cb18a90ceb4d91a5109c6e582f436416831e74e387510b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6cbca95f2617e286aeb556694e58776547f4a2d0cfdf1be7dd0db1d53ed9a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a8d05752cf922cbab535d8e4c9d80498491e477be0a244c2a8d659c47e4d6f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a3330135aba3493c4ae5f2aec0184301d213e2107d8b0fa28ee28890b5541`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 18.1 MB (18149603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206511cd59bb94d761439fcb306495f9592cad432207fe9372fbcf0d6d443e6`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.3 MB (1266633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c780461f20bdd89da6e4d48c58c1113ada255bc4a5959728d38c64bde4b6e443`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 47.6 MB (47558123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0f0950fb7c81ab185033e987f0eb20a5850db47373573cf850dcb3316bed9b`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abacbfb3d173baaa87ec08b52acce8b9478c663f8fce4bdd296340da584f1a6`  
		Last Modified: Tue, 04 Aug 2026 02:46:59 GMT  
		Size: 73.9 MB (73919090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d43a34c8d6b47e11c0eabd619bef014441fe016ead06487f4be86cd32f2b96`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:5dbcdb2923c43991aa9d3a4751b1f46e28fdb357da7565cd16cab98ba7bfef4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72e92b965784a8abfd2ddcf6a319a6fa5f0a17c72949cf6809e047662230336`

```dockerfile
```

-	Layers:
	-	`sha256:ad66a5836b21223fddec04921e0c15c79b955e031ce1fa4eae023c22a2d7990e`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c71609e4ec78cab120803563ed4d7c851b825170d0d014e80711c8959459a55f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:182944cc778f2e85a8251fce9ed123f2a61ef1a762313477d803be603f49c32f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d08544dd859b071af1a63d0f95a8a60ad9dcde843547ce3be3805508c2db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:00 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce06b87bcf16fb09fa74d1824b9750497bf072873c3416b4b0a28471d1010999`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a555ac1faa01e1de175ced7ff70b95a81f90f125cf1ff536f08e546f3ed7a10e`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 16.2 MB (16217601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f904b81a156e48cd6f3e25db5fe8c43e43386f97bd8e5bbe36120a180ecd6340`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4b020088889847534c3991763349883fdd33bb2c330a70dff1e29e633c7dc`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 45.1 MB (45125983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32196f21af237c1e12114716e1d1947d49f100918a86988e0f8bbf0ee2208d1b`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 73.9 MB (73918978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4a6897470d01bc1c22e97860a6c04f81cc791d2f00f61782279dcec0a07a10`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:bc621bea00791a3dcec9a6cd53eea778f55fb771acc1cc5839f6e6f571498571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238f38b2dcae97bab387c01978e24ca997976d3a3ddb9cd65e28e600fd536b5d`

```dockerfile
```

-	Layers:
	-	`sha256:53f46b2d7fa08ce5a4317893fe18debc49725157274077cefe4c892162b69540`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8c1801dc3173e22b7a002485c4499ab3708a11ccd05280f3aae6955f56a53b`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:2b66a38e7e88c9f238381ddd015f9dd816b198ab07a00c0a0e7016f498e4de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94326eef3ffe986ed1efd056b05bbc532daead44e340fc4ea9e67820e41b28ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913ba335b01bc62b0dfa19a5bef3e2bef5f3ede8339b916dab287d58d681ec3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb7aad4d202f3a9c02f9324d2037cad939c9108097e93235a41adbced03d3d8`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 17.9 MB (17901664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f1787ae2f094fc7bfcc0d917ed5ae51721f86637f7ed4ee70e1dbaea960570`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8d785d5375b5b84e772dc14bb5e3af803026095ecd8b32e160bdff506d9f45`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 47.0 MB (47041131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4967e3bc1895ad0239a63b98466fcdf4b69156167908cf4e3000eccc6663d7c`  
		Last Modified: Tue, 04 Aug 2026 02:47:25 GMT  
		Size: 73.9 MB (73919075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3614ab9117a269695407ed5bca1b76c1a0134d998cc06f5688537b008c0484c2`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:5ba7afed518f446c009c3e0b2c3cc320003297b89f036b1d7856ba6eb0ce394f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a39b6c17f9caee48bf0f3b85cdb4fa28c4453346ae72d4c8d77e77c2dd409ff`

```dockerfile
```

-	Layers:
	-	`sha256:cdd676bf4744196d66968d3e932b4c618cfdb772055f058f5c520b8ffee8e9e2`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b203b17cd667063f4e4bae407f893b8179ab5d8af86ce84f5563e8cd7005b3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; ppc64le

```console
$ docker pull cassandra@sha256:92a76bd5a5fe7986f0c1079e4a71b2e052aeb56ffd93bf4309323259a3899119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27de2f4aa5530d3450c0240257b35664704a163d8ea390c448f9205d71c26314`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 04:41:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2291e51e2edf0323ef32b815baa092146be392a525164b25d2a0d389ff644ec2`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 47.5 MB (47480919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bda055c5e11e8e0d14c6eab87ba37a1ae730fa2d3a1c5071d19e945c242be7`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 73.9 MB (73919277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c627bfaab80b036ac5a55fcc5c7bd4b54056f5dd1d921520889ff0b4c69e05`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:1b4da05fe775f825d187f015cbb26d004b41cd1880d80d6b5ae58f522d11e699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:421d0d0c0e214921d5a1e86ac29d9e9b744d0e5010eadbd19b9070879250c3e7`

```dockerfile
```

-	Layers:
	-	`sha256:e071d1ec3abf07327050fb61cf960a03c29235587a0296758f35115efb89df4f`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4d570eaac106b336a178a79bf0921c88a94812816e07ca8a210fb03376bf0a`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; s390x

```console
$ docker pull cassandra@sha256:813ce9bcfd3a10a311abcf8948300f52097ae4491c4bd3b8561119b3034bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890a8fddba7f854592f528dddbdd8c8d59206f560e323d669e1431c0fe8d7bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a3964c357517985ea8e85fa4ab0f692004699c11120bd01ad8fe12ce345b44`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 44.5 MB (44528765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7900852591465b0bf6fbeb94ac51858995c92f25a473b86462d715aad85e8f68`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd5ed6326c6f4bd9fb627e44753cbc19493dae4f940d2fa18a1f527e24053d6`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 73.9 MB (73919111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0476790ef6f049e1dba8a1157d2be80caef2a49c13ed8de696e6becdf810df36`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fa674373fa7d4e4a57e82986f0d6520231689dc62aafb8b2f9e5b3f04cb34dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62fa934955f8e8c5cfe8513eaea7b2372f523fae1d751cfe0af5d3a06f31d73`

```dockerfile
```

-	Layers:
	-	`sha256:0ed5d803d7a3df1d504ef6063e9033152bd7a78b9611d4b1528f7dd3d36d4964`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db3de39000ab6f3c8d9bf417dbde0a1acd47a5110feaa74287d21f79de48cfb`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5-bookworm`

```console
$ docker pull cassandra@sha256:cce7e2b7f30692d24a347f44caee3755f39840c9d1b42182fc4057a2f64c3edf
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
$ docker pull cassandra@sha256:d31bbe405682ad83e5cb18a90ceb4d91a5109c6e582f436416831e74e387510b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6cbca95f2617e286aeb556694e58776547f4a2d0cfdf1be7dd0db1d53ed9a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a8d05752cf922cbab535d8e4c9d80498491e477be0a244c2a8d659c47e4d6f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a3330135aba3493c4ae5f2aec0184301d213e2107d8b0fa28ee28890b5541`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 18.1 MB (18149603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206511cd59bb94d761439fcb306495f9592cad432207fe9372fbcf0d6d443e6`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.3 MB (1266633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c780461f20bdd89da6e4d48c58c1113ada255bc4a5959728d38c64bde4b6e443`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 47.6 MB (47558123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0f0950fb7c81ab185033e987f0eb20a5850db47373573cf850dcb3316bed9b`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abacbfb3d173baaa87ec08b52acce8b9478c663f8fce4bdd296340da584f1a6`  
		Last Modified: Tue, 04 Aug 2026 02:46:59 GMT  
		Size: 73.9 MB (73919090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d43a34c8d6b47e11c0eabd619bef014441fe016ead06487f4be86cd32f2b96`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5dbcdb2923c43991aa9d3a4751b1f46e28fdb357da7565cd16cab98ba7bfef4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72e92b965784a8abfd2ddcf6a319a6fa5f0a17c72949cf6809e047662230336`

```dockerfile
```

-	Layers:
	-	`sha256:ad66a5836b21223fddec04921e0c15c79b955e031ce1fa4eae023c22a2d7990e`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c71609e4ec78cab120803563ed4d7c851b825170d0d014e80711c8959459a55f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:182944cc778f2e85a8251fce9ed123f2a61ef1a762313477d803be603f49c32f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d08544dd859b071af1a63d0f95a8a60ad9dcde843547ce3be3805508c2db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:00 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce06b87bcf16fb09fa74d1824b9750497bf072873c3416b4b0a28471d1010999`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a555ac1faa01e1de175ced7ff70b95a81f90f125cf1ff536f08e546f3ed7a10e`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 16.2 MB (16217601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f904b81a156e48cd6f3e25db5fe8c43e43386f97bd8e5bbe36120a180ecd6340`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4b020088889847534c3991763349883fdd33bb2c330a70dff1e29e633c7dc`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 45.1 MB (45125983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32196f21af237c1e12114716e1d1947d49f100918a86988e0f8bbf0ee2208d1b`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 73.9 MB (73918978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4a6897470d01bc1c22e97860a6c04f81cc791d2f00f61782279dcec0a07a10`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:bc621bea00791a3dcec9a6cd53eea778f55fb771acc1cc5839f6e6f571498571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238f38b2dcae97bab387c01978e24ca997976d3a3ddb9cd65e28e600fd536b5d`

```dockerfile
```

-	Layers:
	-	`sha256:53f46b2d7fa08ce5a4317893fe18debc49725157274077cefe4c892162b69540`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8c1801dc3173e22b7a002485c4499ab3708a11ccd05280f3aae6955f56a53b`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:2b66a38e7e88c9f238381ddd015f9dd816b198ab07a00c0a0e7016f498e4de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94326eef3ffe986ed1efd056b05bbc532daead44e340fc4ea9e67820e41b28ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913ba335b01bc62b0dfa19a5bef3e2bef5f3ede8339b916dab287d58d681ec3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb7aad4d202f3a9c02f9324d2037cad939c9108097e93235a41adbced03d3d8`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 17.9 MB (17901664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f1787ae2f094fc7bfcc0d917ed5ae51721f86637f7ed4ee70e1dbaea960570`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8d785d5375b5b84e772dc14bb5e3af803026095ecd8b32e160bdff506d9f45`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 47.0 MB (47041131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4967e3bc1895ad0239a63b98466fcdf4b69156167908cf4e3000eccc6663d7c`  
		Last Modified: Tue, 04 Aug 2026 02:47:25 GMT  
		Size: 73.9 MB (73919075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3614ab9117a269695407ed5bca1b76c1a0134d998cc06f5688537b008c0484c2`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5ba7afed518f446c009c3e0b2c3cc320003297b89f036b1d7856ba6eb0ce394f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a39b6c17f9caee48bf0f3b85cdb4fa28c4453346ae72d4c8d77e77c2dd409ff`

```dockerfile
```

-	Layers:
	-	`sha256:cdd676bf4744196d66968d3e932b4c618cfdb772055f058f5c520b8ffee8e9e2`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b203b17cd667063f4e4bae407f893b8179ab5d8af86ce84f5563e8cd7005b3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:92a76bd5a5fe7986f0c1079e4a71b2e052aeb56ffd93bf4309323259a3899119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27de2f4aa5530d3450c0240257b35664704a163d8ea390c448f9205d71c26314`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 04:41:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2291e51e2edf0323ef32b815baa092146be392a525164b25d2a0d389ff644ec2`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 47.5 MB (47480919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bda055c5e11e8e0d14c6eab87ba37a1ae730fa2d3a1c5071d19e945c242be7`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 73.9 MB (73919277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c627bfaab80b036ac5a55fcc5c7bd4b54056f5dd1d921520889ff0b4c69e05`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1b4da05fe775f825d187f015cbb26d004b41cd1880d80d6b5ae58f522d11e699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:421d0d0c0e214921d5a1e86ac29d9e9b744d0e5010eadbd19b9070879250c3e7`

```dockerfile
```

-	Layers:
	-	`sha256:e071d1ec3abf07327050fb61cf960a03c29235587a0296758f35115efb89df4f`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4d570eaac106b336a178a79bf0921c88a94812816e07ca8a210fb03376bf0a`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:813ce9bcfd3a10a311abcf8948300f52097ae4491c4bd3b8561119b3034bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890a8fddba7f854592f528dddbdd8c8d59206f560e323d669e1431c0fe8d7bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a3964c357517985ea8e85fa4ab0f692004699c11120bd01ad8fe12ce345b44`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 44.5 MB (44528765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7900852591465b0bf6fbeb94ac51858995c92f25a473b86462d715aad85e8f68`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd5ed6326c6f4bd9fb627e44753cbc19493dae4f940d2fa18a1f527e24053d6`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 73.9 MB (73919111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0476790ef6f049e1dba8a1157d2be80caef2a49c13ed8de696e6becdf810df36`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fa674373fa7d4e4a57e82986f0d6520231689dc62aafb8b2f9e5b3f04cb34dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62fa934955f8e8c5cfe8513eaea7b2372f523fae1d751cfe0af5d3a06f31d73`

```dockerfile
```

-	Layers:
	-	`sha256:0ed5d803d7a3df1d504ef6063e9033152bd7a78b9611d4b1528f7dd3d36d4964`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db3de39000ab6f3c8d9bf417dbde0a1acd47a5110feaa74287d21f79de48cfb`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0`

```console
$ docker pull cassandra@sha256:cce7e2b7f30692d24a347f44caee3755f39840c9d1b42182fc4057a2f64c3edf
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
$ docker pull cassandra@sha256:d31bbe405682ad83e5cb18a90ceb4d91a5109c6e582f436416831e74e387510b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6cbca95f2617e286aeb556694e58776547f4a2d0cfdf1be7dd0db1d53ed9a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a8d05752cf922cbab535d8e4c9d80498491e477be0a244c2a8d659c47e4d6f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a3330135aba3493c4ae5f2aec0184301d213e2107d8b0fa28ee28890b5541`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 18.1 MB (18149603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206511cd59bb94d761439fcb306495f9592cad432207fe9372fbcf0d6d443e6`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.3 MB (1266633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c780461f20bdd89da6e4d48c58c1113ada255bc4a5959728d38c64bde4b6e443`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 47.6 MB (47558123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0f0950fb7c81ab185033e987f0eb20a5850db47373573cf850dcb3316bed9b`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abacbfb3d173baaa87ec08b52acce8b9478c663f8fce4bdd296340da584f1a6`  
		Last Modified: Tue, 04 Aug 2026 02:46:59 GMT  
		Size: 73.9 MB (73919090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d43a34c8d6b47e11c0eabd619bef014441fe016ead06487f4be86cd32f2b96`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:5dbcdb2923c43991aa9d3a4751b1f46e28fdb357da7565cd16cab98ba7bfef4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72e92b965784a8abfd2ddcf6a319a6fa5f0a17c72949cf6809e047662230336`

```dockerfile
```

-	Layers:
	-	`sha256:ad66a5836b21223fddec04921e0c15c79b955e031ce1fa4eae023c22a2d7990e`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c71609e4ec78cab120803563ed4d7c851b825170d0d014e80711c8959459a55f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:182944cc778f2e85a8251fce9ed123f2a61ef1a762313477d803be603f49c32f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d08544dd859b071af1a63d0f95a8a60ad9dcde843547ce3be3805508c2db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:00 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce06b87bcf16fb09fa74d1824b9750497bf072873c3416b4b0a28471d1010999`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a555ac1faa01e1de175ced7ff70b95a81f90f125cf1ff536f08e546f3ed7a10e`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 16.2 MB (16217601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f904b81a156e48cd6f3e25db5fe8c43e43386f97bd8e5bbe36120a180ecd6340`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4b020088889847534c3991763349883fdd33bb2c330a70dff1e29e633c7dc`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 45.1 MB (45125983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32196f21af237c1e12114716e1d1947d49f100918a86988e0f8bbf0ee2208d1b`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 73.9 MB (73918978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4a6897470d01bc1c22e97860a6c04f81cc791d2f00f61782279dcec0a07a10`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:bc621bea00791a3dcec9a6cd53eea778f55fb771acc1cc5839f6e6f571498571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238f38b2dcae97bab387c01978e24ca997976d3a3ddb9cd65e28e600fd536b5d`

```dockerfile
```

-	Layers:
	-	`sha256:53f46b2d7fa08ce5a4317893fe18debc49725157274077cefe4c892162b69540`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8c1801dc3173e22b7a002485c4499ab3708a11ccd05280f3aae6955f56a53b`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:2b66a38e7e88c9f238381ddd015f9dd816b198ab07a00c0a0e7016f498e4de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94326eef3ffe986ed1efd056b05bbc532daead44e340fc4ea9e67820e41b28ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913ba335b01bc62b0dfa19a5bef3e2bef5f3ede8339b916dab287d58d681ec3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb7aad4d202f3a9c02f9324d2037cad939c9108097e93235a41adbced03d3d8`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 17.9 MB (17901664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f1787ae2f094fc7bfcc0d917ed5ae51721f86637f7ed4ee70e1dbaea960570`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8d785d5375b5b84e772dc14bb5e3af803026095ecd8b32e160bdff506d9f45`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 47.0 MB (47041131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4967e3bc1895ad0239a63b98466fcdf4b69156167908cf4e3000eccc6663d7c`  
		Last Modified: Tue, 04 Aug 2026 02:47:25 GMT  
		Size: 73.9 MB (73919075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3614ab9117a269695407ed5bca1b76c1a0134d998cc06f5688537b008c0484c2`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:5ba7afed518f446c009c3e0b2c3cc320003297b89f036b1d7856ba6eb0ce394f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a39b6c17f9caee48bf0f3b85cdb4fa28c4453346ae72d4c8d77e77c2dd409ff`

```dockerfile
```

-	Layers:
	-	`sha256:cdd676bf4744196d66968d3e932b4c618cfdb772055f058f5c520b8ffee8e9e2`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b203b17cd667063f4e4bae407f893b8179ab5d8af86ce84f5563e8cd7005b3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:92a76bd5a5fe7986f0c1079e4a71b2e052aeb56ffd93bf4309323259a3899119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27de2f4aa5530d3450c0240257b35664704a163d8ea390c448f9205d71c26314`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 04:41:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2291e51e2edf0323ef32b815baa092146be392a525164b25d2a0d389ff644ec2`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 47.5 MB (47480919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bda055c5e11e8e0d14c6eab87ba37a1ae730fa2d3a1c5071d19e945c242be7`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 73.9 MB (73919277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c627bfaab80b036ac5a55fcc5c7bd4b54056f5dd1d921520889ff0b4c69e05`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:1b4da05fe775f825d187f015cbb26d004b41cd1880d80d6b5ae58f522d11e699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:421d0d0c0e214921d5a1e86ac29d9e9b744d0e5010eadbd19b9070879250c3e7`

```dockerfile
```

-	Layers:
	-	`sha256:e071d1ec3abf07327050fb61cf960a03c29235587a0296758f35115efb89df4f`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4d570eaac106b336a178a79bf0921c88a94812816e07ca8a210fb03376bf0a`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; s390x

```console
$ docker pull cassandra@sha256:813ce9bcfd3a10a311abcf8948300f52097ae4491c4bd3b8561119b3034bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890a8fddba7f854592f528dddbdd8c8d59206f560e323d669e1431c0fe8d7bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a3964c357517985ea8e85fa4ab0f692004699c11120bd01ad8fe12ce345b44`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 44.5 MB (44528765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7900852591465b0bf6fbeb94ac51858995c92f25a473b86462d715aad85e8f68`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd5ed6326c6f4bd9fb627e44753cbc19493dae4f940d2fa18a1f527e24053d6`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 73.9 MB (73919111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0476790ef6f049e1dba8a1157d2be80caef2a49c13ed8de696e6becdf810df36`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fa674373fa7d4e4a57e82986f0d6520231689dc62aafb8b2f9e5b3f04cb34dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62fa934955f8e8c5cfe8513eaea7b2372f523fae1d751cfe0af5d3a06f31d73`

```dockerfile
```

-	Layers:
	-	`sha256:0ed5d803d7a3df1d504ef6063e9033152bd7a78b9611d4b1528f7dd3d36d4964`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db3de39000ab6f3c8d9bf417dbde0a1acd47a5110feaa74287d21f79de48cfb`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0-bookworm`

```console
$ docker pull cassandra@sha256:cce7e2b7f30692d24a347f44caee3755f39840c9d1b42182fc4057a2f64c3edf
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
$ docker pull cassandra@sha256:d31bbe405682ad83e5cb18a90ceb4d91a5109c6e582f436416831e74e387510b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6cbca95f2617e286aeb556694e58776547f4a2d0cfdf1be7dd0db1d53ed9a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a8d05752cf922cbab535d8e4c9d80498491e477be0a244c2a8d659c47e4d6f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a3330135aba3493c4ae5f2aec0184301d213e2107d8b0fa28ee28890b5541`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 18.1 MB (18149603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206511cd59bb94d761439fcb306495f9592cad432207fe9372fbcf0d6d443e6`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.3 MB (1266633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c780461f20bdd89da6e4d48c58c1113ada255bc4a5959728d38c64bde4b6e443`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 47.6 MB (47558123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0f0950fb7c81ab185033e987f0eb20a5850db47373573cf850dcb3316bed9b`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abacbfb3d173baaa87ec08b52acce8b9478c663f8fce4bdd296340da584f1a6`  
		Last Modified: Tue, 04 Aug 2026 02:46:59 GMT  
		Size: 73.9 MB (73919090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d43a34c8d6b47e11c0eabd619bef014441fe016ead06487f4be86cd32f2b96`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5dbcdb2923c43991aa9d3a4751b1f46e28fdb357da7565cd16cab98ba7bfef4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72e92b965784a8abfd2ddcf6a319a6fa5f0a17c72949cf6809e047662230336`

```dockerfile
```

-	Layers:
	-	`sha256:ad66a5836b21223fddec04921e0c15c79b955e031ce1fa4eae023c22a2d7990e`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c71609e4ec78cab120803563ed4d7c851b825170d0d014e80711c8959459a55f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:182944cc778f2e85a8251fce9ed123f2a61ef1a762313477d803be603f49c32f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d08544dd859b071af1a63d0f95a8a60ad9dcde843547ce3be3805508c2db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:00 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce06b87bcf16fb09fa74d1824b9750497bf072873c3416b4b0a28471d1010999`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a555ac1faa01e1de175ced7ff70b95a81f90f125cf1ff536f08e546f3ed7a10e`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 16.2 MB (16217601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f904b81a156e48cd6f3e25db5fe8c43e43386f97bd8e5bbe36120a180ecd6340`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4b020088889847534c3991763349883fdd33bb2c330a70dff1e29e633c7dc`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 45.1 MB (45125983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32196f21af237c1e12114716e1d1947d49f100918a86988e0f8bbf0ee2208d1b`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 73.9 MB (73918978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4a6897470d01bc1c22e97860a6c04f81cc791d2f00f61782279dcec0a07a10`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:bc621bea00791a3dcec9a6cd53eea778f55fb771acc1cc5839f6e6f571498571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238f38b2dcae97bab387c01978e24ca997976d3a3ddb9cd65e28e600fd536b5d`

```dockerfile
```

-	Layers:
	-	`sha256:53f46b2d7fa08ce5a4317893fe18debc49725157274077cefe4c892162b69540`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8c1801dc3173e22b7a002485c4499ab3708a11ccd05280f3aae6955f56a53b`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:2b66a38e7e88c9f238381ddd015f9dd816b198ab07a00c0a0e7016f498e4de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94326eef3ffe986ed1efd056b05bbc532daead44e340fc4ea9e67820e41b28ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913ba335b01bc62b0dfa19a5bef3e2bef5f3ede8339b916dab287d58d681ec3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb7aad4d202f3a9c02f9324d2037cad939c9108097e93235a41adbced03d3d8`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 17.9 MB (17901664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f1787ae2f094fc7bfcc0d917ed5ae51721f86637f7ed4ee70e1dbaea960570`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8d785d5375b5b84e772dc14bb5e3af803026095ecd8b32e160bdff506d9f45`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 47.0 MB (47041131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4967e3bc1895ad0239a63b98466fcdf4b69156167908cf4e3000eccc6663d7c`  
		Last Modified: Tue, 04 Aug 2026 02:47:25 GMT  
		Size: 73.9 MB (73919075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3614ab9117a269695407ed5bca1b76c1a0134d998cc06f5688537b008c0484c2`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5ba7afed518f446c009c3e0b2c3cc320003297b89f036b1d7856ba6eb0ce394f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a39b6c17f9caee48bf0f3b85cdb4fa28c4453346ae72d4c8d77e77c2dd409ff`

```dockerfile
```

-	Layers:
	-	`sha256:cdd676bf4744196d66968d3e932b4c618cfdb772055f058f5c520b8ffee8e9e2`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b203b17cd667063f4e4bae407f893b8179ab5d8af86ce84f5563e8cd7005b3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:92a76bd5a5fe7986f0c1079e4a71b2e052aeb56ffd93bf4309323259a3899119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27de2f4aa5530d3450c0240257b35664704a163d8ea390c448f9205d71c26314`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 04:41:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2291e51e2edf0323ef32b815baa092146be392a525164b25d2a0d389ff644ec2`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 47.5 MB (47480919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bda055c5e11e8e0d14c6eab87ba37a1ae730fa2d3a1c5071d19e945c242be7`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 73.9 MB (73919277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c627bfaab80b036ac5a55fcc5c7bd4b54056f5dd1d921520889ff0b4c69e05`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1b4da05fe775f825d187f015cbb26d004b41cd1880d80d6b5ae58f522d11e699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:421d0d0c0e214921d5a1e86ac29d9e9b744d0e5010eadbd19b9070879250c3e7`

```dockerfile
```

-	Layers:
	-	`sha256:e071d1ec3abf07327050fb61cf960a03c29235587a0296758f35115efb89df4f`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4d570eaac106b336a178a79bf0921c88a94812816e07ca8a210fb03376bf0a`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:813ce9bcfd3a10a311abcf8948300f52097ae4491c4bd3b8561119b3034bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890a8fddba7f854592f528dddbdd8c8d59206f560e323d669e1431c0fe8d7bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a3964c357517985ea8e85fa4ab0f692004699c11120bd01ad8fe12ce345b44`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 44.5 MB (44528765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7900852591465b0bf6fbeb94ac51858995c92f25a473b86462d715aad85e8f68`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd5ed6326c6f4bd9fb627e44753cbc19493dae4f940d2fa18a1f527e24053d6`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 73.9 MB (73919111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0476790ef6f049e1dba8a1157d2be80caef2a49c13ed8de696e6becdf810df36`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fa674373fa7d4e4a57e82986f0d6520231689dc62aafb8b2f9e5b3f04cb34dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62fa934955f8e8c5cfe8513eaea7b2372f523fae1d751cfe0af5d3a06f31d73`

```dockerfile
```

-	Layers:
	-	`sha256:0ed5d803d7a3df1d504ef6063e9033152bd7a78b9611d4b1528f7dd3d36d4964`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db3de39000ab6f3c8d9bf417dbde0a1acd47a5110feaa74287d21f79de48cfb`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.8`

```console
$ docker pull cassandra@sha256:cce7e2b7f30692d24a347f44caee3755f39840c9d1b42182fc4057a2f64c3edf
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
$ docker pull cassandra@sha256:d31bbe405682ad83e5cb18a90ceb4d91a5109c6e582f436416831e74e387510b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6cbca95f2617e286aeb556694e58776547f4a2d0cfdf1be7dd0db1d53ed9a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a8d05752cf922cbab535d8e4c9d80498491e477be0a244c2a8d659c47e4d6f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a3330135aba3493c4ae5f2aec0184301d213e2107d8b0fa28ee28890b5541`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 18.1 MB (18149603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206511cd59bb94d761439fcb306495f9592cad432207fe9372fbcf0d6d443e6`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.3 MB (1266633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c780461f20bdd89da6e4d48c58c1113ada255bc4a5959728d38c64bde4b6e443`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 47.6 MB (47558123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0f0950fb7c81ab185033e987f0eb20a5850db47373573cf850dcb3316bed9b`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abacbfb3d173baaa87ec08b52acce8b9478c663f8fce4bdd296340da584f1a6`  
		Last Modified: Tue, 04 Aug 2026 02:46:59 GMT  
		Size: 73.9 MB (73919090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d43a34c8d6b47e11c0eabd619bef014441fe016ead06487f4be86cd32f2b96`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:5dbcdb2923c43991aa9d3a4751b1f46e28fdb357da7565cd16cab98ba7bfef4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72e92b965784a8abfd2ddcf6a319a6fa5f0a17c72949cf6809e047662230336`

```dockerfile
```

-	Layers:
	-	`sha256:ad66a5836b21223fddec04921e0c15c79b955e031ce1fa4eae023c22a2d7990e`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c71609e4ec78cab120803563ed4d7c851b825170d0d014e80711c8959459a55f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:182944cc778f2e85a8251fce9ed123f2a61ef1a762313477d803be603f49c32f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d08544dd859b071af1a63d0f95a8a60ad9dcde843547ce3be3805508c2db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:00 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce06b87bcf16fb09fa74d1824b9750497bf072873c3416b4b0a28471d1010999`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a555ac1faa01e1de175ced7ff70b95a81f90f125cf1ff536f08e546f3ed7a10e`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 16.2 MB (16217601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f904b81a156e48cd6f3e25db5fe8c43e43386f97bd8e5bbe36120a180ecd6340`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4b020088889847534c3991763349883fdd33bb2c330a70dff1e29e633c7dc`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 45.1 MB (45125983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32196f21af237c1e12114716e1d1947d49f100918a86988e0f8bbf0ee2208d1b`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 73.9 MB (73918978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4a6897470d01bc1c22e97860a6c04f81cc791d2f00f61782279dcec0a07a10`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:bc621bea00791a3dcec9a6cd53eea778f55fb771acc1cc5839f6e6f571498571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238f38b2dcae97bab387c01978e24ca997976d3a3ddb9cd65e28e600fd536b5d`

```dockerfile
```

-	Layers:
	-	`sha256:53f46b2d7fa08ce5a4317893fe18debc49725157274077cefe4c892162b69540`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8c1801dc3173e22b7a002485c4499ab3708a11ccd05280f3aae6955f56a53b`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:2b66a38e7e88c9f238381ddd015f9dd816b198ab07a00c0a0e7016f498e4de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94326eef3ffe986ed1efd056b05bbc532daead44e340fc4ea9e67820e41b28ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913ba335b01bc62b0dfa19a5bef3e2bef5f3ede8339b916dab287d58d681ec3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb7aad4d202f3a9c02f9324d2037cad939c9108097e93235a41adbced03d3d8`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 17.9 MB (17901664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f1787ae2f094fc7bfcc0d917ed5ae51721f86637f7ed4ee70e1dbaea960570`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8d785d5375b5b84e772dc14bb5e3af803026095ecd8b32e160bdff506d9f45`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 47.0 MB (47041131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4967e3bc1895ad0239a63b98466fcdf4b69156167908cf4e3000eccc6663d7c`  
		Last Modified: Tue, 04 Aug 2026 02:47:25 GMT  
		Size: 73.9 MB (73919075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3614ab9117a269695407ed5bca1b76c1a0134d998cc06f5688537b008c0484c2`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:5ba7afed518f446c009c3e0b2c3cc320003297b89f036b1d7856ba6eb0ce394f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a39b6c17f9caee48bf0f3b85cdb4fa28c4453346ae72d4c8d77e77c2dd409ff`

```dockerfile
```

-	Layers:
	-	`sha256:cdd676bf4744196d66968d3e932b4c618cfdb772055f058f5c520b8ffee8e9e2`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b203b17cd667063f4e4bae407f893b8179ab5d8af86ce84f5563e8cd7005b3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; ppc64le

```console
$ docker pull cassandra@sha256:92a76bd5a5fe7986f0c1079e4a71b2e052aeb56ffd93bf4309323259a3899119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27de2f4aa5530d3450c0240257b35664704a163d8ea390c448f9205d71c26314`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 04:41:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2291e51e2edf0323ef32b815baa092146be392a525164b25d2a0d389ff644ec2`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 47.5 MB (47480919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bda055c5e11e8e0d14c6eab87ba37a1ae730fa2d3a1c5071d19e945c242be7`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 73.9 MB (73919277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c627bfaab80b036ac5a55fcc5c7bd4b54056f5dd1d921520889ff0b4c69e05`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:1b4da05fe775f825d187f015cbb26d004b41cd1880d80d6b5ae58f522d11e699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:421d0d0c0e214921d5a1e86ac29d9e9b744d0e5010eadbd19b9070879250c3e7`

```dockerfile
```

-	Layers:
	-	`sha256:e071d1ec3abf07327050fb61cf960a03c29235587a0296758f35115efb89df4f`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4d570eaac106b336a178a79bf0921c88a94812816e07ca8a210fb03376bf0a`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; s390x

```console
$ docker pull cassandra@sha256:813ce9bcfd3a10a311abcf8948300f52097ae4491c4bd3b8561119b3034bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890a8fddba7f854592f528dddbdd8c8d59206f560e323d669e1431c0fe8d7bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a3964c357517985ea8e85fa4ab0f692004699c11120bd01ad8fe12ce345b44`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 44.5 MB (44528765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7900852591465b0bf6fbeb94ac51858995c92f25a473b86462d715aad85e8f68`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd5ed6326c6f4bd9fb627e44753cbc19493dae4f940d2fa18a1f527e24053d6`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 73.9 MB (73919111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0476790ef6f049e1dba8a1157d2be80caef2a49c13ed8de696e6becdf810df36`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fa674373fa7d4e4a57e82986f0d6520231689dc62aafb8b2f9e5b3f04cb34dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62fa934955f8e8c5cfe8513eaea7b2372f523fae1d751cfe0af5d3a06f31d73`

```dockerfile
```

-	Layers:
	-	`sha256:0ed5d803d7a3df1d504ef6063e9033152bd7a78b9611d4b1528f7dd3d36d4964`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db3de39000ab6f3c8d9bf417dbde0a1acd47a5110feaa74287d21f79de48cfb`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.8-bookworm`

```console
$ docker pull cassandra@sha256:cce7e2b7f30692d24a347f44caee3755f39840c9d1b42182fc4057a2f64c3edf
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
$ docker pull cassandra@sha256:d31bbe405682ad83e5cb18a90ceb4d91a5109c6e582f436416831e74e387510b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6cbca95f2617e286aeb556694e58776547f4a2d0cfdf1be7dd0db1d53ed9a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a8d05752cf922cbab535d8e4c9d80498491e477be0a244c2a8d659c47e4d6f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a3330135aba3493c4ae5f2aec0184301d213e2107d8b0fa28ee28890b5541`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 18.1 MB (18149603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206511cd59bb94d761439fcb306495f9592cad432207fe9372fbcf0d6d443e6`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.3 MB (1266633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c780461f20bdd89da6e4d48c58c1113ada255bc4a5959728d38c64bde4b6e443`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 47.6 MB (47558123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0f0950fb7c81ab185033e987f0eb20a5850db47373573cf850dcb3316bed9b`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abacbfb3d173baaa87ec08b52acce8b9478c663f8fce4bdd296340da584f1a6`  
		Last Modified: Tue, 04 Aug 2026 02:46:59 GMT  
		Size: 73.9 MB (73919090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d43a34c8d6b47e11c0eabd619bef014441fe016ead06487f4be86cd32f2b96`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5dbcdb2923c43991aa9d3a4751b1f46e28fdb357da7565cd16cab98ba7bfef4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72e92b965784a8abfd2ddcf6a319a6fa5f0a17c72949cf6809e047662230336`

```dockerfile
```

-	Layers:
	-	`sha256:ad66a5836b21223fddec04921e0c15c79b955e031ce1fa4eae023c22a2d7990e`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c71609e4ec78cab120803563ed4d7c851b825170d0d014e80711c8959459a55f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:182944cc778f2e85a8251fce9ed123f2a61ef1a762313477d803be603f49c32f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d08544dd859b071af1a63d0f95a8a60ad9dcde843547ce3be3805508c2db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:00 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce06b87bcf16fb09fa74d1824b9750497bf072873c3416b4b0a28471d1010999`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a555ac1faa01e1de175ced7ff70b95a81f90f125cf1ff536f08e546f3ed7a10e`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 16.2 MB (16217601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f904b81a156e48cd6f3e25db5fe8c43e43386f97bd8e5bbe36120a180ecd6340`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4b020088889847534c3991763349883fdd33bb2c330a70dff1e29e633c7dc`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 45.1 MB (45125983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32196f21af237c1e12114716e1d1947d49f100918a86988e0f8bbf0ee2208d1b`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 73.9 MB (73918978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4a6897470d01bc1c22e97860a6c04f81cc791d2f00f61782279dcec0a07a10`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:bc621bea00791a3dcec9a6cd53eea778f55fb771acc1cc5839f6e6f571498571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238f38b2dcae97bab387c01978e24ca997976d3a3ddb9cd65e28e600fd536b5d`

```dockerfile
```

-	Layers:
	-	`sha256:53f46b2d7fa08ce5a4317893fe18debc49725157274077cefe4c892162b69540`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8c1801dc3173e22b7a002485c4499ab3708a11ccd05280f3aae6955f56a53b`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:2b66a38e7e88c9f238381ddd015f9dd816b198ab07a00c0a0e7016f498e4de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94326eef3ffe986ed1efd056b05bbc532daead44e340fc4ea9e67820e41b28ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913ba335b01bc62b0dfa19a5bef3e2bef5f3ede8339b916dab287d58d681ec3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb7aad4d202f3a9c02f9324d2037cad939c9108097e93235a41adbced03d3d8`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 17.9 MB (17901664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f1787ae2f094fc7bfcc0d917ed5ae51721f86637f7ed4ee70e1dbaea960570`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8d785d5375b5b84e772dc14bb5e3af803026095ecd8b32e160bdff506d9f45`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 47.0 MB (47041131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4967e3bc1895ad0239a63b98466fcdf4b69156167908cf4e3000eccc6663d7c`  
		Last Modified: Tue, 04 Aug 2026 02:47:25 GMT  
		Size: 73.9 MB (73919075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3614ab9117a269695407ed5bca1b76c1a0134d998cc06f5688537b008c0484c2`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5ba7afed518f446c009c3e0b2c3cc320003297b89f036b1d7856ba6eb0ce394f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a39b6c17f9caee48bf0f3b85cdb4fa28c4453346ae72d4c8d77e77c2dd409ff`

```dockerfile
```

-	Layers:
	-	`sha256:cdd676bf4744196d66968d3e932b4c618cfdb772055f058f5c520b8ffee8e9e2`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b203b17cd667063f4e4bae407f893b8179ab5d8af86ce84f5563e8cd7005b3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:92a76bd5a5fe7986f0c1079e4a71b2e052aeb56ffd93bf4309323259a3899119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27de2f4aa5530d3450c0240257b35664704a163d8ea390c448f9205d71c26314`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 04:41:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2291e51e2edf0323ef32b815baa092146be392a525164b25d2a0d389ff644ec2`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 47.5 MB (47480919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bda055c5e11e8e0d14c6eab87ba37a1ae730fa2d3a1c5071d19e945c242be7`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 73.9 MB (73919277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c627bfaab80b036ac5a55fcc5c7bd4b54056f5dd1d921520889ff0b4c69e05`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1b4da05fe775f825d187f015cbb26d004b41cd1880d80d6b5ae58f522d11e699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:421d0d0c0e214921d5a1e86ac29d9e9b744d0e5010eadbd19b9070879250c3e7`

```dockerfile
```

-	Layers:
	-	`sha256:e071d1ec3abf07327050fb61cf960a03c29235587a0296758f35115efb89df4f`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4d570eaac106b336a178a79bf0921c88a94812816e07ca8a210fb03376bf0a`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:813ce9bcfd3a10a311abcf8948300f52097ae4491c4bd3b8561119b3034bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890a8fddba7f854592f528dddbdd8c8d59206f560e323d669e1431c0fe8d7bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a3964c357517985ea8e85fa4ab0f692004699c11120bd01ad8fe12ce345b44`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 44.5 MB (44528765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7900852591465b0bf6fbeb94ac51858995c92f25a473b86462d715aad85e8f68`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd5ed6326c6f4bd9fb627e44753cbc19493dae4f940d2fa18a1f527e24053d6`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 73.9 MB (73919111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0476790ef6f049e1dba8a1157d2be80caef2a49c13ed8de696e6becdf810df36`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fa674373fa7d4e4a57e82986f0d6520231689dc62aafb8b2f9e5b3f04cb34dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62fa934955f8e8c5cfe8513eaea7b2372f523fae1d751cfe0af5d3a06f31d73`

```dockerfile
```

-	Layers:
	-	`sha256:0ed5d803d7a3df1d504ef6063e9033152bd7a78b9611d4b1528f7dd3d36d4964`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db3de39000ab6f3c8d9bf417dbde0a1acd47a5110feaa74287d21f79de48cfb`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:bookworm`

```console
$ docker pull cassandra@sha256:cce7e2b7f30692d24a347f44caee3755f39840c9d1b42182fc4057a2f64c3edf
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
$ docker pull cassandra@sha256:d31bbe405682ad83e5cb18a90ceb4d91a5109c6e582f436416831e74e387510b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6cbca95f2617e286aeb556694e58776547f4a2d0cfdf1be7dd0db1d53ed9a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a8d05752cf922cbab535d8e4c9d80498491e477be0a244c2a8d659c47e4d6f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a3330135aba3493c4ae5f2aec0184301d213e2107d8b0fa28ee28890b5541`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 18.1 MB (18149603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206511cd59bb94d761439fcb306495f9592cad432207fe9372fbcf0d6d443e6`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.3 MB (1266633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c780461f20bdd89da6e4d48c58c1113ada255bc4a5959728d38c64bde4b6e443`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 47.6 MB (47558123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0f0950fb7c81ab185033e987f0eb20a5850db47373573cf850dcb3316bed9b`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abacbfb3d173baaa87ec08b52acce8b9478c663f8fce4bdd296340da584f1a6`  
		Last Modified: Tue, 04 Aug 2026 02:46:59 GMT  
		Size: 73.9 MB (73919090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d43a34c8d6b47e11c0eabd619bef014441fe016ead06487f4be86cd32f2b96`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5dbcdb2923c43991aa9d3a4751b1f46e28fdb357da7565cd16cab98ba7bfef4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72e92b965784a8abfd2ddcf6a319a6fa5f0a17c72949cf6809e047662230336`

```dockerfile
```

-	Layers:
	-	`sha256:ad66a5836b21223fddec04921e0c15c79b955e031ce1fa4eae023c22a2d7990e`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c71609e4ec78cab120803563ed4d7c851b825170d0d014e80711c8959459a55f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:182944cc778f2e85a8251fce9ed123f2a61ef1a762313477d803be603f49c32f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d08544dd859b071af1a63d0f95a8a60ad9dcde843547ce3be3805508c2db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:00 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce06b87bcf16fb09fa74d1824b9750497bf072873c3416b4b0a28471d1010999`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a555ac1faa01e1de175ced7ff70b95a81f90f125cf1ff536f08e546f3ed7a10e`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 16.2 MB (16217601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f904b81a156e48cd6f3e25db5fe8c43e43386f97bd8e5bbe36120a180ecd6340`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4b020088889847534c3991763349883fdd33bb2c330a70dff1e29e633c7dc`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 45.1 MB (45125983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32196f21af237c1e12114716e1d1947d49f100918a86988e0f8bbf0ee2208d1b`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 73.9 MB (73918978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4a6897470d01bc1c22e97860a6c04f81cc791d2f00f61782279dcec0a07a10`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:bc621bea00791a3dcec9a6cd53eea778f55fb771acc1cc5839f6e6f571498571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238f38b2dcae97bab387c01978e24ca997976d3a3ddb9cd65e28e600fd536b5d`

```dockerfile
```

-	Layers:
	-	`sha256:53f46b2d7fa08ce5a4317893fe18debc49725157274077cefe4c892162b69540`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8c1801dc3173e22b7a002485c4499ab3708a11ccd05280f3aae6955f56a53b`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:2b66a38e7e88c9f238381ddd015f9dd816b198ab07a00c0a0e7016f498e4de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94326eef3ffe986ed1efd056b05bbc532daead44e340fc4ea9e67820e41b28ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913ba335b01bc62b0dfa19a5bef3e2bef5f3ede8339b916dab287d58d681ec3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb7aad4d202f3a9c02f9324d2037cad939c9108097e93235a41adbced03d3d8`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 17.9 MB (17901664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f1787ae2f094fc7bfcc0d917ed5ae51721f86637f7ed4ee70e1dbaea960570`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8d785d5375b5b84e772dc14bb5e3af803026095ecd8b32e160bdff506d9f45`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 47.0 MB (47041131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4967e3bc1895ad0239a63b98466fcdf4b69156167908cf4e3000eccc6663d7c`  
		Last Modified: Tue, 04 Aug 2026 02:47:25 GMT  
		Size: 73.9 MB (73919075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3614ab9117a269695407ed5bca1b76c1a0134d998cc06f5688537b008c0484c2`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:5ba7afed518f446c009c3e0b2c3cc320003297b89f036b1d7856ba6eb0ce394f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a39b6c17f9caee48bf0f3b85cdb4fa28c4453346ae72d4c8d77e77c2dd409ff`

```dockerfile
```

-	Layers:
	-	`sha256:cdd676bf4744196d66968d3e932b4c618cfdb772055f058f5c520b8ffee8e9e2`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b203b17cd667063f4e4bae407f893b8179ab5d8af86ce84f5563e8cd7005b3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:92a76bd5a5fe7986f0c1079e4a71b2e052aeb56ffd93bf4309323259a3899119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27de2f4aa5530d3450c0240257b35664704a163d8ea390c448f9205d71c26314`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 04:41:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2291e51e2edf0323ef32b815baa092146be392a525164b25d2a0d389ff644ec2`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 47.5 MB (47480919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bda055c5e11e8e0d14c6eab87ba37a1ae730fa2d3a1c5071d19e945c242be7`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 73.9 MB (73919277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c627bfaab80b036ac5a55fcc5c7bd4b54056f5dd1d921520889ff0b4c69e05`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:1b4da05fe775f825d187f015cbb26d004b41cd1880d80d6b5ae58f522d11e699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:421d0d0c0e214921d5a1e86ac29d9e9b744d0e5010eadbd19b9070879250c3e7`

```dockerfile
```

-	Layers:
	-	`sha256:e071d1ec3abf07327050fb61cf960a03c29235587a0296758f35115efb89df4f`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4d570eaac106b336a178a79bf0921c88a94812816e07ca8a210fb03376bf0a`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:813ce9bcfd3a10a311abcf8948300f52097ae4491c4bd3b8561119b3034bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890a8fddba7f854592f528dddbdd8c8d59206f560e323d669e1431c0fe8d7bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a3964c357517985ea8e85fa4ab0f692004699c11120bd01ad8fe12ce345b44`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 44.5 MB (44528765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7900852591465b0bf6fbeb94ac51858995c92f25a473b86462d715aad85e8f68`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd5ed6326c6f4bd9fb627e44753cbc19493dae4f940d2fa18a1f527e24053d6`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 73.9 MB (73919111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0476790ef6f049e1dba8a1157d2be80caef2a49c13ed8de696e6becdf810df36`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fa674373fa7d4e4a57e82986f0d6520231689dc62aafb8b2f9e5b3f04cb34dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62fa934955f8e8c5cfe8513eaea7b2372f523fae1d751cfe0af5d3a06f31d73`

```dockerfile
```

-	Layers:
	-	`sha256:0ed5d803d7a3df1d504ef6063e9033152bd7a78b9611d4b1528f7dd3d36d4964`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db3de39000ab6f3c8d9bf417dbde0a1acd47a5110feaa74287d21f79de48cfb`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:cce7e2b7f30692d24a347f44caee3755f39840c9d1b42182fc4057a2f64c3edf
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
$ docker pull cassandra@sha256:d31bbe405682ad83e5cb18a90ceb4d91a5109c6e582f436416831e74e387510b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169128554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6cbca95f2617e286aeb556694e58776547f4a2d0cfdf1be7dd0db1d53ed9a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:09 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:26 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:46:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a8d05752cf922cbab535d8e4c9d80498491e477be0a244c2a8d659c47e4d6f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a3330135aba3493c4ae5f2aec0184301d213e2107d8b0fa28ee28890b5541`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 18.1 MB (18149603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8206511cd59bb94d761439fcb306495f9592cad432207fe9372fbcf0d6d443e6`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 1.3 MB (1266633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c780461f20bdd89da6e4d48c58c1113ada255bc4a5959728d38c64bde4b6e443`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 47.6 MB (47558123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0f0950fb7c81ab185033e987f0eb20a5850db47373573cf850dcb3316bed9b`  
		Last Modified: Tue, 04 Aug 2026 02:46:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abacbfb3d173baaa87ec08b52acce8b9478c663f8fce4bdd296340da584f1a6`  
		Last Modified: Tue, 04 Aug 2026 02:46:59 GMT  
		Size: 73.9 MB (73919090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d43a34c8d6b47e11c0eabd619bef014441fe016ead06487f4be86cd32f2b96`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:5dbcdb2923c43991aa9d3a4751b1f46e28fdb357da7565cd16cab98ba7bfef4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72e92b965784a8abfd2ddcf6a319a6fa5f0a17c72949cf6809e047662230336`

```dockerfile
```

-	Layers:
	-	`sha256:ad66a5836b21223fddec04921e0c15c79b955e031ce1fa4eae023c22a2d7990e`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 3.3 MB (3306862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c71609e4ec78cab120803563ed4d7c851b825170d0d014e80711c8959459a55f`  
		Last Modified: Tue, 04 Aug 2026 02:46:56 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:182944cc778f2e85a8251fce9ed123f2a61ef1a762313477d803be603f49c32f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160437406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d08544dd859b071af1a63d0f95a8a60ad9dcde843547ce3be3805508c2db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:21:00 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:21:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:21:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:21:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:21:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:21:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:21:23 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:21:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:21:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:21:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce06b87bcf16fb09fa74d1824b9750497bf072873c3416b4b0a28471d1010999`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a555ac1faa01e1de175ced7ff70b95a81f90f125cf1ff536f08e546f3ed7a10e`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 16.2 MB (16217601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f904b81a156e48cd6f3e25db5fe8c43e43386f97bd8e5bbe36120a180ecd6340`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 1.2 MB (1232604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4b020088889847534c3991763349883fdd33bb2c330a70dff1e29e633c7dc`  
		Last Modified: Tue, 04 Aug 2026 02:21:58 GMT  
		Size: 45.1 MB (45125983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0e72cb901ae6922c66c663f4eb8b0fb4c8c43f1aa78125670de2319c02a0ff`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32196f21af237c1e12114716e1d1947d49f100918a86988e0f8bbf0ee2208d1b`  
		Last Modified: Tue, 04 Aug 2026 02:22:00 GMT  
		Size: 73.9 MB (73918978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4a6897470d01bc1c22e97860a6c04f81cc791d2f00f61782279dcec0a07a10`  
		Last Modified: Tue, 04 Aug 2026 02:21:59 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:bc621bea00791a3dcec9a6cd53eea778f55fb771acc1cc5839f6e6f571498571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238f38b2dcae97bab387c01978e24ca997976d3a3ddb9cd65e28e600fd536b5d`

```dockerfile
```

-	Layers:
	-	`sha256:53f46b2d7fa08ce5a4317893fe18debc49725157274077cefe4c892162b69540`  
		Last Modified: Tue, 04 Aug 2026 02:21:57 GMT  
		Size: 3.3 MB (3309345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8c1801dc3173e22b7a002485c4499ab3708a11ccd05280f3aae6955f56a53b`  
		Last Modified: Tue, 04 Aug 2026 02:21:56 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:2b66a38e7e88c9f238381ddd015f9dd816b198ab07a00c0a0e7016f498e4de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168201711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94326eef3ffe986ed1efd056b05bbc532daead44e340fc4ea9e67820e41b28ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:46:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:46:53 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:53 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:46:53 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913ba335b01bc62b0dfa19a5bef3e2bef5f3ede8339b916dab287d58d681ec3b`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb7aad4d202f3a9c02f9324d2037cad939c9108097e93235a41adbced03d3d8`  
		Last Modified: Tue, 04 Aug 2026 02:47:23 GMT  
		Size: 17.9 MB (17901664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f1787ae2f094fc7bfcc0d917ed5ae51721f86637f7ed4ee70e1dbaea960570`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8d785d5375b5b84e772dc14bb5e3af803026095ecd8b32e160bdff506d9f45`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 47.0 MB (47041131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1cb9dad7bd4a846911aeefd11bf598691570634a77e2007f3b826569bbc7c3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4967e3bc1895ad0239a63b98466fcdf4b69156167908cf4e3000eccc6663d7c`  
		Last Modified: Tue, 04 Aug 2026 02:47:25 GMT  
		Size: 73.9 MB (73919075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3614ab9117a269695407ed5bca1b76c1a0134d998cc06f5688537b008c0484c2`  
		Last Modified: Tue, 04 Aug 2026 02:47:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:5ba7afed518f446c009c3e0b2c3cc320003297b89f036b1d7856ba6eb0ce394f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a39b6c17f9caee48bf0f3b85cdb4fa28c4453346ae72d4c8d77e77c2dd409ff`

```dockerfile
```

-	Layers:
	-	`sha256:cdd676bf4744196d66968d3e932b4c618cfdb772055f058f5c520b8ffee8e9e2`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 3.3 MB (3306627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b203b17cd667063f4e4bae407f893b8179ab5d8af86ce84f5563e8cd7005b3`  
		Last Modified: Tue, 04 Aug 2026 02:47:22 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:92a76bd5a5fe7986f0c1079e4a71b2e052aeb56ffd93bf4309323259a3899119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174201235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27de2f4aa5530d3450c0240257b35664704a163d8ea390c448f9205d71c26314`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:40:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 04:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 04:41:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 04:41:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:41:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 04:41:09 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:41:09 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 04:41:09 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 04:41:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 04:41:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 04:41:44 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 04:41:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a3ede14b733e21daf7c638d8a1f40fcecc2fca9eb6e36bbbf6a80bc1b7ec8`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010768372183045554c48557250f2a25c36c3a24c5bd8a366f5770db12c81e0`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 19.5 MB (19496553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d83942035378c8775e3608d24b33c0eb0479f18e119a94dbec66fc7fb3e362`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 1.2 MB (1225612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2291e51e2edf0323ef32b815baa092146be392a525164b25d2a0d389ff644ec2`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 47.5 MB (47480919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a652c36c527507b73a786866b9e8ec6fcd952115df88e25bbd5dace479e483a`  
		Last Modified: Tue, 04 Aug 2026 04:42:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bda055c5e11e8e0d14c6eab87ba37a1ae730fa2d3a1c5071d19e945c242be7`  
		Last Modified: Tue, 04 Aug 2026 04:42:25 GMT  
		Size: 73.9 MB (73919277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c627bfaab80b036ac5a55fcc5c7bd4b54056f5dd1d921520889ff0b4c69e05`  
		Last Modified: Tue, 04 Aug 2026 04:42:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:1b4da05fe775f825d187f015cbb26d004b41cd1880d80d6b5ae58f522d11e699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:421d0d0c0e214921d5a1e86ac29d9e9b744d0e5010eadbd19b9070879250c3e7`

```dockerfile
```

-	Layers:
	-	`sha256:e071d1ec3abf07327050fb61cf960a03c29235587a0296758f35115efb89df4f`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 3.3 MB (3311128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4d570eaac106b336a178a79bf0921c88a94812816e07ca8a210fb03376bf0a`  
		Last Modified: Tue, 04 Aug 2026 04:42:22 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; s390x

```console
$ docker pull cassandra@sha256:813ce9bcfd3a10a311abcf8948300f52097ae4491c4bd3b8561119b3034bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164036263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890a8fddba7f854592f528dddbdd8c8d59206f560e323d669e1431c0fe8d7bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 04 Aug 2026 02:46:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:47:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
RUN java --version # buildkit
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 04 Aug 2026 02:47:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_VERSION=5.0.8
# Tue, 04 Aug 2026 02:47:02 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Tue, 04 Aug 2026 02:47:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 04 Aug 2026 02:47:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:47:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:47:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 04 Aug 2026 02:47:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112d27eaa5ed725f41a9380c26197ed73efad6b28bdef7a933c7da2240ce7cc`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304fb621d0ba6d448237569f8d0c5d26d0c469c5b1f9c58eb69c19cb184585ab`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 17.5 MB (17457171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaf9bbc4102d61e0770653eb9086b5ad32ab28c105135a1cfde8983a2406fb2`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 1.2 MB (1240488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a3964c357517985ea8e85fa4ab0f692004699c11120bd01ad8fe12ce345b44`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 44.5 MB (44528765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7900852591465b0bf6fbeb94ac51858995c92f25a473b86462d715aad85e8f68`  
		Last Modified: Tue, 04 Aug 2026 02:47:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd5ed6326c6f4bd9fb627e44753cbc19493dae4f940d2fa18a1f527e24053d6`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 73.9 MB (73919111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0476790ef6f049e1dba8a1157d2be80caef2a49c13ed8de696e6becdf810df36`  
		Last Modified: Tue, 04 Aug 2026 02:47:42 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fa674373fa7d4e4a57e82986f0d6520231689dc62aafb8b2f9e5b3f04cb34dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62fa934955f8e8c5cfe8513eaea7b2372f523fae1d751cfe0af5d3a06f31d73`

```dockerfile
```

-	Layers:
	-	`sha256:0ed5d803d7a3df1d504ef6063e9033152bd7a78b9611d4b1528f7dd3d36d4964`  
		Last Modified: Tue, 04 Aug 2026 02:47:40 GMT  
		Size: 3.3 MB (3302998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db3de39000ab6f3c8d9bf417dbde0a1acd47a5110feaa74287d21f79de48cfb`  
		Last Modified: Tue, 04 Aug 2026 02:47:39 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json
