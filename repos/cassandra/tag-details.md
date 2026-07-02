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
$ docker pull cassandra@sha256:fe1432f22bd222c3c425eb834ca157b476c73c9255d7fac34135163c797e7c1a
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
$ docker pull cassandra@sha256:e832f9289003f5e8faa9664cd7a219e1dd982cb8224baf95fc07adf2bb3dbb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149186530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e8c26034b3b4580ca4e97126f4f47cad90297b63e42ebef308b51170f1c6ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc818705cb48c85fcfc5f58b68e6712fb45f0bd652bc0fb9e9caefdce3cab24b`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3095a30aab9577c1abdeeabf15f8e1ec7941eb46e8f35eeeb94386d8b2b2dbf9`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 18.1 MB (18149659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9492471474d1ea5abdb08b88efb7723a05237178f8d2bb7c2cb32e9ca1e38c64`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.3 MB (1266610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8dda93fac9ee7317e377ac03b48961c28a95ddede791e6acd11badc42bd525`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 47.3 MB (47335673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc30fe62629bd57e3c30cc742318e93ce2b683db4ab86216d4beee4b1a7b515`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b3390cb29f5f0c292e2f8d7ec45226016ccb4d9da4a1ecdfe360a3ad800bfe`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 54.2 MB (54194487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cbd14d2e3df47bf8e869864ee40481ffc315219cb273719f30eed149f202f1`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:e7ea1538c52446049729fc67ffb475af9f53d0617fe740b14f9cbc069790c707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffdae39104c16879c5385ca28964292006cd4c3619f053270c0b098e043021d`

```dockerfile
```

-	Layers:
	-	`sha256:9a29e95021cd0ae7f3706feabad1eb2b7967dc5b1e321a3bf2689e8836496363`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 3.3 MB (3281849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7332b896fe40cdfbd95d4662ce6bce2225cbc360c03a24cd09151127c824273e`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:f21d770aecfa6f5b3c8be17145c3a53f25077af065712a7141d694f0d97b26d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141034501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81827ce9a09225b707046e00b02b52f5defa1683bd2d7fbbf9c13f3e17c0251`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:21:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:37 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1992ddd9cecefb103dedc6943668c7896d069b1da691bd24c0d9499f84d6da64`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 16.2 MB (16215493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f497b43d4d9797794c477df93dff8ded523e68c48ad5da1a5f587bc48e0ad711`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 1.2 MB (1232626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26beaa7f32c29bdf4fd372d5d50d6b8fbec26e9928d106853d6661fbb219b1f7`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 45.4 MB (45444866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4df68972b7230dc9b5752d1608fbfc9ecb9603276033b1e60f4aa46afcd46fb`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e246a3d532fab7f64251b325f763542998fb804327572d81b3e3837d041b1c3c`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 54.2 MB (54194523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d676ab9f1d84692d7cf4639d492326d67ea5a624319c7538d5e4786ffaef94`  
		Last Modified: Thu, 02 Jul 2026 05:21:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:366a8fa27a33c1c04b6bf2fd422d68a41aad1e68ce8af88ddbb1a2230caed111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a64a53e25ee2e4a04b01db751fe6d106440ce69c6f22c1c671f679cf5290396`

```dockerfile
```

-	Layers:
	-	`sha256:887006bbd7cadd358bc4f06136e963f723c55e7dea1d06736643325c84a6df37`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 3.3 MB (3285579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d644df31e81881d320df05cba5b8e5119fdea0f40aff1cb9f5c603cb384486`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:906dc9e999575acf32fc1d956c522ee3e541590fd6fded2d5d11534793effff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147094852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3997cfabe51f8d2c5a9b69931ae3056192c70eb2ff55960c271832707a9d0259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8319495ac1a0bba49cb001b24c9c44c25aefcca00352b13a1f5a9db3b1f75d09`  
		Last Modified: Thu, 02 Jul 2026 05:48:08 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31353453b892bd0a7dea03a82ab54b679ab5dabaac383a4ae57f644d3be11f01`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 17.9 MB (17902769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a9ad3c61ebf957ed2ad4f8994419f510d1a0336dd5e6dc6d43c0fe5abf821b`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 1.2 MB (1220122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff7f9ab080f047d5241f5ff265dfc6a614f25bf43b7ffaeeb93fe78de27ba62`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 45.7 MB (45652591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c5467e46f961867143cb1639133830157984122b5763fca5f3939412cc6646`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7095c21630c30f2c66f5417e073d64facf272053592d6e6fa51602d1a90a6ff3`  
		Last Modified: Thu, 02 Jul 2026 05:48:12 GMT  
		Size: 54.2 MB (54194489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5917dd93fcc224c95114e7c6568464ed8e901598fed68ba864cee0287da4b8e8`  
		Last Modified: Thu, 02 Jul 2026 05:48:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:fd8a7c6ebbd16cec0a182f24fa3f8b252e1bf75d7ca873967ee1bc18c6be0e0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb058dfcdbf13027759a876c6c4fb68b477ce22d15941db3e12e6e0f148af4c`

```dockerfile
```

-	Layers:
	-	`sha256:0ddb14f54e607f119642fcaa847d5cd138b1dab9760a9837ec771d6fedabaf42`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 3.3 MB (3282208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:655f86d795cc546a46f0f95358565ba6510a979ede27195d0803afaeeaaf1912`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; ppc64le

```console
$ docker pull cassandra@sha256:aff4bf242d6434346abd237b33c47cfa6ec7ab67202dab2afa6b3e635e66af0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149800665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a302d301cf843afad9d583946d38c0302a3c1bf17a28099b6b219dd3e8d377a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:32 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77198c253d4c148b166734846543fc957fd19355df52ac280685965c66817c6a`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 42.8 MB (42801432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad55a20b6d01696682716e13bc39378c581bc52d352d98bd68abe062ac7d51f`  
		Last Modified: Thu, 02 Jul 2026 06:43:05 GMT  
		Size: 54.2 MB (54194692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145a4f8433b94a02daf6d8ab81024b0d0a3448137558fddd545f182b2275a45d`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:a4032e72042180f795f844b2e7590605a923ba6543d91f28c1a2a9db0a17826f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2e87b093b7ce27f8621356efb2a415361efae40d01c56b7cf1cbec33c770c2`

```dockerfile
```

-	Layers:
	-	`sha256:a0be300ffc1f4ca356da3db7aa6e73a620ffacd310a16c560d619ba9d1e8b6b6`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 3.3 MB (3286109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:946dc549862fb6a82308b1574aaa7900f1bc208b4b8c277668d46ccbd63c5ed1`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; s390x

```console
$ docker pull cassandra@sha256:4b93fbd7f961713557c7137fc63ef5458ce9c88db99bde95c8c6f978d4c299f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141132457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844a96ac66c3306056c6377e8cf2cc78d9a0ec6b1541b337a61d42e520e32d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:43:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec24292cfc63c191c074f0879242af1035f16ff768232df3b4fc4ee34d3341`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af14c2d2d7fed2592fa08706d44e87ae0f3bc7f968b6a120ae9b60fd9adef55`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 17.4 MB (17447314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42c0dc9912ab01d3963ba508f23646cbe6149abca6d3206f89397836e34777`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.2 MB (1240479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce07530254bcee4345537e3bfdd6259d5ff94bcea43c187fc2cfe2ff8fa046a`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 41.4 MB (41354123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441f02d15edebd2debfa805633bbbbf7c499223c00fb100d18514989571cc67`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8e2a442dec4b0216e6273489b6877cd8e9729f8b28b3685bd7c6a87bc6a99c`  
		Last Modified: Thu, 02 Jul 2026 05:43:39 GMT  
		Size: 54.2 MB (54194496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67cd7b14502a8875e72f20110bcaea3d94aba93f8274cdc13c0caba0b06aea5a`  
		Last Modified: Thu, 02 Jul 2026 05:43:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:257b002389fb9120132626bfa0b5fe1f2518f29642d836a891563da91b9bda5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a89dbb42654f12d4c3184218afc1fd758aa2040f437495e95f4347b0c76e69`

```dockerfile
```

-	Layers:
	-	`sha256:6ffa5e0711f525a12d7249f498db90067ec9f7f9e5cf0f0b69c415a708efa0d9`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 3.3 MB (3277991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a3c471a227f7c5af0d106bf1f6fe4c15caaf188a3803f5b4db2252ce2cc7b43`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 36.5 KB (36478 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4-bookworm`

```console
$ docker pull cassandra@sha256:fe1432f22bd222c3c425eb834ca157b476c73c9255d7fac34135163c797e7c1a
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
$ docker pull cassandra@sha256:e832f9289003f5e8faa9664cd7a219e1dd982cb8224baf95fc07adf2bb3dbb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149186530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e8c26034b3b4580ca4e97126f4f47cad90297b63e42ebef308b51170f1c6ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc818705cb48c85fcfc5f58b68e6712fb45f0bd652bc0fb9e9caefdce3cab24b`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3095a30aab9577c1abdeeabf15f8e1ec7941eb46e8f35eeeb94386d8b2b2dbf9`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 18.1 MB (18149659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9492471474d1ea5abdb08b88efb7723a05237178f8d2bb7c2cb32e9ca1e38c64`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.3 MB (1266610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8dda93fac9ee7317e377ac03b48961c28a95ddede791e6acd11badc42bd525`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 47.3 MB (47335673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc30fe62629bd57e3c30cc742318e93ce2b683db4ab86216d4beee4b1a7b515`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b3390cb29f5f0c292e2f8d7ec45226016ccb4d9da4a1ecdfe360a3ad800bfe`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 54.2 MB (54194487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cbd14d2e3df47bf8e869864ee40481ffc315219cb273719f30eed149f202f1`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:e7ea1538c52446049729fc67ffb475af9f53d0617fe740b14f9cbc069790c707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffdae39104c16879c5385ca28964292006cd4c3619f053270c0b098e043021d`

```dockerfile
```

-	Layers:
	-	`sha256:9a29e95021cd0ae7f3706feabad1eb2b7967dc5b1e321a3bf2689e8836496363`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 3.3 MB (3281849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7332b896fe40cdfbd95d4662ce6bce2225cbc360c03a24cd09151127c824273e`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:f21d770aecfa6f5b3c8be17145c3a53f25077af065712a7141d694f0d97b26d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141034501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81827ce9a09225b707046e00b02b52f5defa1683bd2d7fbbf9c13f3e17c0251`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:21:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:37 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1992ddd9cecefb103dedc6943668c7896d069b1da691bd24c0d9499f84d6da64`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 16.2 MB (16215493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f497b43d4d9797794c477df93dff8ded523e68c48ad5da1a5f587bc48e0ad711`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 1.2 MB (1232626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26beaa7f32c29bdf4fd372d5d50d6b8fbec26e9928d106853d6661fbb219b1f7`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 45.4 MB (45444866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4df68972b7230dc9b5752d1608fbfc9ecb9603276033b1e60f4aa46afcd46fb`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e246a3d532fab7f64251b325f763542998fb804327572d81b3e3837d041b1c3c`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 54.2 MB (54194523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d676ab9f1d84692d7cf4639d492326d67ea5a624319c7538d5e4786ffaef94`  
		Last Modified: Thu, 02 Jul 2026 05:21:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:366a8fa27a33c1c04b6bf2fd422d68a41aad1e68ce8af88ddbb1a2230caed111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a64a53e25ee2e4a04b01db751fe6d106440ce69c6f22c1c671f679cf5290396`

```dockerfile
```

-	Layers:
	-	`sha256:887006bbd7cadd358bc4f06136e963f723c55e7dea1d06736643325c84a6df37`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 3.3 MB (3285579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d644df31e81881d320df05cba5b8e5119fdea0f40aff1cb9f5c603cb384486`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:906dc9e999575acf32fc1d956c522ee3e541590fd6fded2d5d11534793effff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147094852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3997cfabe51f8d2c5a9b69931ae3056192c70eb2ff55960c271832707a9d0259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8319495ac1a0bba49cb001b24c9c44c25aefcca00352b13a1f5a9db3b1f75d09`  
		Last Modified: Thu, 02 Jul 2026 05:48:08 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31353453b892bd0a7dea03a82ab54b679ab5dabaac383a4ae57f644d3be11f01`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 17.9 MB (17902769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a9ad3c61ebf957ed2ad4f8994419f510d1a0336dd5e6dc6d43c0fe5abf821b`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 1.2 MB (1220122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff7f9ab080f047d5241f5ff265dfc6a614f25bf43b7ffaeeb93fe78de27ba62`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 45.7 MB (45652591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c5467e46f961867143cb1639133830157984122b5763fca5f3939412cc6646`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7095c21630c30f2c66f5417e073d64facf272053592d6e6fa51602d1a90a6ff3`  
		Last Modified: Thu, 02 Jul 2026 05:48:12 GMT  
		Size: 54.2 MB (54194489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5917dd93fcc224c95114e7c6568464ed8e901598fed68ba864cee0287da4b8e8`  
		Last Modified: Thu, 02 Jul 2026 05:48:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:fd8a7c6ebbd16cec0a182f24fa3f8b252e1bf75d7ca873967ee1bc18c6be0e0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb058dfcdbf13027759a876c6c4fb68b477ce22d15941db3e12e6e0f148af4c`

```dockerfile
```

-	Layers:
	-	`sha256:0ddb14f54e607f119642fcaa847d5cd138b1dab9760a9837ec771d6fedabaf42`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 3.3 MB (3282208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:655f86d795cc546a46f0f95358565ba6510a979ede27195d0803afaeeaaf1912`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:aff4bf242d6434346abd237b33c47cfa6ec7ab67202dab2afa6b3e635e66af0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149800665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a302d301cf843afad9d583946d38c0302a3c1bf17a28099b6b219dd3e8d377a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:32 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77198c253d4c148b166734846543fc957fd19355df52ac280685965c66817c6a`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 42.8 MB (42801432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad55a20b6d01696682716e13bc39378c581bc52d352d98bd68abe062ac7d51f`  
		Last Modified: Thu, 02 Jul 2026 06:43:05 GMT  
		Size: 54.2 MB (54194692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145a4f8433b94a02daf6d8ab81024b0d0a3448137558fddd545f182b2275a45d`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:a4032e72042180f795f844b2e7590605a923ba6543d91f28c1a2a9db0a17826f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2e87b093b7ce27f8621356efb2a415361efae40d01c56b7cf1cbec33c770c2`

```dockerfile
```

-	Layers:
	-	`sha256:a0be300ffc1f4ca356da3db7aa6e73a620ffacd310a16c560d619ba9d1e8b6b6`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 3.3 MB (3286109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:946dc549862fb6a82308b1574aaa7900f1bc208b4b8c277668d46ccbd63c5ed1`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:4b93fbd7f961713557c7137fc63ef5458ce9c88db99bde95c8c6f978d4c299f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141132457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844a96ac66c3306056c6377e8cf2cc78d9a0ec6b1541b337a61d42e520e32d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:43:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec24292cfc63c191c074f0879242af1035f16ff768232df3b4fc4ee34d3341`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af14c2d2d7fed2592fa08706d44e87ae0f3bc7f968b6a120ae9b60fd9adef55`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 17.4 MB (17447314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42c0dc9912ab01d3963ba508f23646cbe6149abca6d3206f89397836e34777`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.2 MB (1240479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce07530254bcee4345537e3bfdd6259d5ff94bcea43c187fc2cfe2ff8fa046a`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 41.4 MB (41354123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441f02d15edebd2debfa805633bbbbf7c499223c00fb100d18514989571cc67`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8e2a442dec4b0216e6273489b6877cd8e9729f8b28b3685bd7c6a87bc6a99c`  
		Last Modified: Thu, 02 Jul 2026 05:43:39 GMT  
		Size: 54.2 MB (54194496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67cd7b14502a8875e72f20110bcaea3d94aba93f8274cdc13c0caba0b06aea5a`  
		Last Modified: Thu, 02 Jul 2026 05:43:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:257b002389fb9120132626bfa0b5fe1f2518f29642d836a891563da91b9bda5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a89dbb42654f12d4c3184218afc1fd758aa2040f437495e95f4347b0c76e69`

```dockerfile
```

-	Layers:
	-	`sha256:6ffa5e0711f525a12d7249f498db90067ec9f7f9e5cf0f0b69c415a708efa0d9`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 3.3 MB (3277991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a3c471a227f7c5af0d106bf1f6fe4c15caaf188a3803f5b4db2252ce2cc7b43`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 36.5 KB (36478 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0`

```console
$ docker pull cassandra@sha256:372a6c5731cd4538f30a721fca27ef97568d0d29494226779a64bc0c71530ace
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
$ docker pull cassandra@sha256:22f616e8cea201c2de31e5cfb09a003bf23c47e65f3f13858a3543d308e4e7cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147071094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298a6e96ffdec72799ed72fbc914eff8c82d3f4ff5925aa680dba43bbc3ef4cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:59 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:16 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:47:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:35 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f035a37e11c9e01647281c968a3d767ce768a5ea4da9ef2dcef628f5c83e0e`  
		Last Modified: Thu, 02 Jul 2026 05:47:48 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e010b0d7b42b9f6c1145ddf323d1de985fefab3b763bb2fd297d27978c90f654`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 18.1 MB (18149649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76302f652016a084f1d01841d3934a92e5155fd80c4c88a9c7d772f997f72a9`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 1.3 MB (1266606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a2a93f9a0b13194019e4d714423c072dd46b361f431c75be12ed85b65cd67e`  
		Last Modified: Thu, 02 Jul 2026 05:47:50 GMT  
		Size: 47.3 MB (47335707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdeb1d4dd04512ebc5b08a8df0bc816d4462468b728769eb2617965425ccd8a`  
		Last Modified: Thu, 02 Jul 2026 05:47:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a406c7a5d7df27fe01664865fdd5035c9dac7bb1d6d5bda335fa38442d5188`  
		Last Modified: Thu, 02 Jul 2026 05:47:52 GMT  
		Size: 52.1 MB (52079033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637ab5557ee337afd17941c9dac3143659537aeb9c8babd053b8a8a022f088e6`  
		Last Modified: Thu, 02 Jul 2026 05:47:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:e03e479920a7a441c0decf74b1b2e83d7c6c76ffc3e913e44bf5a91a8a9f642a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735332d579ed145c6a0ccf94ab4087790f18e773e61dc7cf80b82197b01fcedc`

```dockerfile
```

-	Layers:
	-	`sha256:b9207f9d95ea7c1cda2e122fa10646516833a07f84d9f9ac5c60d89ae7ef7ce3`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 3.3 MB (3274782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c17fc0322950674fe57ef4ae1a11f5b012f5665209bc328cb420973151e84aad`  
		Last Modified: Thu, 02 Jul 2026 05:47:48 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:72803fc123a7d8b489bc369e2a678fe4ad0641e9c6c79ca3979575c97debd13d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138919431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79e307f48f8120e192813145edaa138f6e014d6211fb8af1b957122582f7976`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:16 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:21:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:36 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78daaeffcb425a7e5e05672e951184f8ac26d0d2f64a8eb6afc79c34c822cb5`  
		Last Modified: Thu, 02 Jul 2026 05:21:48 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05b8221d9d5777d488bfab0960c5795d95bd841fd463319e91aa240f6869fea`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 16.2 MB (16215843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d87c7f076420f9f79b82e5526bba03ffd89a165317dd4f358766517834261d`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.2 MB (1232636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26beaa7f32c29bdf4fd372d5d50d6b8fbec26e9928d106853d6661fbb219b1f7`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 45.4 MB (45444866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4df68972b7230dc9b5752d1608fbfc9ecb9603276033b1e60f4aa46afcd46fb`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3bad87a45be63fb9a6b09f6fc2a56041a6de6edbc91d488850836c009ff859`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 52.1 MB (52079094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625540c3e7058a02abdb5221b41997f8b701ab644c64f4540b26fc83a0c3219f`  
		Last Modified: Thu, 02 Jul 2026 05:21:51 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:3747366e1ae7160c5ac684b5ff3d42b4fb3afb522f3bed3199f77518ae541a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a7fb1719febeb356ddfc075ffdd2f8c9785dda37574209bd6f6ef69e135a05`

```dockerfile
```

-	Layers:
	-	`sha256:b5cd9bebd67b4774b19bf403c5bb979d02d1f1d5d02a00bdb011a3d4d445b629`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 3.3 MB (3278496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4968cf7920d4119a15db599ea605096ccaf7dd1742fa8a031127664214cf3d5f`  
		Last Modified: Thu, 02 Jul 2026 05:21:48 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:005418a245878e07e928f363e168009a2c6ea8c8a88aa4cb15b60255b5fd71b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144979456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72df97fa34256be5ac93c5e29958a88ef6c49d9e3612ee4e738ddcac2ca27eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:16 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:32 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:47:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:48 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6892668af1f022c6362f0ae5a7ef50c2295fe80d3eb4089fc031946cfa3fc469`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd163ab9bea2339298023ea873292125c4dd516c985eb9e7fc4b1fbb02c340d5`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 17.9 MB (17902768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58620a78f3e9f2844b9ec0ce01934548bfe15ee5ce6c83c822620979c996c23`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91760f80adf42bd6f6b1db1b32cbdf51ac8342e7860b2cb74e0fc8c06799396`  
		Last Modified: Thu, 02 Jul 2026 05:48:03 GMT  
		Size: 45.7 MB (45652591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcd4bbb4000bba47fa5886658cb30a6f1bd94ac1305d390d1591c8fe65ef8ea`  
		Last Modified: Thu, 02 Jul 2026 05:48:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20db11a4ddf681214b515eeb50f6bf5847f14cc93e8bc269eaa9b10f0723be6b`  
		Last Modified: Thu, 02 Jul 2026 05:48:05 GMT  
		Size: 52.1 MB (52079088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27216ed6b5c0f15c1edd1cb9cc007237ed0b8e78902dd0eff90037707383224f`  
		Last Modified: Thu, 02 Jul 2026 05:48:04 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:2d6c17309c64702d78b70d5b3e353a9fcda6b1f75c8a1e7df996ccc643bcb567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fd586df293444b467ee75c74eb0bcf237f7f2c638ab9a025ca5c8d815cc016`

```dockerfile
```

-	Layers:
	-	`sha256:531c756addfc63c8c02b91724f5cd241f6280239de60874b493d845f8b4f552c`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 3.3 MB (3275117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f78dd3ba27ee2de35e60ce4b05f31f395e7442c6edc5d7568fec65a9831393e5`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f3cf06f0c3eb9408daae1fc4794f5fda152ff23fd1d2d19a87e12478305f581a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147685213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e210b9abd8f358317303945c3a89dc0d219a1327c838d84b496b91bb3ec3dd89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 06:43:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:43:49 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:43:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:43:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:43:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:43:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77198c253d4c148b166734846543fc957fd19355df52ac280685965c66817c6a`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 42.8 MB (42801432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11f22fa7891dbe0bf10fbeb67fd0d668792fa0a38db97ba3c83af53253e780a`  
		Last Modified: Thu, 02 Jul 2026 06:44:12 GMT  
		Size: 52.1 MB (52079240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ae3f693b19c43f34b45d1d1964d7c60fbd28e8576d40b0a0669aedee8cabb`  
		Last Modified: Thu, 02 Jul 2026 06:44:10 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:6c98e7a7c73a50e06dd86b4bce89a39269e0d99cca68357c4fd4a7ecbbf4e5cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a8e93bc92defc0aacd40c3ba69cbb0f98de36f22dc5f63c76a79800d4fc5b53`

```dockerfile
```

-	Layers:
	-	`sha256:67840721e5a9abc3d3951d1b43809f171ef23808febc3cf04fcd066f30d39026`  
		Last Modified: Thu, 02 Jul 2026 06:44:11 GMT  
		Size: 3.3 MB (3279030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49344105ee71656e5a465dcf6ae713e4cafc3cc3efda5e21f3ce4865823c5e0d`  
		Last Modified: Thu, 02 Jul 2026 06:44:10 GMT  
		Size: 35.9 KB (35933 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; s390x

```console
$ docker pull cassandra@sha256:1cd37de73a7d79daa79aad1efa0004ba3ef43cb8a278a429e5b47f9d8734199a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139017129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0952d50f4c824c5b69cd9b5db32f71cf3c8736abcdfc00c2ca7049e4f1511427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:43:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec24292cfc63c191c074f0879242af1035f16ff768232df3b4fc4ee34d3341`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af14c2d2d7fed2592fa08706d44e87ae0f3bc7f968b6a120ae9b60fd9adef55`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 17.4 MB (17447314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42c0dc9912ab01d3963ba508f23646cbe6149abca6d3206f89397836e34777`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.2 MB (1240479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce07530254bcee4345537e3bfdd6259d5ff94bcea43c187fc2cfe2ff8fa046a`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 41.4 MB (41354123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441f02d15edebd2debfa805633bbbbf7c499223c00fb100d18514989571cc67`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0011d2717168632e63c65cb307805f18f59686819c67db7adab73e0d4e46c6`  
		Last Modified: Thu, 02 Jul 2026 05:43:39 GMT  
		Size: 52.1 MB (52079169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f03e949f2023894ae0ae66f85a878aece6cee6c35ba9bd686644531cc38cc8c`  
		Last Modified: Thu, 02 Jul 2026 05:43:38 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:86d71dd831b473d7456809ba636eb423dcd324fc2ee1e0467a7fe6085b6e6690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da3d5f3730384d8d6aa39dbb6966f7e9dc4d22a61d6dc142408bc17519be7d8`

```dockerfile
```

-	Layers:
	-	`sha256:9330f7a3b117689e40d2b5ae9bf154b1dd005ace440bb307acf47a4ed6b05a23`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 3.3 MB (3270924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c407c30f33331a3edd9f29ee1ec1e7a63b40fe4b4451a40c7294194d81da2b03`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 35.9 KB (35872 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0-bookworm`

```console
$ docker pull cassandra@sha256:372a6c5731cd4538f30a721fca27ef97568d0d29494226779a64bc0c71530ace
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
$ docker pull cassandra@sha256:22f616e8cea201c2de31e5cfb09a003bf23c47e65f3f13858a3543d308e4e7cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147071094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298a6e96ffdec72799ed72fbc914eff8c82d3f4ff5925aa680dba43bbc3ef4cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:59 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:16 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:47:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:35 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f035a37e11c9e01647281c968a3d767ce768a5ea4da9ef2dcef628f5c83e0e`  
		Last Modified: Thu, 02 Jul 2026 05:47:48 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e010b0d7b42b9f6c1145ddf323d1de985fefab3b763bb2fd297d27978c90f654`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 18.1 MB (18149649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76302f652016a084f1d01841d3934a92e5155fd80c4c88a9c7d772f997f72a9`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 1.3 MB (1266606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a2a93f9a0b13194019e4d714423c072dd46b361f431c75be12ed85b65cd67e`  
		Last Modified: Thu, 02 Jul 2026 05:47:50 GMT  
		Size: 47.3 MB (47335707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdeb1d4dd04512ebc5b08a8df0bc816d4462468b728769eb2617965425ccd8a`  
		Last Modified: Thu, 02 Jul 2026 05:47:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a406c7a5d7df27fe01664865fdd5035c9dac7bb1d6d5bda335fa38442d5188`  
		Last Modified: Thu, 02 Jul 2026 05:47:52 GMT  
		Size: 52.1 MB (52079033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637ab5557ee337afd17941c9dac3143659537aeb9c8babd053b8a8a022f088e6`  
		Last Modified: Thu, 02 Jul 2026 05:47:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:e03e479920a7a441c0decf74b1b2e83d7c6c76ffc3e913e44bf5a91a8a9f642a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735332d579ed145c6a0ccf94ab4087790f18e773e61dc7cf80b82197b01fcedc`

```dockerfile
```

-	Layers:
	-	`sha256:b9207f9d95ea7c1cda2e122fa10646516833a07f84d9f9ac5c60d89ae7ef7ce3`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 3.3 MB (3274782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c17fc0322950674fe57ef4ae1a11f5b012f5665209bc328cb420973151e84aad`  
		Last Modified: Thu, 02 Jul 2026 05:47:48 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:72803fc123a7d8b489bc369e2a678fe4ad0641e9c6c79ca3979575c97debd13d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138919431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79e307f48f8120e192813145edaa138f6e014d6211fb8af1b957122582f7976`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:16 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:21:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:36 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78daaeffcb425a7e5e05672e951184f8ac26d0d2f64a8eb6afc79c34c822cb5`  
		Last Modified: Thu, 02 Jul 2026 05:21:48 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05b8221d9d5777d488bfab0960c5795d95bd841fd463319e91aa240f6869fea`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 16.2 MB (16215843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d87c7f076420f9f79b82e5526bba03ffd89a165317dd4f358766517834261d`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.2 MB (1232636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26beaa7f32c29bdf4fd372d5d50d6b8fbec26e9928d106853d6661fbb219b1f7`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 45.4 MB (45444866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4df68972b7230dc9b5752d1608fbfc9ecb9603276033b1e60f4aa46afcd46fb`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3bad87a45be63fb9a6b09f6fc2a56041a6de6edbc91d488850836c009ff859`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 52.1 MB (52079094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625540c3e7058a02abdb5221b41997f8b701ab644c64f4540b26fc83a0c3219f`  
		Last Modified: Thu, 02 Jul 2026 05:21:51 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:3747366e1ae7160c5ac684b5ff3d42b4fb3afb522f3bed3199f77518ae541a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a7fb1719febeb356ddfc075ffdd2f8c9785dda37574209bd6f6ef69e135a05`

```dockerfile
```

-	Layers:
	-	`sha256:b5cd9bebd67b4774b19bf403c5bb979d02d1f1d5d02a00bdb011a3d4d445b629`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 3.3 MB (3278496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4968cf7920d4119a15db599ea605096ccaf7dd1742fa8a031127664214cf3d5f`  
		Last Modified: Thu, 02 Jul 2026 05:21:48 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:005418a245878e07e928f363e168009a2c6ea8c8a88aa4cb15b60255b5fd71b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144979456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72df97fa34256be5ac93c5e29958a88ef6c49d9e3612ee4e738ddcac2ca27eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:16 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:32 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:47:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:48 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6892668af1f022c6362f0ae5a7ef50c2295fe80d3eb4089fc031946cfa3fc469`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd163ab9bea2339298023ea873292125c4dd516c985eb9e7fc4b1fbb02c340d5`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 17.9 MB (17902768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58620a78f3e9f2844b9ec0ce01934548bfe15ee5ce6c83c822620979c996c23`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91760f80adf42bd6f6b1db1b32cbdf51ac8342e7860b2cb74e0fc8c06799396`  
		Last Modified: Thu, 02 Jul 2026 05:48:03 GMT  
		Size: 45.7 MB (45652591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcd4bbb4000bba47fa5886658cb30a6f1bd94ac1305d390d1591c8fe65ef8ea`  
		Last Modified: Thu, 02 Jul 2026 05:48:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20db11a4ddf681214b515eeb50f6bf5847f14cc93e8bc269eaa9b10f0723be6b`  
		Last Modified: Thu, 02 Jul 2026 05:48:05 GMT  
		Size: 52.1 MB (52079088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27216ed6b5c0f15c1edd1cb9cc007237ed0b8e78902dd0eff90037707383224f`  
		Last Modified: Thu, 02 Jul 2026 05:48:04 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:2d6c17309c64702d78b70d5b3e353a9fcda6b1f75c8a1e7df996ccc643bcb567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fd586df293444b467ee75c74eb0bcf237f7f2c638ab9a025ca5c8d815cc016`

```dockerfile
```

-	Layers:
	-	`sha256:531c756addfc63c8c02b91724f5cd241f6280239de60874b493d845f8b4f552c`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 3.3 MB (3275117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f78dd3ba27ee2de35e60ce4b05f31f395e7442c6edc5d7568fec65a9831393e5`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f3cf06f0c3eb9408daae1fc4794f5fda152ff23fd1d2d19a87e12478305f581a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147685213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e210b9abd8f358317303945c3a89dc0d219a1327c838d84b496b91bb3ec3dd89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 06:43:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:43:49 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:43:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:43:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:43:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:43:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77198c253d4c148b166734846543fc957fd19355df52ac280685965c66817c6a`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 42.8 MB (42801432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11f22fa7891dbe0bf10fbeb67fd0d668792fa0a38db97ba3c83af53253e780a`  
		Last Modified: Thu, 02 Jul 2026 06:44:12 GMT  
		Size: 52.1 MB (52079240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ae3f693b19c43f34b45d1d1964d7c60fbd28e8576d40b0a0669aedee8cabb`  
		Last Modified: Thu, 02 Jul 2026 06:44:10 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:6c98e7a7c73a50e06dd86b4bce89a39269e0d99cca68357c4fd4a7ecbbf4e5cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a8e93bc92defc0aacd40c3ba69cbb0f98de36f22dc5f63c76a79800d4fc5b53`

```dockerfile
```

-	Layers:
	-	`sha256:67840721e5a9abc3d3951d1b43809f171ef23808febc3cf04fcd066f30d39026`  
		Last Modified: Thu, 02 Jul 2026 06:44:11 GMT  
		Size: 3.3 MB (3279030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49344105ee71656e5a465dcf6ae713e4cafc3cc3efda5e21f3ce4865823c5e0d`  
		Last Modified: Thu, 02 Jul 2026 06:44:10 GMT  
		Size: 35.9 KB (35933 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:1cd37de73a7d79daa79aad1efa0004ba3ef43cb8a278a429e5b47f9d8734199a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139017129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0952d50f4c824c5b69cd9b5db32f71cf3c8736abcdfc00c2ca7049e4f1511427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:43:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec24292cfc63c191c074f0879242af1035f16ff768232df3b4fc4ee34d3341`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af14c2d2d7fed2592fa08706d44e87ae0f3bc7f968b6a120ae9b60fd9adef55`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 17.4 MB (17447314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42c0dc9912ab01d3963ba508f23646cbe6149abca6d3206f89397836e34777`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.2 MB (1240479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce07530254bcee4345537e3bfdd6259d5ff94bcea43c187fc2cfe2ff8fa046a`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 41.4 MB (41354123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441f02d15edebd2debfa805633bbbbf7c499223c00fb100d18514989571cc67`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0011d2717168632e63c65cb307805f18f59686819c67db7adab73e0d4e46c6`  
		Last Modified: Thu, 02 Jul 2026 05:43:39 GMT  
		Size: 52.1 MB (52079169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f03e949f2023894ae0ae66f85a878aece6cee6c35ba9bd686644531cc38cc8c`  
		Last Modified: Thu, 02 Jul 2026 05:43:38 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:86d71dd831b473d7456809ba636eb423dcd324fc2ee1e0467a7fe6085b6e6690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da3d5f3730384d8d6aa39dbb6966f7e9dc4d22a61d6dc142408bc17519be7d8`

```dockerfile
```

-	Layers:
	-	`sha256:9330f7a3b117689e40d2b5ae9bf154b1dd005ace440bb307acf47a4ed6b05a23`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 3.3 MB (3270924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c407c30f33331a3edd9f29ee1ec1e7a63b40fe4b4451a40c7294194d81da2b03`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 35.9 KB (35872 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.20`

```console
$ docker pull cassandra@sha256:372a6c5731cd4538f30a721fca27ef97568d0d29494226779a64bc0c71530ace
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
$ docker pull cassandra@sha256:22f616e8cea201c2de31e5cfb09a003bf23c47e65f3f13858a3543d308e4e7cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147071094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298a6e96ffdec72799ed72fbc914eff8c82d3f4ff5925aa680dba43bbc3ef4cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:59 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:16 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:47:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:35 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f035a37e11c9e01647281c968a3d767ce768a5ea4da9ef2dcef628f5c83e0e`  
		Last Modified: Thu, 02 Jul 2026 05:47:48 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e010b0d7b42b9f6c1145ddf323d1de985fefab3b763bb2fd297d27978c90f654`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 18.1 MB (18149649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76302f652016a084f1d01841d3934a92e5155fd80c4c88a9c7d772f997f72a9`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 1.3 MB (1266606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a2a93f9a0b13194019e4d714423c072dd46b361f431c75be12ed85b65cd67e`  
		Last Modified: Thu, 02 Jul 2026 05:47:50 GMT  
		Size: 47.3 MB (47335707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdeb1d4dd04512ebc5b08a8df0bc816d4462468b728769eb2617965425ccd8a`  
		Last Modified: Thu, 02 Jul 2026 05:47:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a406c7a5d7df27fe01664865fdd5035c9dac7bb1d6d5bda335fa38442d5188`  
		Last Modified: Thu, 02 Jul 2026 05:47:52 GMT  
		Size: 52.1 MB (52079033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637ab5557ee337afd17941c9dac3143659537aeb9c8babd053b8a8a022f088e6`  
		Last Modified: Thu, 02 Jul 2026 05:47:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:e03e479920a7a441c0decf74b1b2e83d7c6c76ffc3e913e44bf5a91a8a9f642a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735332d579ed145c6a0ccf94ab4087790f18e773e61dc7cf80b82197b01fcedc`

```dockerfile
```

-	Layers:
	-	`sha256:b9207f9d95ea7c1cda2e122fa10646516833a07f84d9f9ac5c60d89ae7ef7ce3`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 3.3 MB (3274782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c17fc0322950674fe57ef4ae1a11f5b012f5665209bc328cb420973151e84aad`  
		Last Modified: Thu, 02 Jul 2026 05:47:48 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:72803fc123a7d8b489bc369e2a678fe4ad0641e9c6c79ca3979575c97debd13d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138919431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79e307f48f8120e192813145edaa138f6e014d6211fb8af1b957122582f7976`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:16 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:21:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:36 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78daaeffcb425a7e5e05672e951184f8ac26d0d2f64a8eb6afc79c34c822cb5`  
		Last Modified: Thu, 02 Jul 2026 05:21:48 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05b8221d9d5777d488bfab0960c5795d95bd841fd463319e91aa240f6869fea`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 16.2 MB (16215843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d87c7f076420f9f79b82e5526bba03ffd89a165317dd4f358766517834261d`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.2 MB (1232636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26beaa7f32c29bdf4fd372d5d50d6b8fbec26e9928d106853d6661fbb219b1f7`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 45.4 MB (45444866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4df68972b7230dc9b5752d1608fbfc9ecb9603276033b1e60f4aa46afcd46fb`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3bad87a45be63fb9a6b09f6fc2a56041a6de6edbc91d488850836c009ff859`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 52.1 MB (52079094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625540c3e7058a02abdb5221b41997f8b701ab644c64f4540b26fc83a0c3219f`  
		Last Modified: Thu, 02 Jul 2026 05:21:51 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:3747366e1ae7160c5ac684b5ff3d42b4fb3afb522f3bed3199f77518ae541a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a7fb1719febeb356ddfc075ffdd2f8c9785dda37574209bd6f6ef69e135a05`

```dockerfile
```

-	Layers:
	-	`sha256:b5cd9bebd67b4774b19bf403c5bb979d02d1f1d5d02a00bdb011a3d4d445b629`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 3.3 MB (3278496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4968cf7920d4119a15db599ea605096ccaf7dd1742fa8a031127664214cf3d5f`  
		Last Modified: Thu, 02 Jul 2026 05:21:48 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:005418a245878e07e928f363e168009a2c6ea8c8a88aa4cb15b60255b5fd71b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144979456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72df97fa34256be5ac93c5e29958a88ef6c49d9e3612ee4e738ddcac2ca27eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:16 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:32 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:47:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:48 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6892668af1f022c6362f0ae5a7ef50c2295fe80d3eb4089fc031946cfa3fc469`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd163ab9bea2339298023ea873292125c4dd516c985eb9e7fc4b1fbb02c340d5`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 17.9 MB (17902768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58620a78f3e9f2844b9ec0ce01934548bfe15ee5ce6c83c822620979c996c23`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91760f80adf42bd6f6b1db1b32cbdf51ac8342e7860b2cb74e0fc8c06799396`  
		Last Modified: Thu, 02 Jul 2026 05:48:03 GMT  
		Size: 45.7 MB (45652591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcd4bbb4000bba47fa5886658cb30a6f1bd94ac1305d390d1591c8fe65ef8ea`  
		Last Modified: Thu, 02 Jul 2026 05:48:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20db11a4ddf681214b515eeb50f6bf5847f14cc93e8bc269eaa9b10f0723be6b`  
		Last Modified: Thu, 02 Jul 2026 05:48:05 GMT  
		Size: 52.1 MB (52079088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27216ed6b5c0f15c1edd1cb9cc007237ed0b8e78902dd0eff90037707383224f`  
		Last Modified: Thu, 02 Jul 2026 05:48:04 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:2d6c17309c64702d78b70d5b3e353a9fcda6b1f75c8a1e7df996ccc643bcb567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fd586df293444b467ee75c74eb0bcf237f7f2c638ab9a025ca5c8d815cc016`

```dockerfile
```

-	Layers:
	-	`sha256:531c756addfc63c8c02b91724f5cd241f6280239de60874b493d845f8b4f552c`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 3.3 MB (3275117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f78dd3ba27ee2de35e60ce4b05f31f395e7442c6edc5d7568fec65a9831393e5`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f3cf06f0c3eb9408daae1fc4794f5fda152ff23fd1d2d19a87e12478305f581a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147685213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e210b9abd8f358317303945c3a89dc0d219a1327c838d84b496b91bb3ec3dd89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 06:43:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:43:49 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:43:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:43:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:43:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:43:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77198c253d4c148b166734846543fc957fd19355df52ac280685965c66817c6a`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 42.8 MB (42801432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11f22fa7891dbe0bf10fbeb67fd0d668792fa0a38db97ba3c83af53253e780a`  
		Last Modified: Thu, 02 Jul 2026 06:44:12 GMT  
		Size: 52.1 MB (52079240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ae3f693b19c43f34b45d1d1964d7c60fbd28e8576d40b0a0669aedee8cabb`  
		Last Modified: Thu, 02 Jul 2026 06:44:10 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:6c98e7a7c73a50e06dd86b4bce89a39269e0d99cca68357c4fd4a7ecbbf4e5cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a8e93bc92defc0aacd40c3ba69cbb0f98de36f22dc5f63c76a79800d4fc5b53`

```dockerfile
```

-	Layers:
	-	`sha256:67840721e5a9abc3d3951d1b43809f171ef23808febc3cf04fcd066f30d39026`  
		Last Modified: Thu, 02 Jul 2026 06:44:11 GMT  
		Size: 3.3 MB (3279030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49344105ee71656e5a465dcf6ae713e4cafc3cc3efda5e21f3ce4865823c5e0d`  
		Last Modified: Thu, 02 Jul 2026 06:44:10 GMT  
		Size: 35.9 KB (35933 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20` - linux; s390x

```console
$ docker pull cassandra@sha256:1cd37de73a7d79daa79aad1efa0004ba3ef43cb8a278a429e5b47f9d8734199a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139017129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0952d50f4c824c5b69cd9b5db32f71cf3c8736abcdfc00c2ca7049e4f1511427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:43:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec24292cfc63c191c074f0879242af1035f16ff768232df3b4fc4ee34d3341`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af14c2d2d7fed2592fa08706d44e87ae0f3bc7f968b6a120ae9b60fd9adef55`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 17.4 MB (17447314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42c0dc9912ab01d3963ba508f23646cbe6149abca6d3206f89397836e34777`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.2 MB (1240479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce07530254bcee4345537e3bfdd6259d5ff94bcea43c187fc2cfe2ff8fa046a`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 41.4 MB (41354123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441f02d15edebd2debfa805633bbbbf7c499223c00fb100d18514989571cc67`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0011d2717168632e63c65cb307805f18f59686819c67db7adab73e0d4e46c6`  
		Last Modified: Thu, 02 Jul 2026 05:43:39 GMT  
		Size: 52.1 MB (52079169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f03e949f2023894ae0ae66f85a878aece6cee6c35ba9bd686644531cc38cc8c`  
		Last Modified: Thu, 02 Jul 2026 05:43:38 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20` - unknown; unknown

```console
$ docker pull cassandra@sha256:86d71dd831b473d7456809ba636eb423dcd324fc2ee1e0467a7fe6085b6e6690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da3d5f3730384d8d6aa39dbb6966f7e9dc4d22a61d6dc142408bc17519be7d8`

```dockerfile
```

-	Layers:
	-	`sha256:9330f7a3b117689e40d2b5ae9bf154b1dd005ace440bb307acf47a4ed6b05a23`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 3.3 MB (3270924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c407c30f33331a3edd9f29ee1ec1e7a63b40fe4b4451a40c7294194d81da2b03`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 35.9 KB (35872 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.20-bookworm`

```console
$ docker pull cassandra@sha256:372a6c5731cd4538f30a721fca27ef97568d0d29494226779a64bc0c71530ace
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
$ docker pull cassandra@sha256:22f616e8cea201c2de31e5cfb09a003bf23c47e65f3f13858a3543d308e4e7cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147071094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298a6e96ffdec72799ed72fbc914eff8c82d3f4ff5925aa680dba43bbc3ef4cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:59 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:16 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:47:16 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:47:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:35 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f035a37e11c9e01647281c968a3d767ce768a5ea4da9ef2dcef628f5c83e0e`  
		Last Modified: Thu, 02 Jul 2026 05:47:48 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e010b0d7b42b9f6c1145ddf323d1de985fefab3b763bb2fd297d27978c90f654`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 18.1 MB (18149649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76302f652016a084f1d01841d3934a92e5155fd80c4c88a9c7d772f997f72a9`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 1.3 MB (1266606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a2a93f9a0b13194019e4d714423c072dd46b361f431c75be12ed85b65cd67e`  
		Last Modified: Thu, 02 Jul 2026 05:47:50 GMT  
		Size: 47.3 MB (47335707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdeb1d4dd04512ebc5b08a8df0bc816d4462468b728769eb2617965425ccd8a`  
		Last Modified: Thu, 02 Jul 2026 05:47:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a406c7a5d7df27fe01664865fdd5035c9dac7bb1d6d5bda335fa38442d5188`  
		Last Modified: Thu, 02 Jul 2026 05:47:52 GMT  
		Size: 52.1 MB (52079033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637ab5557ee337afd17941c9dac3143659537aeb9c8babd053b8a8a022f088e6`  
		Last Modified: Thu, 02 Jul 2026 05:47:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:e03e479920a7a441c0decf74b1b2e83d7c6c76ffc3e913e44bf5a91a8a9f642a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735332d579ed145c6a0ccf94ab4087790f18e773e61dc7cf80b82197b01fcedc`

```dockerfile
```

-	Layers:
	-	`sha256:b9207f9d95ea7c1cda2e122fa10646516833a07f84d9f9ac5c60d89ae7ef7ce3`  
		Last Modified: Thu, 02 Jul 2026 05:47:49 GMT  
		Size: 3.3 MB (3274782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c17fc0322950674fe57ef4ae1a11f5b012f5665209bc328cb420973151e84aad`  
		Last Modified: Thu, 02 Jul 2026 05:47:48 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:72803fc123a7d8b489bc369e2a678fe4ad0641e9c6c79ca3979575c97debd13d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138919431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79e307f48f8120e192813145edaa138f6e014d6211fb8af1b957122582f7976`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:16 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:21:16 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:21:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:36 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78daaeffcb425a7e5e05672e951184f8ac26d0d2f64a8eb6afc79c34c822cb5`  
		Last Modified: Thu, 02 Jul 2026 05:21:48 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05b8221d9d5777d488bfab0960c5795d95bd841fd463319e91aa240f6869fea`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 16.2 MB (16215843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d87c7f076420f9f79b82e5526bba03ffd89a165317dd4f358766517834261d`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.2 MB (1232636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26beaa7f32c29bdf4fd372d5d50d6b8fbec26e9928d106853d6661fbb219b1f7`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 45.4 MB (45444866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4df68972b7230dc9b5752d1608fbfc9ecb9603276033b1e60f4aa46afcd46fb`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3bad87a45be63fb9a6b09f6fc2a56041a6de6edbc91d488850836c009ff859`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 52.1 MB (52079094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625540c3e7058a02abdb5221b41997f8b701ab644c64f4540b26fc83a0c3219f`  
		Last Modified: Thu, 02 Jul 2026 05:21:51 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:3747366e1ae7160c5ac684b5ff3d42b4fb3afb522f3bed3199f77518ae541a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a7fb1719febeb356ddfc075ffdd2f8c9785dda37574209bd6f6ef69e135a05`

```dockerfile
```

-	Layers:
	-	`sha256:b5cd9bebd67b4774b19bf403c5bb979d02d1f1d5d02a00bdb011a3d4d445b629`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 3.3 MB (3278496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4968cf7920d4119a15db599ea605096ccaf7dd1742fa8a031127664214cf3d5f`  
		Last Modified: Thu, 02 Jul 2026 05:21:48 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:005418a245878e07e928f363e168009a2c6ea8c8a88aa4cb15b60255b5fd71b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144979456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72df97fa34256be5ac93c5e29958a88ef6c49d9e3612ee4e738ddcac2ca27eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:16 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:32 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:32 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:32 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:47:32 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:47:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:48 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6892668af1f022c6362f0ae5a7ef50c2295fe80d3eb4089fc031946cfa3fc469`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd163ab9bea2339298023ea873292125c4dd516c985eb9e7fc4b1fbb02c340d5`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 17.9 MB (17902768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58620a78f3e9f2844b9ec0ce01934548bfe15ee5ce6c83c822620979c996c23`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 1.2 MB (1220126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91760f80adf42bd6f6b1db1b32cbdf51ac8342e7860b2cb74e0fc8c06799396`  
		Last Modified: Thu, 02 Jul 2026 05:48:03 GMT  
		Size: 45.7 MB (45652591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcd4bbb4000bba47fa5886658cb30a6f1bd94ac1305d390d1591c8fe65ef8ea`  
		Last Modified: Thu, 02 Jul 2026 05:48:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20db11a4ddf681214b515eeb50f6bf5847f14cc93e8bc269eaa9b10f0723be6b`  
		Last Modified: Thu, 02 Jul 2026 05:48:05 GMT  
		Size: 52.1 MB (52079088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27216ed6b5c0f15c1edd1cb9cc007237ed0b8e78902dd0eff90037707383224f`  
		Last Modified: Thu, 02 Jul 2026 05:48:04 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:2d6c17309c64702d78b70d5b3e353a9fcda6b1f75c8a1e7df996ccc643bcb567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fd586df293444b467ee75c74eb0bcf237f7f2c638ab9a025ca5c8d815cc016`

```dockerfile
```

-	Layers:
	-	`sha256:531c756addfc63c8c02b91724f5cd241f6280239de60874b493d845f8b4f552c`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 3.3 MB (3275117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f78dd3ba27ee2de35e60ce4b05f31f395e7442c6edc5d7568fec65a9831393e5`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f3cf06f0c3eb9408daae1fc4794f5fda152ff23fd1d2d19a87e12478305f581a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147685213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e210b9abd8f358317303945c3a89dc0d219a1327c838d84b496b91bb3ec3dd89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 06:43:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:43:49 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:43:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:43:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:43:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:43:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77198c253d4c148b166734846543fc957fd19355df52ac280685965c66817c6a`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 42.8 MB (42801432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11f22fa7891dbe0bf10fbeb67fd0d668792fa0a38db97ba3c83af53253e780a`  
		Last Modified: Thu, 02 Jul 2026 06:44:12 GMT  
		Size: 52.1 MB (52079240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ae3f693b19c43f34b45d1d1964d7c60fbd28e8576d40b0a0669aedee8cabb`  
		Last Modified: Thu, 02 Jul 2026 06:44:10 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:6c98e7a7c73a50e06dd86b4bce89a39269e0d99cca68357c4fd4a7ecbbf4e5cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a8e93bc92defc0aacd40c3ba69cbb0f98de36f22dc5f63c76a79800d4fc5b53`

```dockerfile
```

-	Layers:
	-	`sha256:67840721e5a9abc3d3951d1b43809f171ef23808febc3cf04fcd066f30d39026`  
		Last Modified: Thu, 02 Jul 2026 06:44:11 GMT  
		Size: 3.3 MB (3279030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49344105ee71656e5a465dcf6ae713e4cafc3cc3efda5e21f3ce4865823c5e0d`  
		Last Modified: Thu, 02 Jul 2026 06:44:10 GMT  
		Size: 35.9 KB (35933 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.20-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:1cd37de73a7d79daa79aad1efa0004ba3ef43cb8a278a429e5b47f9d8734199a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139017129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0952d50f4c824c5b69cd9b5db32f71cf3c8736abcdfc00c2ca7049e4f1511427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_VERSION=4.0.20
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_SHA512=4abd74a1a488360d94ee3bca905c7095cac2e3328577e46622aa41144b1a612844af79ba5ec3e98b26d08fee168511fac128bc6ea2eb2026f981d72bfdeb9fdb
# Thu, 02 Jul 2026 05:43:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec24292cfc63c191c074f0879242af1035f16ff768232df3b4fc4ee34d3341`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af14c2d2d7fed2592fa08706d44e87ae0f3bc7f968b6a120ae9b60fd9adef55`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 17.4 MB (17447314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42c0dc9912ab01d3963ba508f23646cbe6149abca6d3206f89397836e34777`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.2 MB (1240479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce07530254bcee4345537e3bfdd6259d5ff94bcea43c187fc2cfe2ff8fa046a`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 41.4 MB (41354123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441f02d15edebd2debfa805633bbbbf7c499223c00fb100d18514989571cc67`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0011d2717168632e63c65cb307805f18f59686819c67db7adab73e0d4e46c6`  
		Last Modified: Thu, 02 Jul 2026 05:43:39 GMT  
		Size: 52.1 MB (52079169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f03e949f2023894ae0ae66f85a878aece6cee6c35ba9bd686644531cc38cc8c`  
		Last Modified: Thu, 02 Jul 2026 05:43:38 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.20-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:86d71dd831b473d7456809ba636eb423dcd324fc2ee1e0467a7fe6085b6e6690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da3d5f3730384d8d6aa39dbb6966f7e9dc4d22a61d6dc142408bc17519be7d8`

```dockerfile
```

-	Layers:
	-	`sha256:9330f7a3b117689e40d2b5ae9bf154b1dd005ace440bb307acf47a4ed6b05a23`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 3.3 MB (3270924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c407c30f33331a3edd9f29ee1ec1e7a63b40fe4b4451a40c7294194d81da2b03`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 35.9 KB (35872 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1`

```console
$ docker pull cassandra@sha256:fe1432f22bd222c3c425eb834ca157b476c73c9255d7fac34135163c797e7c1a
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
$ docker pull cassandra@sha256:e832f9289003f5e8faa9664cd7a219e1dd982cb8224baf95fc07adf2bb3dbb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149186530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e8c26034b3b4580ca4e97126f4f47cad90297b63e42ebef308b51170f1c6ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc818705cb48c85fcfc5f58b68e6712fb45f0bd652bc0fb9e9caefdce3cab24b`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3095a30aab9577c1abdeeabf15f8e1ec7941eb46e8f35eeeb94386d8b2b2dbf9`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 18.1 MB (18149659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9492471474d1ea5abdb08b88efb7723a05237178f8d2bb7c2cb32e9ca1e38c64`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.3 MB (1266610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8dda93fac9ee7317e377ac03b48961c28a95ddede791e6acd11badc42bd525`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 47.3 MB (47335673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc30fe62629bd57e3c30cc742318e93ce2b683db4ab86216d4beee4b1a7b515`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b3390cb29f5f0c292e2f8d7ec45226016ccb4d9da4a1ecdfe360a3ad800bfe`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 54.2 MB (54194487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cbd14d2e3df47bf8e869864ee40481ffc315219cb273719f30eed149f202f1`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:e7ea1538c52446049729fc67ffb475af9f53d0617fe740b14f9cbc069790c707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffdae39104c16879c5385ca28964292006cd4c3619f053270c0b098e043021d`

```dockerfile
```

-	Layers:
	-	`sha256:9a29e95021cd0ae7f3706feabad1eb2b7967dc5b1e321a3bf2689e8836496363`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 3.3 MB (3281849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7332b896fe40cdfbd95d4662ce6bce2225cbc360c03a24cd09151127c824273e`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:f21d770aecfa6f5b3c8be17145c3a53f25077af065712a7141d694f0d97b26d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141034501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81827ce9a09225b707046e00b02b52f5defa1683bd2d7fbbf9c13f3e17c0251`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:21:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:37 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1992ddd9cecefb103dedc6943668c7896d069b1da691bd24c0d9499f84d6da64`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 16.2 MB (16215493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f497b43d4d9797794c477df93dff8ded523e68c48ad5da1a5f587bc48e0ad711`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 1.2 MB (1232626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26beaa7f32c29bdf4fd372d5d50d6b8fbec26e9928d106853d6661fbb219b1f7`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 45.4 MB (45444866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4df68972b7230dc9b5752d1608fbfc9ecb9603276033b1e60f4aa46afcd46fb`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e246a3d532fab7f64251b325f763542998fb804327572d81b3e3837d041b1c3c`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 54.2 MB (54194523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d676ab9f1d84692d7cf4639d492326d67ea5a624319c7538d5e4786ffaef94`  
		Last Modified: Thu, 02 Jul 2026 05:21:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:366a8fa27a33c1c04b6bf2fd422d68a41aad1e68ce8af88ddbb1a2230caed111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a64a53e25ee2e4a04b01db751fe6d106440ce69c6f22c1c671f679cf5290396`

```dockerfile
```

-	Layers:
	-	`sha256:887006bbd7cadd358bc4f06136e963f723c55e7dea1d06736643325c84a6df37`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 3.3 MB (3285579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d644df31e81881d320df05cba5b8e5119fdea0f40aff1cb9f5c603cb384486`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:906dc9e999575acf32fc1d956c522ee3e541590fd6fded2d5d11534793effff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147094852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3997cfabe51f8d2c5a9b69931ae3056192c70eb2ff55960c271832707a9d0259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8319495ac1a0bba49cb001b24c9c44c25aefcca00352b13a1f5a9db3b1f75d09`  
		Last Modified: Thu, 02 Jul 2026 05:48:08 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31353453b892bd0a7dea03a82ab54b679ab5dabaac383a4ae57f644d3be11f01`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 17.9 MB (17902769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a9ad3c61ebf957ed2ad4f8994419f510d1a0336dd5e6dc6d43c0fe5abf821b`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 1.2 MB (1220122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff7f9ab080f047d5241f5ff265dfc6a614f25bf43b7ffaeeb93fe78de27ba62`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 45.7 MB (45652591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c5467e46f961867143cb1639133830157984122b5763fca5f3939412cc6646`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7095c21630c30f2c66f5417e073d64facf272053592d6e6fa51602d1a90a6ff3`  
		Last Modified: Thu, 02 Jul 2026 05:48:12 GMT  
		Size: 54.2 MB (54194489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5917dd93fcc224c95114e7c6568464ed8e901598fed68ba864cee0287da4b8e8`  
		Last Modified: Thu, 02 Jul 2026 05:48:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:fd8a7c6ebbd16cec0a182f24fa3f8b252e1bf75d7ca873967ee1bc18c6be0e0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb058dfcdbf13027759a876c6c4fb68b477ce22d15941db3e12e6e0f148af4c`

```dockerfile
```

-	Layers:
	-	`sha256:0ddb14f54e607f119642fcaa847d5cd138b1dab9760a9837ec771d6fedabaf42`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 3.3 MB (3282208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:655f86d795cc546a46f0f95358565ba6510a979ede27195d0803afaeeaaf1912`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; ppc64le

```console
$ docker pull cassandra@sha256:aff4bf242d6434346abd237b33c47cfa6ec7ab67202dab2afa6b3e635e66af0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149800665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a302d301cf843afad9d583946d38c0302a3c1bf17a28099b6b219dd3e8d377a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:32 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77198c253d4c148b166734846543fc957fd19355df52ac280685965c66817c6a`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 42.8 MB (42801432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad55a20b6d01696682716e13bc39378c581bc52d352d98bd68abe062ac7d51f`  
		Last Modified: Thu, 02 Jul 2026 06:43:05 GMT  
		Size: 54.2 MB (54194692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145a4f8433b94a02daf6d8ab81024b0d0a3448137558fddd545f182b2275a45d`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:a4032e72042180f795f844b2e7590605a923ba6543d91f28c1a2a9db0a17826f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2e87b093b7ce27f8621356efb2a415361efae40d01c56b7cf1cbec33c770c2`

```dockerfile
```

-	Layers:
	-	`sha256:a0be300ffc1f4ca356da3db7aa6e73a620ffacd310a16c560d619ba9d1e8b6b6`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 3.3 MB (3286109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:946dc549862fb6a82308b1574aaa7900f1bc208b4b8c277668d46ccbd63c5ed1`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; s390x

```console
$ docker pull cassandra@sha256:4b93fbd7f961713557c7137fc63ef5458ce9c88db99bde95c8c6f978d4c299f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141132457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844a96ac66c3306056c6377e8cf2cc78d9a0ec6b1541b337a61d42e520e32d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:43:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec24292cfc63c191c074f0879242af1035f16ff768232df3b4fc4ee34d3341`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af14c2d2d7fed2592fa08706d44e87ae0f3bc7f968b6a120ae9b60fd9adef55`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 17.4 MB (17447314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42c0dc9912ab01d3963ba508f23646cbe6149abca6d3206f89397836e34777`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.2 MB (1240479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce07530254bcee4345537e3bfdd6259d5ff94bcea43c187fc2cfe2ff8fa046a`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 41.4 MB (41354123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441f02d15edebd2debfa805633bbbbf7c499223c00fb100d18514989571cc67`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8e2a442dec4b0216e6273489b6877cd8e9729f8b28b3685bd7c6a87bc6a99c`  
		Last Modified: Thu, 02 Jul 2026 05:43:39 GMT  
		Size: 54.2 MB (54194496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67cd7b14502a8875e72f20110bcaea3d94aba93f8274cdc13c0caba0b06aea5a`  
		Last Modified: Thu, 02 Jul 2026 05:43:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:257b002389fb9120132626bfa0b5fe1f2518f29642d836a891563da91b9bda5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a89dbb42654f12d4c3184218afc1fd758aa2040f437495e95f4347b0c76e69`

```dockerfile
```

-	Layers:
	-	`sha256:6ffa5e0711f525a12d7249f498db90067ec9f7f9e5cf0f0b69c415a708efa0d9`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 3.3 MB (3277991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a3c471a227f7c5af0d106bf1f6fe4c15caaf188a3803f5b4db2252ce2cc7b43`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 36.5 KB (36478 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1-bookworm`

```console
$ docker pull cassandra@sha256:fe1432f22bd222c3c425eb834ca157b476c73c9255d7fac34135163c797e7c1a
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
$ docker pull cassandra@sha256:e832f9289003f5e8faa9664cd7a219e1dd982cb8224baf95fc07adf2bb3dbb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149186530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e8c26034b3b4580ca4e97126f4f47cad90297b63e42ebef308b51170f1c6ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc818705cb48c85fcfc5f58b68e6712fb45f0bd652bc0fb9e9caefdce3cab24b`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3095a30aab9577c1abdeeabf15f8e1ec7941eb46e8f35eeeb94386d8b2b2dbf9`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 18.1 MB (18149659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9492471474d1ea5abdb08b88efb7723a05237178f8d2bb7c2cb32e9ca1e38c64`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.3 MB (1266610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8dda93fac9ee7317e377ac03b48961c28a95ddede791e6acd11badc42bd525`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 47.3 MB (47335673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc30fe62629bd57e3c30cc742318e93ce2b683db4ab86216d4beee4b1a7b515`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b3390cb29f5f0c292e2f8d7ec45226016ccb4d9da4a1ecdfe360a3ad800bfe`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 54.2 MB (54194487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cbd14d2e3df47bf8e869864ee40481ffc315219cb273719f30eed149f202f1`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:e7ea1538c52446049729fc67ffb475af9f53d0617fe740b14f9cbc069790c707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffdae39104c16879c5385ca28964292006cd4c3619f053270c0b098e043021d`

```dockerfile
```

-	Layers:
	-	`sha256:9a29e95021cd0ae7f3706feabad1eb2b7967dc5b1e321a3bf2689e8836496363`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 3.3 MB (3281849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7332b896fe40cdfbd95d4662ce6bce2225cbc360c03a24cd09151127c824273e`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:f21d770aecfa6f5b3c8be17145c3a53f25077af065712a7141d694f0d97b26d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141034501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81827ce9a09225b707046e00b02b52f5defa1683bd2d7fbbf9c13f3e17c0251`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:21:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:37 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1992ddd9cecefb103dedc6943668c7896d069b1da691bd24c0d9499f84d6da64`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 16.2 MB (16215493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f497b43d4d9797794c477df93dff8ded523e68c48ad5da1a5f587bc48e0ad711`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 1.2 MB (1232626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26beaa7f32c29bdf4fd372d5d50d6b8fbec26e9928d106853d6661fbb219b1f7`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 45.4 MB (45444866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4df68972b7230dc9b5752d1608fbfc9ecb9603276033b1e60f4aa46afcd46fb`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e246a3d532fab7f64251b325f763542998fb804327572d81b3e3837d041b1c3c`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 54.2 MB (54194523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d676ab9f1d84692d7cf4639d492326d67ea5a624319c7538d5e4786ffaef94`  
		Last Modified: Thu, 02 Jul 2026 05:21:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:366a8fa27a33c1c04b6bf2fd422d68a41aad1e68ce8af88ddbb1a2230caed111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a64a53e25ee2e4a04b01db751fe6d106440ce69c6f22c1c671f679cf5290396`

```dockerfile
```

-	Layers:
	-	`sha256:887006bbd7cadd358bc4f06136e963f723c55e7dea1d06736643325c84a6df37`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 3.3 MB (3285579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d644df31e81881d320df05cba5b8e5119fdea0f40aff1cb9f5c603cb384486`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:906dc9e999575acf32fc1d956c522ee3e541590fd6fded2d5d11534793effff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147094852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3997cfabe51f8d2c5a9b69931ae3056192c70eb2ff55960c271832707a9d0259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8319495ac1a0bba49cb001b24c9c44c25aefcca00352b13a1f5a9db3b1f75d09`  
		Last Modified: Thu, 02 Jul 2026 05:48:08 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31353453b892bd0a7dea03a82ab54b679ab5dabaac383a4ae57f644d3be11f01`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 17.9 MB (17902769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a9ad3c61ebf957ed2ad4f8994419f510d1a0336dd5e6dc6d43c0fe5abf821b`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 1.2 MB (1220122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff7f9ab080f047d5241f5ff265dfc6a614f25bf43b7ffaeeb93fe78de27ba62`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 45.7 MB (45652591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c5467e46f961867143cb1639133830157984122b5763fca5f3939412cc6646`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7095c21630c30f2c66f5417e073d64facf272053592d6e6fa51602d1a90a6ff3`  
		Last Modified: Thu, 02 Jul 2026 05:48:12 GMT  
		Size: 54.2 MB (54194489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5917dd93fcc224c95114e7c6568464ed8e901598fed68ba864cee0287da4b8e8`  
		Last Modified: Thu, 02 Jul 2026 05:48:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:fd8a7c6ebbd16cec0a182f24fa3f8b252e1bf75d7ca873967ee1bc18c6be0e0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb058dfcdbf13027759a876c6c4fb68b477ce22d15941db3e12e6e0f148af4c`

```dockerfile
```

-	Layers:
	-	`sha256:0ddb14f54e607f119642fcaa847d5cd138b1dab9760a9837ec771d6fedabaf42`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 3.3 MB (3282208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:655f86d795cc546a46f0f95358565ba6510a979ede27195d0803afaeeaaf1912`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:aff4bf242d6434346abd237b33c47cfa6ec7ab67202dab2afa6b3e635e66af0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149800665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a302d301cf843afad9d583946d38c0302a3c1bf17a28099b6b219dd3e8d377a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:32 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77198c253d4c148b166734846543fc957fd19355df52ac280685965c66817c6a`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 42.8 MB (42801432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad55a20b6d01696682716e13bc39378c581bc52d352d98bd68abe062ac7d51f`  
		Last Modified: Thu, 02 Jul 2026 06:43:05 GMT  
		Size: 54.2 MB (54194692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145a4f8433b94a02daf6d8ab81024b0d0a3448137558fddd545f182b2275a45d`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:a4032e72042180f795f844b2e7590605a923ba6543d91f28c1a2a9db0a17826f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2e87b093b7ce27f8621356efb2a415361efae40d01c56b7cf1cbec33c770c2`

```dockerfile
```

-	Layers:
	-	`sha256:a0be300ffc1f4ca356da3db7aa6e73a620ffacd310a16c560d619ba9d1e8b6b6`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 3.3 MB (3286109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:946dc549862fb6a82308b1574aaa7900f1bc208b4b8c277668d46ccbd63c5ed1`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:4b93fbd7f961713557c7137fc63ef5458ce9c88db99bde95c8c6f978d4c299f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141132457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844a96ac66c3306056c6377e8cf2cc78d9a0ec6b1541b337a61d42e520e32d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:43:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec24292cfc63c191c074f0879242af1035f16ff768232df3b4fc4ee34d3341`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af14c2d2d7fed2592fa08706d44e87ae0f3bc7f968b6a120ae9b60fd9adef55`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 17.4 MB (17447314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42c0dc9912ab01d3963ba508f23646cbe6149abca6d3206f89397836e34777`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.2 MB (1240479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce07530254bcee4345537e3bfdd6259d5ff94bcea43c187fc2cfe2ff8fa046a`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 41.4 MB (41354123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441f02d15edebd2debfa805633bbbbf7c499223c00fb100d18514989571cc67`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8e2a442dec4b0216e6273489b6877cd8e9729f8b28b3685bd7c6a87bc6a99c`  
		Last Modified: Thu, 02 Jul 2026 05:43:39 GMT  
		Size: 54.2 MB (54194496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67cd7b14502a8875e72f20110bcaea3d94aba93f8274cdc13c0caba0b06aea5a`  
		Last Modified: Thu, 02 Jul 2026 05:43:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:257b002389fb9120132626bfa0b5fe1f2518f29642d836a891563da91b9bda5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a89dbb42654f12d4c3184218afc1fd758aa2040f437495e95f4347b0c76e69`

```dockerfile
```

-	Layers:
	-	`sha256:6ffa5e0711f525a12d7249f498db90067ec9f7f9e5cf0f0b69c415a708efa0d9`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 3.3 MB (3277991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a3c471a227f7c5af0d106bf1f6fe4c15caaf188a3803f5b4db2252ce2cc7b43`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 36.5 KB (36478 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.11`

```console
$ docker pull cassandra@sha256:fe1432f22bd222c3c425eb834ca157b476c73c9255d7fac34135163c797e7c1a
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
$ docker pull cassandra@sha256:e832f9289003f5e8faa9664cd7a219e1dd982cb8224baf95fc07adf2bb3dbb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149186530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e8c26034b3b4580ca4e97126f4f47cad90297b63e42ebef308b51170f1c6ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc818705cb48c85fcfc5f58b68e6712fb45f0bd652bc0fb9e9caefdce3cab24b`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3095a30aab9577c1abdeeabf15f8e1ec7941eb46e8f35eeeb94386d8b2b2dbf9`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 18.1 MB (18149659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9492471474d1ea5abdb08b88efb7723a05237178f8d2bb7c2cb32e9ca1e38c64`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.3 MB (1266610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8dda93fac9ee7317e377ac03b48961c28a95ddede791e6acd11badc42bd525`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 47.3 MB (47335673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc30fe62629bd57e3c30cc742318e93ce2b683db4ab86216d4beee4b1a7b515`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b3390cb29f5f0c292e2f8d7ec45226016ccb4d9da4a1ecdfe360a3ad800bfe`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 54.2 MB (54194487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cbd14d2e3df47bf8e869864ee40481ffc315219cb273719f30eed149f202f1`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:e7ea1538c52446049729fc67ffb475af9f53d0617fe740b14f9cbc069790c707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffdae39104c16879c5385ca28964292006cd4c3619f053270c0b098e043021d`

```dockerfile
```

-	Layers:
	-	`sha256:9a29e95021cd0ae7f3706feabad1eb2b7967dc5b1e321a3bf2689e8836496363`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 3.3 MB (3281849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7332b896fe40cdfbd95d4662ce6bce2225cbc360c03a24cd09151127c824273e`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:f21d770aecfa6f5b3c8be17145c3a53f25077af065712a7141d694f0d97b26d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141034501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81827ce9a09225b707046e00b02b52f5defa1683bd2d7fbbf9c13f3e17c0251`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:21:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:37 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1992ddd9cecefb103dedc6943668c7896d069b1da691bd24c0d9499f84d6da64`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 16.2 MB (16215493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f497b43d4d9797794c477df93dff8ded523e68c48ad5da1a5f587bc48e0ad711`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 1.2 MB (1232626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26beaa7f32c29bdf4fd372d5d50d6b8fbec26e9928d106853d6661fbb219b1f7`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 45.4 MB (45444866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4df68972b7230dc9b5752d1608fbfc9ecb9603276033b1e60f4aa46afcd46fb`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e246a3d532fab7f64251b325f763542998fb804327572d81b3e3837d041b1c3c`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 54.2 MB (54194523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d676ab9f1d84692d7cf4639d492326d67ea5a624319c7538d5e4786ffaef94`  
		Last Modified: Thu, 02 Jul 2026 05:21:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:366a8fa27a33c1c04b6bf2fd422d68a41aad1e68ce8af88ddbb1a2230caed111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a64a53e25ee2e4a04b01db751fe6d106440ce69c6f22c1c671f679cf5290396`

```dockerfile
```

-	Layers:
	-	`sha256:887006bbd7cadd358bc4f06136e963f723c55e7dea1d06736643325c84a6df37`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 3.3 MB (3285579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d644df31e81881d320df05cba5b8e5119fdea0f40aff1cb9f5c603cb384486`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:906dc9e999575acf32fc1d956c522ee3e541590fd6fded2d5d11534793effff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147094852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3997cfabe51f8d2c5a9b69931ae3056192c70eb2ff55960c271832707a9d0259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8319495ac1a0bba49cb001b24c9c44c25aefcca00352b13a1f5a9db3b1f75d09`  
		Last Modified: Thu, 02 Jul 2026 05:48:08 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31353453b892bd0a7dea03a82ab54b679ab5dabaac383a4ae57f644d3be11f01`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 17.9 MB (17902769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a9ad3c61ebf957ed2ad4f8994419f510d1a0336dd5e6dc6d43c0fe5abf821b`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 1.2 MB (1220122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff7f9ab080f047d5241f5ff265dfc6a614f25bf43b7ffaeeb93fe78de27ba62`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 45.7 MB (45652591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c5467e46f961867143cb1639133830157984122b5763fca5f3939412cc6646`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7095c21630c30f2c66f5417e073d64facf272053592d6e6fa51602d1a90a6ff3`  
		Last Modified: Thu, 02 Jul 2026 05:48:12 GMT  
		Size: 54.2 MB (54194489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5917dd93fcc224c95114e7c6568464ed8e901598fed68ba864cee0287da4b8e8`  
		Last Modified: Thu, 02 Jul 2026 05:48:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:fd8a7c6ebbd16cec0a182f24fa3f8b252e1bf75d7ca873967ee1bc18c6be0e0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb058dfcdbf13027759a876c6c4fb68b477ce22d15941db3e12e6e0f148af4c`

```dockerfile
```

-	Layers:
	-	`sha256:0ddb14f54e607f119642fcaa847d5cd138b1dab9760a9837ec771d6fedabaf42`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 3.3 MB (3282208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:655f86d795cc546a46f0f95358565ba6510a979ede27195d0803afaeeaaf1912`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:aff4bf242d6434346abd237b33c47cfa6ec7ab67202dab2afa6b3e635e66af0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149800665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a302d301cf843afad9d583946d38c0302a3c1bf17a28099b6b219dd3e8d377a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:32 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77198c253d4c148b166734846543fc957fd19355df52ac280685965c66817c6a`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 42.8 MB (42801432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad55a20b6d01696682716e13bc39378c581bc52d352d98bd68abe062ac7d51f`  
		Last Modified: Thu, 02 Jul 2026 06:43:05 GMT  
		Size: 54.2 MB (54194692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145a4f8433b94a02daf6d8ab81024b0d0a3448137558fddd545f182b2275a45d`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:a4032e72042180f795f844b2e7590605a923ba6543d91f28c1a2a9db0a17826f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2e87b093b7ce27f8621356efb2a415361efae40d01c56b7cf1cbec33c770c2`

```dockerfile
```

-	Layers:
	-	`sha256:a0be300ffc1f4ca356da3db7aa6e73a620ffacd310a16c560d619ba9d1e8b6b6`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 3.3 MB (3286109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:946dc549862fb6a82308b1574aaa7900f1bc208b4b8c277668d46ccbd63c5ed1`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11` - linux; s390x

```console
$ docker pull cassandra@sha256:4b93fbd7f961713557c7137fc63ef5458ce9c88db99bde95c8c6f978d4c299f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141132457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844a96ac66c3306056c6377e8cf2cc78d9a0ec6b1541b337a61d42e520e32d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:43:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec24292cfc63c191c074f0879242af1035f16ff768232df3b4fc4ee34d3341`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af14c2d2d7fed2592fa08706d44e87ae0f3bc7f968b6a120ae9b60fd9adef55`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 17.4 MB (17447314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42c0dc9912ab01d3963ba508f23646cbe6149abca6d3206f89397836e34777`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.2 MB (1240479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce07530254bcee4345537e3bfdd6259d5ff94bcea43c187fc2cfe2ff8fa046a`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 41.4 MB (41354123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441f02d15edebd2debfa805633bbbbf7c499223c00fb100d18514989571cc67`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8e2a442dec4b0216e6273489b6877cd8e9729f8b28b3685bd7c6a87bc6a99c`  
		Last Modified: Thu, 02 Jul 2026 05:43:39 GMT  
		Size: 54.2 MB (54194496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67cd7b14502a8875e72f20110bcaea3d94aba93f8274cdc13c0caba0b06aea5a`  
		Last Modified: Thu, 02 Jul 2026 05:43:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11` - unknown; unknown

```console
$ docker pull cassandra@sha256:257b002389fb9120132626bfa0b5fe1f2518f29642d836a891563da91b9bda5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a89dbb42654f12d4c3184218afc1fd758aa2040f437495e95f4347b0c76e69`

```dockerfile
```

-	Layers:
	-	`sha256:6ffa5e0711f525a12d7249f498db90067ec9f7f9e5cf0f0b69c415a708efa0d9`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 3.3 MB (3277991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a3c471a227f7c5af0d106bf1f6fe4c15caaf188a3803f5b4db2252ce2cc7b43`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 36.5 KB (36478 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.11-bookworm`

```console
$ docker pull cassandra@sha256:fe1432f22bd222c3c425eb834ca157b476c73c9255d7fac34135163c797e7c1a
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
$ docker pull cassandra@sha256:e832f9289003f5e8faa9664cd7a219e1dd982cb8224baf95fc07adf2bb3dbb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149186530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e8c26034b3b4580ca4e97126f4f47cad90297b63e42ebef308b51170f1c6ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:13 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:13 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:13 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc818705cb48c85fcfc5f58b68e6712fb45f0bd652bc0fb9e9caefdce3cab24b`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3095a30aab9577c1abdeeabf15f8e1ec7941eb46e8f35eeeb94386d8b2b2dbf9`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 18.1 MB (18149659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9492471474d1ea5abdb08b88efb7723a05237178f8d2bb7c2cb32e9ca1e38c64`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 1.3 MB (1266610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8dda93fac9ee7317e377ac03b48961c28a95ddede791e6acd11badc42bd525`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 47.3 MB (47335673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc30fe62629bd57e3c30cc742318e93ce2b683db4ab86216d4beee4b1a7b515`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b3390cb29f5f0c292e2f8d7ec45226016ccb4d9da4a1ecdfe360a3ad800bfe`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 54.2 MB (54194487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cbd14d2e3df47bf8e869864ee40481ffc315219cb273719f30eed149f202f1`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:e7ea1538c52446049729fc67ffb475af9f53d0617fe740b14f9cbc069790c707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffdae39104c16879c5385ca28964292006cd4c3619f053270c0b098e043021d`

```dockerfile
```

-	Layers:
	-	`sha256:9a29e95021cd0ae7f3706feabad1eb2b7967dc5b1e321a3bf2689e8836496363`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 3.3 MB (3281849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7332b896fe40cdfbd95d4662ce6bce2225cbc360c03a24cd09151127c824273e`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:f21d770aecfa6f5b3c8be17145c3a53f25077af065712a7141d694f0d97b26d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141034501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81827ce9a09225b707046e00b02b52f5defa1683bd2d7fbbf9c13f3e17c0251`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:21:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:37 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1992ddd9cecefb103dedc6943668c7896d069b1da691bd24c0d9499f84d6da64`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 16.2 MB (16215493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f497b43d4d9797794c477df93dff8ded523e68c48ad5da1a5f587bc48e0ad711`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 1.2 MB (1232626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26beaa7f32c29bdf4fd372d5d50d6b8fbec26e9928d106853d6661fbb219b1f7`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 45.4 MB (45444866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4df68972b7230dc9b5752d1608fbfc9ecb9603276033b1e60f4aa46afcd46fb`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e246a3d532fab7f64251b325f763542998fb804327572d81b3e3837d041b1c3c`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 54.2 MB (54194523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d676ab9f1d84692d7cf4639d492326d67ea5a624319c7538d5e4786ffaef94`  
		Last Modified: Thu, 02 Jul 2026 05:21:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:366a8fa27a33c1c04b6bf2fd422d68a41aad1e68ce8af88ddbb1a2230caed111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a64a53e25ee2e4a04b01db751fe6d106440ce69c6f22c1c671f679cf5290396`

```dockerfile
```

-	Layers:
	-	`sha256:887006bbd7cadd358bc4f06136e963f723c55e7dea1d06736643325c84a6df37`  
		Last Modified: Thu, 02 Jul 2026 05:21:50 GMT  
		Size: 3.3 MB (3285579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d644df31e81881d320df05cba5b8e5119fdea0f40aff1cb9f5c603cb384486`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:906dc9e999575acf32fc1d956c522ee3e541590fd6fded2d5d11534793effff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147094852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3997cfabe51f8d2c5a9b69931ae3056192c70eb2ff55960c271832707a9d0259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:40 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:40 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:47:40 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:47:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:55 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8319495ac1a0bba49cb001b24c9c44c25aefcca00352b13a1f5a9db3b1f75d09`  
		Last Modified: Thu, 02 Jul 2026 05:48:08 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31353453b892bd0a7dea03a82ab54b679ab5dabaac383a4ae57f644d3be11f01`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 17.9 MB (17902769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a9ad3c61ebf957ed2ad4f8994419f510d1a0336dd5e6dc6d43c0fe5abf821b`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 1.2 MB (1220122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff7f9ab080f047d5241f5ff265dfc6a614f25bf43b7ffaeeb93fe78de27ba62`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 45.7 MB (45652591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c5467e46f961867143cb1639133830157984122b5763fca5f3939412cc6646`  
		Last Modified: Thu, 02 Jul 2026 05:48:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7095c21630c30f2c66f5417e073d64facf272053592d6e6fa51602d1a90a6ff3`  
		Last Modified: Thu, 02 Jul 2026 05:48:12 GMT  
		Size: 54.2 MB (54194489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5917dd93fcc224c95114e7c6568464ed8e901598fed68ba864cee0287da4b8e8`  
		Last Modified: Thu, 02 Jul 2026 05:48:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:fd8a7c6ebbd16cec0a182f24fa3f8b252e1bf75d7ca873967ee1bc18c6be0e0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb058dfcdbf13027759a876c6c4fb68b477ce22d15941db3e12e6e0f148af4c`

```dockerfile
```

-	Layers:
	-	`sha256:0ddb14f54e607f119642fcaa847d5cd138b1dab9760a9837ec771d6fedabaf42`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 3.3 MB (3282208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:655f86d795cc546a46f0f95358565ba6510a979ede27195d0803afaeeaaf1912`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:aff4bf242d6434346abd237b33c47cfa6ec7ab67202dab2afa6b3e635e66af0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149800665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a302d301cf843afad9d583946d38c0302a3c1bf17a28099b6b219dd3e8d377a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:32 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77198c253d4c148b166734846543fc957fd19355df52ac280685965c66817c6a`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 42.8 MB (42801432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad55a20b6d01696682716e13bc39378c581bc52d352d98bd68abe062ac7d51f`  
		Last Modified: Thu, 02 Jul 2026 06:43:05 GMT  
		Size: 54.2 MB (54194692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145a4f8433b94a02daf6d8ab81024b0d0a3448137558fddd545f182b2275a45d`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:a4032e72042180f795f844b2e7590605a923ba6543d91f28c1a2a9db0a17826f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2e87b093b7ce27f8621356efb2a415361efae40d01c56b7cf1cbec33c770c2`

```dockerfile
```

-	Layers:
	-	`sha256:a0be300ffc1f4ca356da3db7aa6e73a620ffacd310a16c560d619ba9d1e8b6b6`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 3.3 MB (3286109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:946dc549862fb6a82308b1574aaa7900f1bc208b4b8c277668d46ccbd63c5ed1`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.11-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:4b93fbd7f961713557c7137fc63ef5458ce9c88db99bde95c8c6f978d4c299f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141132457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844a96ac66c3306056c6377e8cf2cc78d9a0ec6b1541b337a61d42e520e32d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:43:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_VERSION=4.1.11
# Thu, 02 Jul 2026 05:43:02 GMT
ENV CASSANDRA_SHA512=c31ead4e137774964818b3acfc2a16c329cce412ebb003baf447c3d453800a590d970cbe98641bd81539fd7a7fb8a1b6b569e5072c93fc2e18f40eaa638225be
# Thu, 02 Jul 2026 05:43:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec24292cfc63c191c074f0879242af1035f16ff768232df3b4fc4ee34d3341`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af14c2d2d7fed2592fa08706d44e87ae0f3bc7f968b6a120ae9b60fd9adef55`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 17.4 MB (17447314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a42c0dc9912ab01d3963ba508f23646cbe6149abca6d3206f89397836e34777`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 1.2 MB (1240479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce07530254bcee4345537e3bfdd6259d5ff94bcea43c187fc2cfe2ff8fa046a`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 41.4 MB (41354123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441f02d15edebd2debfa805633bbbbf7c499223c00fb100d18514989571cc67`  
		Last Modified: Thu, 02 Jul 2026 05:43:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8e2a442dec4b0216e6273489b6877cd8e9729f8b28b3685bd7c6a87bc6a99c`  
		Last Modified: Thu, 02 Jul 2026 05:43:39 GMT  
		Size: 54.2 MB (54194496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67cd7b14502a8875e72f20110bcaea3d94aba93f8274cdc13c0caba0b06aea5a`  
		Last Modified: Thu, 02 Jul 2026 05:43:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.11-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:257b002389fb9120132626bfa0b5fe1f2518f29642d836a891563da91b9bda5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a89dbb42654f12d4c3184218afc1fd758aa2040f437495e95f4347b0c76e69`

```dockerfile
```

-	Layers:
	-	`sha256:6ffa5e0711f525a12d7249f498db90067ec9f7f9e5cf0f0b69c415a708efa0d9`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 3.3 MB (3277991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a3c471a227f7c5af0d106bf1f6fe4c15caaf188a3803f5b4db2252ce2cc7b43`  
		Last Modified: Thu, 02 Jul 2026 05:43:36 GMT  
		Size: 36.5 KB (36478 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5`

```console
$ docker pull cassandra@sha256:b89056c366c4b807380cd9a4ac865ad558c0b4d5aac342f69087d0169ca1ddcd
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
$ docker pull cassandra@sha256:f8a5482df0203099c47966e14f3d79d32a28f985ca0fdeceebc13900e198c977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169133693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2ff223bed9eae094d88b5fd7582f34a8f412ef9259f6870431b322cd0f1aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916e6e2b19fab0206b7db8bdc6b926b43d8d2bad532deda17a48c8b9d3be4d4b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99d06a4e22d2b866db9a84a7124d710a86c04ad4455dc302055fb0ac0659198`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 18.1 MB (18149685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8773db3c24c9123c4873c1a91599316242519b733916300383b96655c318b26d`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.3 MB (1266621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78445e2fd27e78a3d1aa4806641a16fefdfdae30b113eb8c3c706556186aa90d`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 47.6 MB (47558125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04520a8b8dad8222e0fafc68ec2256d5086bba23bb4ddee3b707e5e332ac3f19`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55eeaca0782a2d9ff01f2157c4b6c8a68b6bf3b76fa4fcb3aea91d54162a69`  
		Last Modified: Thu, 02 Jul 2026 05:47:46 GMT  
		Size: 73.9 MB (73919161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce2595dd56bd8c1a06ad61b4fd9ca42ca01d183b32d5ef00c11a90117041af`  
		Last Modified: Thu, 02 Jul 2026 05:47:45 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:71c047c24bfafc68abb020c403413f757f89a7edd82a102cc2016d6973821f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0740c2049449e9ca3facc87ca9fb3e6971714c402878aff6601d3489c065565f`

```dockerfile
```

-	Layers:
	-	`sha256:faa2e82bdefbfb2c85a70c4dbe6595026013828260c704abf85c0620c4dd5cd7`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 3.3 MB (3306826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37bd7b8fc71663a8bd14275d72b04abcb09810e0e750c405c2e4e597296ae12b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:e837beebef2a18b3d1ca69e6af578e5517b85950b424d211fbff73cbe49c1788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160440104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f521b2947765cb81855ab2e000252af6e069876ddb454f0ef2f9e26f4ccc4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:57 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:21:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e586f7785ceabc266d404ffc71152f333be0ea781d2c50340d1fa56496c60`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 16.2 MB (16215335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a80f687620edc6bd810c5ceb921f83102d1529ad1ee7d4776561f3780ba26b`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 1.2 MB (1232628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526a23fe163992b7dea1226e0e1a136f64f4f48d33c6ad9217b3d351efac637b`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 45.1 MB (45126033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbdceb423bf915eca8dc3dfb4e61474fa5ea711304056d15e690248f9abbf07`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa1941defffc2418524bd2541c39f32374d0c43797444b4ad2a5fec188913c`  
		Last Modified: Thu, 02 Jul 2026 05:21:55 GMT  
		Size: 73.9 MB (73919112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cac130b4b3a086cb7614f1b8819bbda7121b04f3a3a0c1c3876c498222f13c4`  
		Last Modified: Thu, 02 Jul 2026 05:21:54 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:c174b518658ca90d57c3c5fb3c3f92aee321e4841e600b93a16b157693f0d123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bb0d000cf4ca80e2e6726617453b46fdeebcccee055eccc6d197ed2a265e3b`

```dockerfile
```

-	Layers:
	-	`sha256:bc08ea7b4dd5888546b865910bbca33c3362774e31a3ab60149f3759749359c7`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 3.3 MB (3309309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097ead8769bb98a323325f65b25f926e1f6b7e24c118d1d74067916968b16ea6`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:5449fad84fdf88cc98a06e10fe40c5c59ccecb5ef6ad947aff0fafd3d08f44d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168208029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6c308d5e7e3d46977ed778ad36745d2184ae7c77cb6d8597dcae8ccb678eac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e39b2f0b343a88529b0db9cdb4998c3768c8486593955f5dafe79b7e633c911`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7b380a4a18fa66817885d3b250814761d73077f88e1d8db284e31738129eca`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 17.9 MB (17902849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7560e7877ef4fea8dfd90529dc3af76070432a687d1f7864070d55c44a97e4f8`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.2 MB (1220133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067ea9f1b9ce7034c15d89debe97c663777ba3b0934f75d02e13c3b57119bf34`  
		Last Modified: Thu, 02 Jul 2026 05:47:59 GMT  
		Size: 47.0 MB (47041115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e925dba90137ca2a837cde8fb64c63d32ec083a88b31fef93ee4e05ab5100e9`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a349dcdae625399e0b8aed57f9a93d4e793766c5395b4953cee1b9fcb2c85f03`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 73.9 MB (73919051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918bb29fc594e806302e2ee01356fb89ccc9b166f537cb1f1b4da650029e0b56`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:da6bd01b8ad601daa27534bb79ca8989db76b745c505809248fbd27bcc0359bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9182368d057d2dcf017345e32015bbbc30d8b4cab0ec8cb85f8623e02c531dbe`

```dockerfile
```

-	Layers:
	-	`sha256:d86084b423082ac86a80ee4c8cbaec88a8371fe1d7877c9778bdf44a37b3632d`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 3.3 MB (3306591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b67624ba536c18d2f754763985142bd58e97954e88b5ef318482e7495498c661`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; ppc64le

```console
$ docker pull cassandra@sha256:affaa2c7d5c6eef936caf9691e555cd2728f196e21e5c1aa58039c06c2d94704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174204759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b320d7f925b8aaac3fefad81780f7566ff99b9d287f1a64246e0591677dd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f961a3c3ce0c8262b1e5838ae9e58982d37d7d147bcd2b9aa8878c0dd53791d2`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 47.5 MB (47480914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc79701ce6c356017553f110318a57ce468426fd01f28ffc05d2a4db9de0aff0`  
		Last Modified: Thu, 02 Jul 2026 06:43:06 GMT  
		Size: 73.9 MB (73919301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535746987ea8429ca0f7a8757cb9552e1a821015654c4e655f5cf37c52a2eaba`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:ed594ae81ea3385836f969769f2000f0816cf2e70e02a5946a2c2aa09ed2d499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757bce9ff5f52ef84322b525e7507f6d9e70cb02e67834482ab87b538340f12a`

```dockerfile
```

-	Layers:
	-	`sha256:d442da9699e2bd53c1b1750fbf67c750eaa9540c203f10f8fe70a3001432b95f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 3.3 MB (3311092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2ef33d0f8ce1122933c4f66decd91a3aab551a65f0df2831787e476ca89568f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; s390x

```console
$ docker pull cassandra@sha256:44635a745e870e931b92ffc853d6b1487414fa0361358254d31e606789f49db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164031722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c9b30bb2de5de74957c1d4a500eeded3cc4c0ef83373afb3878571ba70fe40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:42:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:42:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:43:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:13 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f54adbc572b3941af5bfcf717dd9d92b69b3feea63cd329e976cc1938d02291`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276780954ae5df70bacc065ab2ebcc4937039e47d4584b27c689b0bb709a3e3e`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 17.4 MB (17447309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bd7b2249cc8aab265bcbaa5523bba93d1f59ad408858cc3b0b5f38e49268f0`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.2 MB (1240492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6c596d39af6e2022e538a837564508efb0bd7685b7598e2f563156289d0273`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 44.5 MB (44528785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdddea01d600cfb67be5f2489b67bb68ab43fd916009b186cb84f3d72a8c1c43`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e644cfeafcada9d9dccb86fae768732118f9219af7ec7f9fd3407a6375ad9d41`  
		Last Modified: Thu, 02 Jul 2026 05:43:35 GMT  
		Size: 73.9 MB (73919091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247304648af4495a10076dea94f5c961c8b947b67298540cd122b6c49617f7c9`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:c96e78620ea19fef08e866804f0d001b4f9415363d3fc3f4f485207470a6b28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b3b62328e2034185c92609852d75c7083914f7b94c9eb8e59214ce20e8a33`

```dockerfile
```

-	Layers:
	-	`sha256:44f5566f79378223e578f517688b5b1556b4da309ebbcfab283c15a0aa3cd902`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 3.3 MB (3302962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8374ca20f461001c845f8dcd59842beaa003170483bf3b4f7c01e7d707628e63`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5-bookworm`

```console
$ docker pull cassandra@sha256:b89056c366c4b807380cd9a4ac865ad558c0b4d5aac342f69087d0169ca1ddcd
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
$ docker pull cassandra@sha256:f8a5482df0203099c47966e14f3d79d32a28f985ca0fdeceebc13900e198c977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169133693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2ff223bed9eae094d88b5fd7582f34a8f412ef9259f6870431b322cd0f1aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916e6e2b19fab0206b7db8bdc6b926b43d8d2bad532deda17a48c8b9d3be4d4b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99d06a4e22d2b866db9a84a7124d710a86c04ad4455dc302055fb0ac0659198`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 18.1 MB (18149685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8773db3c24c9123c4873c1a91599316242519b733916300383b96655c318b26d`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.3 MB (1266621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78445e2fd27e78a3d1aa4806641a16fefdfdae30b113eb8c3c706556186aa90d`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 47.6 MB (47558125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04520a8b8dad8222e0fafc68ec2256d5086bba23bb4ddee3b707e5e332ac3f19`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55eeaca0782a2d9ff01f2157c4b6c8a68b6bf3b76fa4fcb3aea91d54162a69`  
		Last Modified: Thu, 02 Jul 2026 05:47:46 GMT  
		Size: 73.9 MB (73919161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce2595dd56bd8c1a06ad61b4fd9ca42ca01d183b32d5ef00c11a90117041af`  
		Last Modified: Thu, 02 Jul 2026 05:47:45 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:71c047c24bfafc68abb020c403413f757f89a7edd82a102cc2016d6973821f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0740c2049449e9ca3facc87ca9fb3e6971714c402878aff6601d3489c065565f`

```dockerfile
```

-	Layers:
	-	`sha256:faa2e82bdefbfb2c85a70c4dbe6595026013828260c704abf85c0620c4dd5cd7`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 3.3 MB (3306826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37bd7b8fc71663a8bd14275d72b04abcb09810e0e750c405c2e4e597296ae12b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:e837beebef2a18b3d1ca69e6af578e5517b85950b424d211fbff73cbe49c1788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160440104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f521b2947765cb81855ab2e000252af6e069876ddb454f0ef2f9e26f4ccc4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:57 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:21:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e586f7785ceabc266d404ffc71152f333be0ea781d2c50340d1fa56496c60`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 16.2 MB (16215335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a80f687620edc6bd810c5ceb921f83102d1529ad1ee7d4776561f3780ba26b`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 1.2 MB (1232628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526a23fe163992b7dea1226e0e1a136f64f4f48d33c6ad9217b3d351efac637b`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 45.1 MB (45126033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbdceb423bf915eca8dc3dfb4e61474fa5ea711304056d15e690248f9abbf07`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa1941defffc2418524bd2541c39f32374d0c43797444b4ad2a5fec188913c`  
		Last Modified: Thu, 02 Jul 2026 05:21:55 GMT  
		Size: 73.9 MB (73919112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cac130b4b3a086cb7614f1b8819bbda7121b04f3a3a0c1c3876c498222f13c4`  
		Last Modified: Thu, 02 Jul 2026 05:21:54 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c174b518658ca90d57c3c5fb3c3f92aee321e4841e600b93a16b157693f0d123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bb0d000cf4ca80e2e6726617453b46fdeebcccee055eccc6d197ed2a265e3b`

```dockerfile
```

-	Layers:
	-	`sha256:bc08ea7b4dd5888546b865910bbca33c3362774e31a3ab60149f3759749359c7`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 3.3 MB (3309309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097ead8769bb98a323325f65b25f926e1f6b7e24c118d1d74067916968b16ea6`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:5449fad84fdf88cc98a06e10fe40c5c59ccecb5ef6ad947aff0fafd3d08f44d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168208029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6c308d5e7e3d46977ed778ad36745d2184ae7c77cb6d8597dcae8ccb678eac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e39b2f0b343a88529b0db9cdb4998c3768c8486593955f5dafe79b7e633c911`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7b380a4a18fa66817885d3b250814761d73077f88e1d8db284e31738129eca`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 17.9 MB (17902849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7560e7877ef4fea8dfd90529dc3af76070432a687d1f7864070d55c44a97e4f8`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.2 MB (1220133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067ea9f1b9ce7034c15d89debe97c663777ba3b0934f75d02e13c3b57119bf34`  
		Last Modified: Thu, 02 Jul 2026 05:47:59 GMT  
		Size: 47.0 MB (47041115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e925dba90137ca2a837cde8fb64c63d32ec083a88b31fef93ee4e05ab5100e9`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a349dcdae625399e0b8aed57f9a93d4e793766c5395b4953cee1b9fcb2c85f03`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 73.9 MB (73919051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918bb29fc594e806302e2ee01356fb89ccc9b166f537cb1f1b4da650029e0b56`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:da6bd01b8ad601daa27534bb79ca8989db76b745c505809248fbd27bcc0359bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9182368d057d2dcf017345e32015bbbc30d8b4cab0ec8cb85f8623e02c531dbe`

```dockerfile
```

-	Layers:
	-	`sha256:d86084b423082ac86a80ee4c8cbaec88a8371fe1d7877c9778bdf44a37b3632d`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 3.3 MB (3306591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b67624ba536c18d2f754763985142bd58e97954e88b5ef318482e7495498c661`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:affaa2c7d5c6eef936caf9691e555cd2728f196e21e5c1aa58039c06c2d94704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174204759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b320d7f925b8aaac3fefad81780f7566ff99b9d287f1a64246e0591677dd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f961a3c3ce0c8262b1e5838ae9e58982d37d7d147bcd2b9aa8878c0dd53791d2`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 47.5 MB (47480914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc79701ce6c356017553f110318a57ce468426fd01f28ffc05d2a4db9de0aff0`  
		Last Modified: Thu, 02 Jul 2026 06:43:06 GMT  
		Size: 73.9 MB (73919301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535746987ea8429ca0f7a8757cb9552e1a821015654c4e655f5cf37c52a2eaba`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:ed594ae81ea3385836f969769f2000f0816cf2e70e02a5946a2c2aa09ed2d499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757bce9ff5f52ef84322b525e7507f6d9e70cb02e67834482ab87b538340f12a`

```dockerfile
```

-	Layers:
	-	`sha256:d442da9699e2bd53c1b1750fbf67c750eaa9540c203f10f8fe70a3001432b95f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 3.3 MB (3311092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2ef33d0f8ce1122933c4f66decd91a3aab551a65f0df2831787e476ca89568f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:44635a745e870e931b92ffc853d6b1487414fa0361358254d31e606789f49db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164031722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c9b30bb2de5de74957c1d4a500eeded3cc4c0ef83373afb3878571ba70fe40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:42:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:42:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:43:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:13 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f54adbc572b3941af5bfcf717dd9d92b69b3feea63cd329e976cc1938d02291`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276780954ae5df70bacc065ab2ebcc4937039e47d4584b27c689b0bb709a3e3e`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 17.4 MB (17447309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bd7b2249cc8aab265bcbaa5523bba93d1f59ad408858cc3b0b5f38e49268f0`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.2 MB (1240492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6c596d39af6e2022e538a837564508efb0bd7685b7598e2f563156289d0273`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 44.5 MB (44528785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdddea01d600cfb67be5f2489b67bb68ab43fd916009b186cb84f3d72a8c1c43`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e644cfeafcada9d9dccb86fae768732118f9219af7ec7f9fd3407a6375ad9d41`  
		Last Modified: Thu, 02 Jul 2026 05:43:35 GMT  
		Size: 73.9 MB (73919091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247304648af4495a10076dea94f5c961c8b947b67298540cd122b6c49617f7c9`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c96e78620ea19fef08e866804f0d001b4f9415363d3fc3f4f485207470a6b28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b3b62328e2034185c92609852d75c7083914f7b94c9eb8e59214ce20e8a33`

```dockerfile
```

-	Layers:
	-	`sha256:44f5566f79378223e578f517688b5b1556b4da309ebbcfab283c15a0aa3cd902`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 3.3 MB (3302962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8374ca20f461001c845f8dcd59842beaa003170483bf3b4f7c01e7d707628e63`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0`

```console
$ docker pull cassandra@sha256:b89056c366c4b807380cd9a4ac865ad558c0b4d5aac342f69087d0169ca1ddcd
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
$ docker pull cassandra@sha256:f8a5482df0203099c47966e14f3d79d32a28f985ca0fdeceebc13900e198c977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169133693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2ff223bed9eae094d88b5fd7582f34a8f412ef9259f6870431b322cd0f1aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916e6e2b19fab0206b7db8bdc6b926b43d8d2bad532deda17a48c8b9d3be4d4b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99d06a4e22d2b866db9a84a7124d710a86c04ad4455dc302055fb0ac0659198`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 18.1 MB (18149685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8773db3c24c9123c4873c1a91599316242519b733916300383b96655c318b26d`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.3 MB (1266621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78445e2fd27e78a3d1aa4806641a16fefdfdae30b113eb8c3c706556186aa90d`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 47.6 MB (47558125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04520a8b8dad8222e0fafc68ec2256d5086bba23bb4ddee3b707e5e332ac3f19`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55eeaca0782a2d9ff01f2157c4b6c8a68b6bf3b76fa4fcb3aea91d54162a69`  
		Last Modified: Thu, 02 Jul 2026 05:47:46 GMT  
		Size: 73.9 MB (73919161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce2595dd56bd8c1a06ad61b4fd9ca42ca01d183b32d5ef00c11a90117041af`  
		Last Modified: Thu, 02 Jul 2026 05:47:45 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:71c047c24bfafc68abb020c403413f757f89a7edd82a102cc2016d6973821f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0740c2049449e9ca3facc87ca9fb3e6971714c402878aff6601d3489c065565f`

```dockerfile
```

-	Layers:
	-	`sha256:faa2e82bdefbfb2c85a70c4dbe6595026013828260c704abf85c0620c4dd5cd7`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 3.3 MB (3306826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37bd7b8fc71663a8bd14275d72b04abcb09810e0e750c405c2e4e597296ae12b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:e837beebef2a18b3d1ca69e6af578e5517b85950b424d211fbff73cbe49c1788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160440104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f521b2947765cb81855ab2e000252af6e069876ddb454f0ef2f9e26f4ccc4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:57 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:21:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e586f7785ceabc266d404ffc71152f333be0ea781d2c50340d1fa56496c60`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 16.2 MB (16215335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a80f687620edc6bd810c5ceb921f83102d1529ad1ee7d4776561f3780ba26b`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 1.2 MB (1232628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526a23fe163992b7dea1226e0e1a136f64f4f48d33c6ad9217b3d351efac637b`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 45.1 MB (45126033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbdceb423bf915eca8dc3dfb4e61474fa5ea711304056d15e690248f9abbf07`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa1941defffc2418524bd2541c39f32374d0c43797444b4ad2a5fec188913c`  
		Last Modified: Thu, 02 Jul 2026 05:21:55 GMT  
		Size: 73.9 MB (73919112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cac130b4b3a086cb7614f1b8819bbda7121b04f3a3a0c1c3876c498222f13c4`  
		Last Modified: Thu, 02 Jul 2026 05:21:54 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:c174b518658ca90d57c3c5fb3c3f92aee321e4841e600b93a16b157693f0d123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bb0d000cf4ca80e2e6726617453b46fdeebcccee055eccc6d197ed2a265e3b`

```dockerfile
```

-	Layers:
	-	`sha256:bc08ea7b4dd5888546b865910bbca33c3362774e31a3ab60149f3759749359c7`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 3.3 MB (3309309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097ead8769bb98a323325f65b25f926e1f6b7e24c118d1d74067916968b16ea6`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:5449fad84fdf88cc98a06e10fe40c5c59ccecb5ef6ad947aff0fafd3d08f44d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168208029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6c308d5e7e3d46977ed778ad36745d2184ae7c77cb6d8597dcae8ccb678eac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e39b2f0b343a88529b0db9cdb4998c3768c8486593955f5dafe79b7e633c911`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7b380a4a18fa66817885d3b250814761d73077f88e1d8db284e31738129eca`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 17.9 MB (17902849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7560e7877ef4fea8dfd90529dc3af76070432a687d1f7864070d55c44a97e4f8`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.2 MB (1220133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067ea9f1b9ce7034c15d89debe97c663777ba3b0934f75d02e13c3b57119bf34`  
		Last Modified: Thu, 02 Jul 2026 05:47:59 GMT  
		Size: 47.0 MB (47041115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e925dba90137ca2a837cde8fb64c63d32ec083a88b31fef93ee4e05ab5100e9`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a349dcdae625399e0b8aed57f9a93d4e793766c5395b4953cee1b9fcb2c85f03`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 73.9 MB (73919051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918bb29fc594e806302e2ee01356fb89ccc9b166f537cb1f1b4da650029e0b56`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:da6bd01b8ad601daa27534bb79ca8989db76b745c505809248fbd27bcc0359bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9182368d057d2dcf017345e32015bbbc30d8b4cab0ec8cb85f8623e02c531dbe`

```dockerfile
```

-	Layers:
	-	`sha256:d86084b423082ac86a80ee4c8cbaec88a8371fe1d7877c9778bdf44a37b3632d`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 3.3 MB (3306591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b67624ba536c18d2f754763985142bd58e97954e88b5ef318482e7495498c661`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:affaa2c7d5c6eef936caf9691e555cd2728f196e21e5c1aa58039c06c2d94704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174204759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b320d7f925b8aaac3fefad81780f7566ff99b9d287f1a64246e0591677dd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f961a3c3ce0c8262b1e5838ae9e58982d37d7d147bcd2b9aa8878c0dd53791d2`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 47.5 MB (47480914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc79701ce6c356017553f110318a57ce468426fd01f28ffc05d2a4db9de0aff0`  
		Last Modified: Thu, 02 Jul 2026 06:43:06 GMT  
		Size: 73.9 MB (73919301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535746987ea8429ca0f7a8757cb9552e1a821015654c4e655f5cf37c52a2eaba`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:ed594ae81ea3385836f969769f2000f0816cf2e70e02a5946a2c2aa09ed2d499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757bce9ff5f52ef84322b525e7507f6d9e70cb02e67834482ab87b538340f12a`

```dockerfile
```

-	Layers:
	-	`sha256:d442da9699e2bd53c1b1750fbf67c750eaa9540c203f10f8fe70a3001432b95f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 3.3 MB (3311092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2ef33d0f8ce1122933c4f66decd91a3aab551a65f0df2831787e476ca89568f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; s390x

```console
$ docker pull cassandra@sha256:44635a745e870e931b92ffc853d6b1487414fa0361358254d31e606789f49db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164031722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c9b30bb2de5de74957c1d4a500eeded3cc4c0ef83373afb3878571ba70fe40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:42:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:42:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:43:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:13 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f54adbc572b3941af5bfcf717dd9d92b69b3feea63cd329e976cc1938d02291`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276780954ae5df70bacc065ab2ebcc4937039e47d4584b27c689b0bb709a3e3e`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 17.4 MB (17447309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bd7b2249cc8aab265bcbaa5523bba93d1f59ad408858cc3b0b5f38e49268f0`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.2 MB (1240492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6c596d39af6e2022e538a837564508efb0bd7685b7598e2f563156289d0273`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 44.5 MB (44528785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdddea01d600cfb67be5f2489b67bb68ab43fd916009b186cb84f3d72a8c1c43`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e644cfeafcada9d9dccb86fae768732118f9219af7ec7f9fd3407a6375ad9d41`  
		Last Modified: Thu, 02 Jul 2026 05:43:35 GMT  
		Size: 73.9 MB (73919091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247304648af4495a10076dea94f5c961c8b947b67298540cd122b6c49617f7c9`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:c96e78620ea19fef08e866804f0d001b4f9415363d3fc3f4f485207470a6b28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b3b62328e2034185c92609852d75c7083914f7b94c9eb8e59214ce20e8a33`

```dockerfile
```

-	Layers:
	-	`sha256:44f5566f79378223e578f517688b5b1556b4da309ebbcfab283c15a0aa3cd902`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 3.3 MB (3302962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8374ca20f461001c845f8dcd59842beaa003170483bf3b4f7c01e7d707628e63`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0-bookworm`

```console
$ docker pull cassandra@sha256:b89056c366c4b807380cd9a4ac865ad558c0b4d5aac342f69087d0169ca1ddcd
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
$ docker pull cassandra@sha256:f8a5482df0203099c47966e14f3d79d32a28f985ca0fdeceebc13900e198c977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169133693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2ff223bed9eae094d88b5fd7582f34a8f412ef9259f6870431b322cd0f1aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916e6e2b19fab0206b7db8bdc6b926b43d8d2bad532deda17a48c8b9d3be4d4b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99d06a4e22d2b866db9a84a7124d710a86c04ad4455dc302055fb0ac0659198`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 18.1 MB (18149685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8773db3c24c9123c4873c1a91599316242519b733916300383b96655c318b26d`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.3 MB (1266621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78445e2fd27e78a3d1aa4806641a16fefdfdae30b113eb8c3c706556186aa90d`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 47.6 MB (47558125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04520a8b8dad8222e0fafc68ec2256d5086bba23bb4ddee3b707e5e332ac3f19`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55eeaca0782a2d9ff01f2157c4b6c8a68b6bf3b76fa4fcb3aea91d54162a69`  
		Last Modified: Thu, 02 Jul 2026 05:47:46 GMT  
		Size: 73.9 MB (73919161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce2595dd56bd8c1a06ad61b4fd9ca42ca01d183b32d5ef00c11a90117041af`  
		Last Modified: Thu, 02 Jul 2026 05:47:45 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:71c047c24bfafc68abb020c403413f757f89a7edd82a102cc2016d6973821f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0740c2049449e9ca3facc87ca9fb3e6971714c402878aff6601d3489c065565f`

```dockerfile
```

-	Layers:
	-	`sha256:faa2e82bdefbfb2c85a70c4dbe6595026013828260c704abf85c0620c4dd5cd7`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 3.3 MB (3306826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37bd7b8fc71663a8bd14275d72b04abcb09810e0e750c405c2e4e597296ae12b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:e837beebef2a18b3d1ca69e6af578e5517b85950b424d211fbff73cbe49c1788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160440104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f521b2947765cb81855ab2e000252af6e069876ddb454f0ef2f9e26f4ccc4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:57 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:21:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e586f7785ceabc266d404ffc71152f333be0ea781d2c50340d1fa56496c60`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 16.2 MB (16215335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a80f687620edc6bd810c5ceb921f83102d1529ad1ee7d4776561f3780ba26b`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 1.2 MB (1232628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526a23fe163992b7dea1226e0e1a136f64f4f48d33c6ad9217b3d351efac637b`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 45.1 MB (45126033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbdceb423bf915eca8dc3dfb4e61474fa5ea711304056d15e690248f9abbf07`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa1941defffc2418524bd2541c39f32374d0c43797444b4ad2a5fec188913c`  
		Last Modified: Thu, 02 Jul 2026 05:21:55 GMT  
		Size: 73.9 MB (73919112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cac130b4b3a086cb7614f1b8819bbda7121b04f3a3a0c1c3876c498222f13c4`  
		Last Modified: Thu, 02 Jul 2026 05:21:54 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c174b518658ca90d57c3c5fb3c3f92aee321e4841e600b93a16b157693f0d123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bb0d000cf4ca80e2e6726617453b46fdeebcccee055eccc6d197ed2a265e3b`

```dockerfile
```

-	Layers:
	-	`sha256:bc08ea7b4dd5888546b865910bbca33c3362774e31a3ab60149f3759749359c7`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 3.3 MB (3309309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097ead8769bb98a323325f65b25f926e1f6b7e24c118d1d74067916968b16ea6`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:5449fad84fdf88cc98a06e10fe40c5c59ccecb5ef6ad947aff0fafd3d08f44d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168208029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6c308d5e7e3d46977ed778ad36745d2184ae7c77cb6d8597dcae8ccb678eac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e39b2f0b343a88529b0db9cdb4998c3768c8486593955f5dafe79b7e633c911`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7b380a4a18fa66817885d3b250814761d73077f88e1d8db284e31738129eca`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 17.9 MB (17902849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7560e7877ef4fea8dfd90529dc3af76070432a687d1f7864070d55c44a97e4f8`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.2 MB (1220133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067ea9f1b9ce7034c15d89debe97c663777ba3b0934f75d02e13c3b57119bf34`  
		Last Modified: Thu, 02 Jul 2026 05:47:59 GMT  
		Size: 47.0 MB (47041115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e925dba90137ca2a837cde8fb64c63d32ec083a88b31fef93ee4e05ab5100e9`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a349dcdae625399e0b8aed57f9a93d4e793766c5395b4953cee1b9fcb2c85f03`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 73.9 MB (73919051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918bb29fc594e806302e2ee01356fb89ccc9b166f537cb1f1b4da650029e0b56`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:da6bd01b8ad601daa27534bb79ca8989db76b745c505809248fbd27bcc0359bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9182368d057d2dcf017345e32015bbbc30d8b4cab0ec8cb85f8623e02c531dbe`

```dockerfile
```

-	Layers:
	-	`sha256:d86084b423082ac86a80ee4c8cbaec88a8371fe1d7877c9778bdf44a37b3632d`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 3.3 MB (3306591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b67624ba536c18d2f754763985142bd58e97954e88b5ef318482e7495498c661`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:affaa2c7d5c6eef936caf9691e555cd2728f196e21e5c1aa58039c06c2d94704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174204759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b320d7f925b8aaac3fefad81780f7566ff99b9d287f1a64246e0591677dd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f961a3c3ce0c8262b1e5838ae9e58982d37d7d147bcd2b9aa8878c0dd53791d2`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 47.5 MB (47480914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc79701ce6c356017553f110318a57ce468426fd01f28ffc05d2a4db9de0aff0`  
		Last Modified: Thu, 02 Jul 2026 06:43:06 GMT  
		Size: 73.9 MB (73919301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535746987ea8429ca0f7a8757cb9552e1a821015654c4e655f5cf37c52a2eaba`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:ed594ae81ea3385836f969769f2000f0816cf2e70e02a5946a2c2aa09ed2d499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757bce9ff5f52ef84322b525e7507f6d9e70cb02e67834482ab87b538340f12a`

```dockerfile
```

-	Layers:
	-	`sha256:d442da9699e2bd53c1b1750fbf67c750eaa9540c203f10f8fe70a3001432b95f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 3.3 MB (3311092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2ef33d0f8ce1122933c4f66decd91a3aab551a65f0df2831787e476ca89568f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:44635a745e870e931b92ffc853d6b1487414fa0361358254d31e606789f49db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164031722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c9b30bb2de5de74957c1d4a500eeded3cc4c0ef83373afb3878571ba70fe40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:42:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:42:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:43:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:13 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f54adbc572b3941af5bfcf717dd9d92b69b3feea63cd329e976cc1938d02291`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276780954ae5df70bacc065ab2ebcc4937039e47d4584b27c689b0bb709a3e3e`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 17.4 MB (17447309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bd7b2249cc8aab265bcbaa5523bba93d1f59ad408858cc3b0b5f38e49268f0`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.2 MB (1240492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6c596d39af6e2022e538a837564508efb0bd7685b7598e2f563156289d0273`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 44.5 MB (44528785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdddea01d600cfb67be5f2489b67bb68ab43fd916009b186cb84f3d72a8c1c43`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e644cfeafcada9d9dccb86fae768732118f9219af7ec7f9fd3407a6375ad9d41`  
		Last Modified: Thu, 02 Jul 2026 05:43:35 GMT  
		Size: 73.9 MB (73919091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247304648af4495a10076dea94f5c961c8b947b67298540cd122b6c49617f7c9`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c96e78620ea19fef08e866804f0d001b4f9415363d3fc3f4f485207470a6b28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b3b62328e2034185c92609852d75c7083914f7b94c9eb8e59214ce20e8a33`

```dockerfile
```

-	Layers:
	-	`sha256:44f5566f79378223e578f517688b5b1556b4da309ebbcfab283c15a0aa3cd902`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 3.3 MB (3302962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8374ca20f461001c845f8dcd59842beaa003170483bf3b4f7c01e7d707628e63`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.8`

```console
$ docker pull cassandra@sha256:b89056c366c4b807380cd9a4ac865ad558c0b4d5aac342f69087d0169ca1ddcd
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
$ docker pull cassandra@sha256:f8a5482df0203099c47966e14f3d79d32a28f985ca0fdeceebc13900e198c977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169133693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2ff223bed9eae094d88b5fd7582f34a8f412ef9259f6870431b322cd0f1aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916e6e2b19fab0206b7db8bdc6b926b43d8d2bad532deda17a48c8b9d3be4d4b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99d06a4e22d2b866db9a84a7124d710a86c04ad4455dc302055fb0ac0659198`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 18.1 MB (18149685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8773db3c24c9123c4873c1a91599316242519b733916300383b96655c318b26d`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.3 MB (1266621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78445e2fd27e78a3d1aa4806641a16fefdfdae30b113eb8c3c706556186aa90d`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 47.6 MB (47558125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04520a8b8dad8222e0fafc68ec2256d5086bba23bb4ddee3b707e5e332ac3f19`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55eeaca0782a2d9ff01f2157c4b6c8a68b6bf3b76fa4fcb3aea91d54162a69`  
		Last Modified: Thu, 02 Jul 2026 05:47:46 GMT  
		Size: 73.9 MB (73919161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce2595dd56bd8c1a06ad61b4fd9ca42ca01d183b32d5ef00c11a90117041af`  
		Last Modified: Thu, 02 Jul 2026 05:47:45 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:71c047c24bfafc68abb020c403413f757f89a7edd82a102cc2016d6973821f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0740c2049449e9ca3facc87ca9fb3e6971714c402878aff6601d3489c065565f`

```dockerfile
```

-	Layers:
	-	`sha256:faa2e82bdefbfb2c85a70c4dbe6595026013828260c704abf85c0620c4dd5cd7`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 3.3 MB (3306826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37bd7b8fc71663a8bd14275d72b04abcb09810e0e750c405c2e4e597296ae12b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:e837beebef2a18b3d1ca69e6af578e5517b85950b424d211fbff73cbe49c1788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160440104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f521b2947765cb81855ab2e000252af6e069876ddb454f0ef2f9e26f4ccc4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:57 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:21:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e586f7785ceabc266d404ffc71152f333be0ea781d2c50340d1fa56496c60`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 16.2 MB (16215335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a80f687620edc6bd810c5ceb921f83102d1529ad1ee7d4776561f3780ba26b`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 1.2 MB (1232628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526a23fe163992b7dea1226e0e1a136f64f4f48d33c6ad9217b3d351efac637b`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 45.1 MB (45126033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbdceb423bf915eca8dc3dfb4e61474fa5ea711304056d15e690248f9abbf07`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa1941defffc2418524bd2541c39f32374d0c43797444b4ad2a5fec188913c`  
		Last Modified: Thu, 02 Jul 2026 05:21:55 GMT  
		Size: 73.9 MB (73919112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cac130b4b3a086cb7614f1b8819bbda7121b04f3a3a0c1c3876c498222f13c4`  
		Last Modified: Thu, 02 Jul 2026 05:21:54 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:c174b518658ca90d57c3c5fb3c3f92aee321e4841e600b93a16b157693f0d123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bb0d000cf4ca80e2e6726617453b46fdeebcccee055eccc6d197ed2a265e3b`

```dockerfile
```

-	Layers:
	-	`sha256:bc08ea7b4dd5888546b865910bbca33c3362774e31a3ab60149f3759749359c7`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 3.3 MB (3309309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097ead8769bb98a323325f65b25f926e1f6b7e24c118d1d74067916968b16ea6`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:5449fad84fdf88cc98a06e10fe40c5c59ccecb5ef6ad947aff0fafd3d08f44d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168208029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6c308d5e7e3d46977ed778ad36745d2184ae7c77cb6d8597dcae8ccb678eac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e39b2f0b343a88529b0db9cdb4998c3768c8486593955f5dafe79b7e633c911`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7b380a4a18fa66817885d3b250814761d73077f88e1d8db284e31738129eca`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 17.9 MB (17902849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7560e7877ef4fea8dfd90529dc3af76070432a687d1f7864070d55c44a97e4f8`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.2 MB (1220133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067ea9f1b9ce7034c15d89debe97c663777ba3b0934f75d02e13c3b57119bf34`  
		Last Modified: Thu, 02 Jul 2026 05:47:59 GMT  
		Size: 47.0 MB (47041115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e925dba90137ca2a837cde8fb64c63d32ec083a88b31fef93ee4e05ab5100e9`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a349dcdae625399e0b8aed57f9a93d4e793766c5395b4953cee1b9fcb2c85f03`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 73.9 MB (73919051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918bb29fc594e806302e2ee01356fb89ccc9b166f537cb1f1b4da650029e0b56`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:da6bd01b8ad601daa27534bb79ca8989db76b745c505809248fbd27bcc0359bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9182368d057d2dcf017345e32015bbbc30d8b4cab0ec8cb85f8623e02c531dbe`

```dockerfile
```

-	Layers:
	-	`sha256:d86084b423082ac86a80ee4c8cbaec88a8371fe1d7877c9778bdf44a37b3632d`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 3.3 MB (3306591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b67624ba536c18d2f754763985142bd58e97954e88b5ef318482e7495498c661`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; ppc64le

```console
$ docker pull cassandra@sha256:affaa2c7d5c6eef936caf9691e555cd2728f196e21e5c1aa58039c06c2d94704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174204759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b320d7f925b8aaac3fefad81780f7566ff99b9d287f1a64246e0591677dd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f961a3c3ce0c8262b1e5838ae9e58982d37d7d147bcd2b9aa8878c0dd53791d2`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 47.5 MB (47480914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc79701ce6c356017553f110318a57ce468426fd01f28ffc05d2a4db9de0aff0`  
		Last Modified: Thu, 02 Jul 2026 06:43:06 GMT  
		Size: 73.9 MB (73919301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535746987ea8429ca0f7a8757cb9552e1a821015654c4e655f5cf37c52a2eaba`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:ed594ae81ea3385836f969769f2000f0816cf2e70e02a5946a2c2aa09ed2d499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757bce9ff5f52ef84322b525e7507f6d9e70cb02e67834482ab87b538340f12a`

```dockerfile
```

-	Layers:
	-	`sha256:d442da9699e2bd53c1b1750fbf67c750eaa9540c203f10f8fe70a3001432b95f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 3.3 MB (3311092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2ef33d0f8ce1122933c4f66decd91a3aab551a65f0df2831787e476ca89568f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8` - linux; s390x

```console
$ docker pull cassandra@sha256:44635a745e870e931b92ffc853d6b1487414fa0361358254d31e606789f49db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164031722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c9b30bb2de5de74957c1d4a500eeded3cc4c0ef83373afb3878571ba70fe40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:42:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:42:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:43:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:13 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f54adbc572b3941af5bfcf717dd9d92b69b3feea63cd329e976cc1938d02291`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276780954ae5df70bacc065ab2ebcc4937039e47d4584b27c689b0bb709a3e3e`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 17.4 MB (17447309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bd7b2249cc8aab265bcbaa5523bba93d1f59ad408858cc3b0b5f38e49268f0`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.2 MB (1240492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6c596d39af6e2022e538a837564508efb0bd7685b7598e2f563156289d0273`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 44.5 MB (44528785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdddea01d600cfb67be5f2489b67bb68ab43fd916009b186cb84f3d72a8c1c43`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e644cfeafcada9d9dccb86fae768732118f9219af7ec7f9fd3407a6375ad9d41`  
		Last Modified: Thu, 02 Jul 2026 05:43:35 GMT  
		Size: 73.9 MB (73919091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247304648af4495a10076dea94f5c961c8b947b67298540cd122b6c49617f7c9`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8` - unknown; unknown

```console
$ docker pull cassandra@sha256:c96e78620ea19fef08e866804f0d001b4f9415363d3fc3f4f485207470a6b28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b3b62328e2034185c92609852d75c7083914f7b94c9eb8e59214ce20e8a33`

```dockerfile
```

-	Layers:
	-	`sha256:44f5566f79378223e578f517688b5b1556b4da309ebbcfab283c15a0aa3cd902`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 3.3 MB (3302962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8374ca20f461001c845f8dcd59842beaa003170483bf3b4f7c01e7d707628e63`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.8-bookworm`

```console
$ docker pull cassandra@sha256:b89056c366c4b807380cd9a4ac865ad558c0b4d5aac342f69087d0169ca1ddcd
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
$ docker pull cassandra@sha256:f8a5482df0203099c47966e14f3d79d32a28f985ca0fdeceebc13900e198c977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169133693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2ff223bed9eae094d88b5fd7582f34a8f412ef9259f6870431b322cd0f1aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916e6e2b19fab0206b7db8bdc6b926b43d8d2bad532deda17a48c8b9d3be4d4b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99d06a4e22d2b866db9a84a7124d710a86c04ad4455dc302055fb0ac0659198`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 18.1 MB (18149685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8773db3c24c9123c4873c1a91599316242519b733916300383b96655c318b26d`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.3 MB (1266621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78445e2fd27e78a3d1aa4806641a16fefdfdae30b113eb8c3c706556186aa90d`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 47.6 MB (47558125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04520a8b8dad8222e0fafc68ec2256d5086bba23bb4ddee3b707e5e332ac3f19`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55eeaca0782a2d9ff01f2157c4b6c8a68b6bf3b76fa4fcb3aea91d54162a69`  
		Last Modified: Thu, 02 Jul 2026 05:47:46 GMT  
		Size: 73.9 MB (73919161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce2595dd56bd8c1a06ad61b4fd9ca42ca01d183b32d5ef00c11a90117041af`  
		Last Modified: Thu, 02 Jul 2026 05:47:45 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:71c047c24bfafc68abb020c403413f757f89a7edd82a102cc2016d6973821f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0740c2049449e9ca3facc87ca9fb3e6971714c402878aff6601d3489c065565f`

```dockerfile
```

-	Layers:
	-	`sha256:faa2e82bdefbfb2c85a70c4dbe6595026013828260c704abf85c0620c4dd5cd7`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 3.3 MB (3306826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37bd7b8fc71663a8bd14275d72b04abcb09810e0e750c405c2e4e597296ae12b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:e837beebef2a18b3d1ca69e6af578e5517b85950b424d211fbff73cbe49c1788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160440104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f521b2947765cb81855ab2e000252af6e069876ddb454f0ef2f9e26f4ccc4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:57 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:21:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e586f7785ceabc266d404ffc71152f333be0ea781d2c50340d1fa56496c60`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 16.2 MB (16215335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a80f687620edc6bd810c5ceb921f83102d1529ad1ee7d4776561f3780ba26b`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 1.2 MB (1232628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526a23fe163992b7dea1226e0e1a136f64f4f48d33c6ad9217b3d351efac637b`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 45.1 MB (45126033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbdceb423bf915eca8dc3dfb4e61474fa5ea711304056d15e690248f9abbf07`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa1941defffc2418524bd2541c39f32374d0c43797444b4ad2a5fec188913c`  
		Last Modified: Thu, 02 Jul 2026 05:21:55 GMT  
		Size: 73.9 MB (73919112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cac130b4b3a086cb7614f1b8819bbda7121b04f3a3a0c1c3876c498222f13c4`  
		Last Modified: Thu, 02 Jul 2026 05:21:54 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c174b518658ca90d57c3c5fb3c3f92aee321e4841e600b93a16b157693f0d123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bb0d000cf4ca80e2e6726617453b46fdeebcccee055eccc6d197ed2a265e3b`

```dockerfile
```

-	Layers:
	-	`sha256:bc08ea7b4dd5888546b865910bbca33c3362774e31a3ab60149f3759749359c7`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 3.3 MB (3309309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097ead8769bb98a323325f65b25f926e1f6b7e24c118d1d74067916968b16ea6`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:5449fad84fdf88cc98a06e10fe40c5c59ccecb5ef6ad947aff0fafd3d08f44d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168208029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6c308d5e7e3d46977ed778ad36745d2184ae7c77cb6d8597dcae8ccb678eac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e39b2f0b343a88529b0db9cdb4998c3768c8486593955f5dafe79b7e633c911`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7b380a4a18fa66817885d3b250814761d73077f88e1d8db284e31738129eca`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 17.9 MB (17902849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7560e7877ef4fea8dfd90529dc3af76070432a687d1f7864070d55c44a97e4f8`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.2 MB (1220133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067ea9f1b9ce7034c15d89debe97c663777ba3b0934f75d02e13c3b57119bf34`  
		Last Modified: Thu, 02 Jul 2026 05:47:59 GMT  
		Size: 47.0 MB (47041115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e925dba90137ca2a837cde8fb64c63d32ec083a88b31fef93ee4e05ab5100e9`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a349dcdae625399e0b8aed57f9a93d4e793766c5395b4953cee1b9fcb2c85f03`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 73.9 MB (73919051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918bb29fc594e806302e2ee01356fb89ccc9b166f537cb1f1b4da650029e0b56`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:da6bd01b8ad601daa27534bb79ca8989db76b745c505809248fbd27bcc0359bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9182368d057d2dcf017345e32015bbbc30d8b4cab0ec8cb85f8623e02c531dbe`

```dockerfile
```

-	Layers:
	-	`sha256:d86084b423082ac86a80ee4c8cbaec88a8371fe1d7877c9778bdf44a37b3632d`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 3.3 MB (3306591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b67624ba536c18d2f754763985142bd58e97954e88b5ef318482e7495498c661`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:affaa2c7d5c6eef936caf9691e555cd2728f196e21e5c1aa58039c06c2d94704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174204759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b320d7f925b8aaac3fefad81780f7566ff99b9d287f1a64246e0591677dd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f961a3c3ce0c8262b1e5838ae9e58982d37d7d147bcd2b9aa8878c0dd53791d2`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 47.5 MB (47480914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc79701ce6c356017553f110318a57ce468426fd01f28ffc05d2a4db9de0aff0`  
		Last Modified: Thu, 02 Jul 2026 06:43:06 GMT  
		Size: 73.9 MB (73919301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535746987ea8429ca0f7a8757cb9552e1a821015654c4e655f5cf37c52a2eaba`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:ed594ae81ea3385836f969769f2000f0816cf2e70e02a5946a2c2aa09ed2d499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757bce9ff5f52ef84322b525e7507f6d9e70cb02e67834482ab87b538340f12a`

```dockerfile
```

-	Layers:
	-	`sha256:d442da9699e2bd53c1b1750fbf67c750eaa9540c203f10f8fe70a3001432b95f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 3.3 MB (3311092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2ef33d0f8ce1122933c4f66decd91a3aab551a65f0df2831787e476ca89568f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.8-bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:44635a745e870e931b92ffc853d6b1487414fa0361358254d31e606789f49db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164031722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c9b30bb2de5de74957c1d4a500eeded3cc4c0ef83373afb3878571ba70fe40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:42:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:42:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:43:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:13 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f54adbc572b3941af5bfcf717dd9d92b69b3feea63cd329e976cc1938d02291`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276780954ae5df70bacc065ab2ebcc4937039e47d4584b27c689b0bb709a3e3e`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 17.4 MB (17447309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bd7b2249cc8aab265bcbaa5523bba93d1f59ad408858cc3b0b5f38e49268f0`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.2 MB (1240492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6c596d39af6e2022e538a837564508efb0bd7685b7598e2f563156289d0273`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 44.5 MB (44528785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdddea01d600cfb67be5f2489b67bb68ab43fd916009b186cb84f3d72a8c1c43`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e644cfeafcada9d9dccb86fae768732118f9219af7ec7f9fd3407a6375ad9d41`  
		Last Modified: Thu, 02 Jul 2026 05:43:35 GMT  
		Size: 73.9 MB (73919091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247304648af4495a10076dea94f5c961c8b947b67298540cd122b6c49617f7c9`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.8-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c96e78620ea19fef08e866804f0d001b4f9415363d3fc3f4f485207470a6b28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b3b62328e2034185c92609852d75c7083914f7b94c9eb8e59214ce20e8a33`

```dockerfile
```

-	Layers:
	-	`sha256:44f5566f79378223e578f517688b5b1556b4da309ebbcfab283c15a0aa3cd902`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 3.3 MB (3302962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8374ca20f461001c845f8dcd59842beaa003170483bf3b4f7c01e7d707628e63`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:bookworm`

```console
$ docker pull cassandra@sha256:b89056c366c4b807380cd9a4ac865ad558c0b4d5aac342f69087d0169ca1ddcd
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
$ docker pull cassandra@sha256:f8a5482df0203099c47966e14f3d79d32a28f985ca0fdeceebc13900e198c977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169133693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2ff223bed9eae094d88b5fd7582f34a8f412ef9259f6870431b322cd0f1aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916e6e2b19fab0206b7db8bdc6b926b43d8d2bad532deda17a48c8b9d3be4d4b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99d06a4e22d2b866db9a84a7124d710a86c04ad4455dc302055fb0ac0659198`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 18.1 MB (18149685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8773db3c24c9123c4873c1a91599316242519b733916300383b96655c318b26d`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.3 MB (1266621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78445e2fd27e78a3d1aa4806641a16fefdfdae30b113eb8c3c706556186aa90d`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 47.6 MB (47558125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04520a8b8dad8222e0fafc68ec2256d5086bba23bb4ddee3b707e5e332ac3f19`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55eeaca0782a2d9ff01f2157c4b6c8a68b6bf3b76fa4fcb3aea91d54162a69`  
		Last Modified: Thu, 02 Jul 2026 05:47:46 GMT  
		Size: 73.9 MB (73919161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce2595dd56bd8c1a06ad61b4fd9ca42ca01d183b32d5ef00c11a90117041af`  
		Last Modified: Thu, 02 Jul 2026 05:47:45 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:71c047c24bfafc68abb020c403413f757f89a7edd82a102cc2016d6973821f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0740c2049449e9ca3facc87ca9fb3e6971714c402878aff6601d3489c065565f`

```dockerfile
```

-	Layers:
	-	`sha256:faa2e82bdefbfb2c85a70c4dbe6595026013828260c704abf85c0620c4dd5cd7`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 3.3 MB (3306826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37bd7b8fc71663a8bd14275d72b04abcb09810e0e750c405c2e4e597296ae12b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:e837beebef2a18b3d1ca69e6af578e5517b85950b424d211fbff73cbe49c1788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160440104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f521b2947765cb81855ab2e000252af6e069876ddb454f0ef2f9e26f4ccc4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:57 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:21:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e586f7785ceabc266d404ffc71152f333be0ea781d2c50340d1fa56496c60`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 16.2 MB (16215335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a80f687620edc6bd810c5ceb921f83102d1529ad1ee7d4776561f3780ba26b`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 1.2 MB (1232628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526a23fe163992b7dea1226e0e1a136f64f4f48d33c6ad9217b3d351efac637b`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 45.1 MB (45126033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbdceb423bf915eca8dc3dfb4e61474fa5ea711304056d15e690248f9abbf07`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa1941defffc2418524bd2541c39f32374d0c43797444b4ad2a5fec188913c`  
		Last Modified: Thu, 02 Jul 2026 05:21:55 GMT  
		Size: 73.9 MB (73919112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cac130b4b3a086cb7614f1b8819bbda7121b04f3a3a0c1c3876c498222f13c4`  
		Last Modified: Thu, 02 Jul 2026 05:21:54 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c174b518658ca90d57c3c5fb3c3f92aee321e4841e600b93a16b157693f0d123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bb0d000cf4ca80e2e6726617453b46fdeebcccee055eccc6d197ed2a265e3b`

```dockerfile
```

-	Layers:
	-	`sha256:bc08ea7b4dd5888546b865910bbca33c3362774e31a3ab60149f3759749359c7`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 3.3 MB (3309309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097ead8769bb98a323325f65b25f926e1f6b7e24c118d1d74067916968b16ea6`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:5449fad84fdf88cc98a06e10fe40c5c59ccecb5ef6ad947aff0fafd3d08f44d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168208029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6c308d5e7e3d46977ed778ad36745d2184ae7c77cb6d8597dcae8ccb678eac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e39b2f0b343a88529b0db9cdb4998c3768c8486593955f5dafe79b7e633c911`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7b380a4a18fa66817885d3b250814761d73077f88e1d8db284e31738129eca`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 17.9 MB (17902849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7560e7877ef4fea8dfd90529dc3af76070432a687d1f7864070d55c44a97e4f8`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.2 MB (1220133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067ea9f1b9ce7034c15d89debe97c663777ba3b0934f75d02e13c3b57119bf34`  
		Last Modified: Thu, 02 Jul 2026 05:47:59 GMT  
		Size: 47.0 MB (47041115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e925dba90137ca2a837cde8fb64c63d32ec083a88b31fef93ee4e05ab5100e9`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a349dcdae625399e0b8aed57f9a93d4e793766c5395b4953cee1b9fcb2c85f03`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 73.9 MB (73919051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918bb29fc594e806302e2ee01356fb89ccc9b166f537cb1f1b4da650029e0b56`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:da6bd01b8ad601daa27534bb79ca8989db76b745c505809248fbd27bcc0359bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9182368d057d2dcf017345e32015bbbc30d8b4cab0ec8cb85f8623e02c531dbe`

```dockerfile
```

-	Layers:
	-	`sha256:d86084b423082ac86a80ee4c8cbaec88a8371fe1d7877c9778bdf44a37b3632d`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 3.3 MB (3306591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b67624ba536c18d2f754763985142bd58e97954e88b5ef318482e7495498c661`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:affaa2c7d5c6eef936caf9691e555cd2728f196e21e5c1aa58039c06c2d94704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174204759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b320d7f925b8aaac3fefad81780f7566ff99b9d287f1a64246e0591677dd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f961a3c3ce0c8262b1e5838ae9e58982d37d7d147bcd2b9aa8878c0dd53791d2`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 47.5 MB (47480914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc79701ce6c356017553f110318a57ce468426fd01f28ffc05d2a4db9de0aff0`  
		Last Modified: Thu, 02 Jul 2026 06:43:06 GMT  
		Size: 73.9 MB (73919301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535746987ea8429ca0f7a8757cb9552e1a821015654c4e655f5cf37c52a2eaba`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:ed594ae81ea3385836f969769f2000f0816cf2e70e02a5946a2c2aa09ed2d499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757bce9ff5f52ef84322b525e7507f6d9e70cb02e67834482ab87b538340f12a`

```dockerfile
```

-	Layers:
	-	`sha256:d442da9699e2bd53c1b1750fbf67c750eaa9540c203f10f8fe70a3001432b95f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 3.3 MB (3311092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2ef33d0f8ce1122933c4f66decd91a3aab551a65f0df2831787e476ca89568f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:bookworm` - linux; s390x

```console
$ docker pull cassandra@sha256:44635a745e870e931b92ffc853d6b1487414fa0361358254d31e606789f49db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164031722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c9b30bb2de5de74957c1d4a500eeded3cc4c0ef83373afb3878571ba70fe40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:42:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:42:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:43:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:13 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f54adbc572b3941af5bfcf717dd9d92b69b3feea63cd329e976cc1938d02291`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276780954ae5df70bacc065ab2ebcc4937039e47d4584b27c689b0bb709a3e3e`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 17.4 MB (17447309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bd7b2249cc8aab265bcbaa5523bba93d1f59ad408858cc3b0b5f38e49268f0`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.2 MB (1240492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6c596d39af6e2022e538a837564508efb0bd7685b7598e2f563156289d0273`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 44.5 MB (44528785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdddea01d600cfb67be5f2489b67bb68ab43fd916009b186cb84f3d72a8c1c43`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e644cfeafcada9d9dccb86fae768732118f9219af7ec7f9fd3407a6375ad9d41`  
		Last Modified: Thu, 02 Jul 2026 05:43:35 GMT  
		Size: 73.9 MB (73919091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247304648af4495a10076dea94f5c961c8b947b67298540cd122b6c49617f7c9`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c96e78620ea19fef08e866804f0d001b4f9415363d3fc3f4f485207470a6b28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b3b62328e2034185c92609852d75c7083914f7b94c9eb8e59214ce20e8a33`

```dockerfile
```

-	Layers:
	-	`sha256:44f5566f79378223e578f517688b5b1556b4da309ebbcfab283c15a0aa3cd902`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 3.3 MB (3302962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8374ca20f461001c845f8dcd59842beaa003170483bf3b4f7c01e7d707628e63`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:b89056c366c4b807380cd9a4ac865ad558c0b4d5aac342f69087d0169ca1ddcd
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
$ docker pull cassandra@sha256:f8a5482df0203099c47966e14f3d79d32a28f985ca0fdeceebc13900e198c977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169133693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2ff223bed9eae094d88b5fd7582f34a8f412ef9259f6870431b322cd0f1aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:46:55 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:10 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:10 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:10 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:29 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916e6e2b19fab0206b7db8bdc6b926b43d8d2bad532deda17a48c8b9d3be4d4b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99d06a4e22d2b866db9a84a7124d710a86c04ad4455dc302055fb0ac0659198`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 18.1 MB (18149685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8773db3c24c9123c4873c1a91599316242519b733916300383b96655c318b26d`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 1.3 MB (1266621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78445e2fd27e78a3d1aa4806641a16fefdfdae30b113eb8c3c706556186aa90d`  
		Last Modified: Thu, 02 Jul 2026 05:47:44 GMT  
		Size: 47.6 MB (47558125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04520a8b8dad8222e0fafc68ec2256d5086bba23bb4ddee3b707e5e332ac3f19`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55eeaca0782a2d9ff01f2157c4b6c8a68b6bf3b76fa4fcb3aea91d54162a69`  
		Last Modified: Thu, 02 Jul 2026 05:47:46 GMT  
		Size: 73.9 MB (73919161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce2595dd56bd8c1a06ad61b4fd9ca42ca01d183b32d5ef00c11a90117041af`  
		Last Modified: Thu, 02 Jul 2026 05:47:45 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:71c047c24bfafc68abb020c403413f757f89a7edd82a102cc2016d6973821f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0740c2049449e9ca3facc87ca9fb3e6971714c402878aff6601d3489c065565f`

```dockerfile
```

-	Layers:
	-	`sha256:faa2e82bdefbfb2c85a70c4dbe6595026013828260c704abf85c0620c4dd5cd7`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 3.3 MB (3306826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37bd7b8fc71663a8bd14275d72b04abcb09810e0e750c405c2e4e597296ae12b`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 37.1 KB (37081 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:e837beebef2a18b3d1ca69e6af578e5517b85950b424d211fbff73cbe49c1788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160440104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f521b2947765cb81855ab2e000252af6e069876ddb454f0ef2f9e26f4ccc4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:20:57 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:21:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:21:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:21:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:21:17 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:21:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:21:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:21:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd508a8614774eeaffde36c92141432116aa208e708239da561c6126e9be873`  
		Last Modified: Thu, 02 Jul 2026 05:21:49 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e586f7785ceabc266d404ffc71152f333be0ea781d2c50340d1fa56496c60`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 16.2 MB (16215335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a80f687620edc6bd810c5ceb921f83102d1529ad1ee7d4776561f3780ba26b`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 1.2 MB (1232628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526a23fe163992b7dea1226e0e1a136f64f4f48d33c6ad9217b3d351efac637b`  
		Last Modified: Thu, 02 Jul 2026 05:21:53 GMT  
		Size: 45.1 MB (45126033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbdceb423bf915eca8dc3dfb4e61474fa5ea711304056d15e690248f9abbf07`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa1941defffc2418524bd2541c39f32374d0c43797444b4ad2a5fec188913c`  
		Last Modified: Thu, 02 Jul 2026 05:21:55 GMT  
		Size: 73.9 MB (73919112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cac130b4b3a086cb7614f1b8819bbda7121b04f3a3a0c1c3876c498222f13c4`  
		Last Modified: Thu, 02 Jul 2026 05:21:54 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:c174b518658ca90d57c3c5fb3c3f92aee321e4841e600b93a16b157693f0d123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bb0d000cf4ca80e2e6726617453b46fdeebcccee055eccc6d197ed2a265e3b`

```dockerfile
```

-	Layers:
	-	`sha256:bc08ea7b4dd5888546b865910bbca33c3362774e31a3ab60149f3759749359c7`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 3.3 MB (3309309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097ead8769bb98a323325f65b25f926e1f6b7e24c118d1d74067916968b16ea6`  
		Last Modified: Thu, 02 Jul 2026 05:21:52 GMT  
		Size: 37.3 KB (37268 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:5449fad84fdf88cc98a06e10fe40c5c59ccecb5ef6ad947aff0fafd3d08f44d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168208029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6c308d5e7e3d46977ed778ad36745d2184ae7c77cb6d8597dcae8ccb678eac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:47:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:47:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:47:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:47:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:47:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:47:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e39b2f0b343a88529b0db9cdb4998c3768c8486593955f5dafe79b7e633c911`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7b380a4a18fa66817885d3b250814761d73077f88e1d8db284e31738129eca`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 17.9 MB (17902849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7560e7877ef4fea8dfd90529dc3af76070432a687d1f7864070d55c44a97e4f8`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 1.2 MB (1220133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067ea9f1b9ce7034c15d89debe97c663777ba3b0934f75d02e13c3b57119bf34`  
		Last Modified: Thu, 02 Jul 2026 05:47:59 GMT  
		Size: 47.0 MB (47041115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e925dba90137ca2a837cde8fb64c63d32ec083a88b31fef93ee4e05ab5100e9`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a349dcdae625399e0b8aed57f9a93d4e793766c5395b4953cee1b9fcb2c85f03`  
		Last Modified: Thu, 02 Jul 2026 05:48:01 GMT  
		Size: 73.9 MB (73919051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918bb29fc594e806302e2ee01356fb89ccc9b166f537cb1f1b4da650029e0b56`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:da6bd01b8ad601daa27534bb79ca8989db76b745c505809248fbd27bcc0359bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9182368d057d2dcf017345e32015bbbc30d8b4cab0ec8cb85f8623e02c531dbe`

```dockerfile
```

-	Layers:
	-	`sha256:d86084b423082ac86a80ee4c8cbaec88a8371fe1d7877c9778bdf44a37b3632d`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 3.3 MB (3306591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b67624ba536c18d2f754763985142bd58e97954e88b5ef318482e7495498c661`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 37.3 KB (37320 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:affaa2c7d5c6eef936caf9691e555cd2728f196e21e5c1aa58039c06c2d94704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174204759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b320d7f925b8aaac3fefad81780f7566ff99b9d287f1a64246e0591677dd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:40:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 06:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 06:41:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 06:41:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 06:41:46 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:41:46 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 06:41:46 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 06:42:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 06:42:30 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 06:42:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 06:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:42:31 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 06:42:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8421c98f40291fa6f6cbd0d64c798096b6cfd4b537e5bc2d959f9c04ef943ce9`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa3af23f829845ac97cbda87cd502705895889f54842329665541a0a8567a7`  
		Last Modified: Thu, 02 Jul 2026 06:43:03 GMT  
		Size: 19.5 MB (19494542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c727798abbb09e9d1683cb441a82a3ce6702d9a95e06ae58904267d4a354146b`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 1.2 MB (1225560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f961a3c3ce0c8262b1e5838ae9e58982d37d7d147bcd2b9aa8878c0dd53791d2`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 47.5 MB (47480914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42b198684412193e72e9fd4815daa51090b0ae7e13e68dfbe911ca5dd2b1c0`  
		Last Modified: Thu, 02 Jul 2026 06:43:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc79701ce6c356017553f110318a57ce468426fd01f28ffc05d2a4db9de0aff0`  
		Last Modified: Thu, 02 Jul 2026 06:43:06 GMT  
		Size: 73.9 MB (73919301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535746987ea8429ca0f7a8757cb9552e1a821015654c4e655f5cf37c52a2eaba`  
		Last Modified: Thu, 02 Jul 2026 06:43:04 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:ed594ae81ea3385836f969769f2000f0816cf2e70e02a5946a2c2aa09ed2d499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757bce9ff5f52ef84322b525e7507f6d9e70cb02e67834482ab87b538340f12a`

```dockerfile
```

-	Layers:
	-	`sha256:d442da9699e2bd53c1b1750fbf67c750eaa9540c203f10f8fe70a3001432b95f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 3.3 MB (3311092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2ef33d0f8ce1122933c4f66decd91a3aab551a65f0df2831787e476ca89568f`  
		Last Modified: Thu, 02 Jul 2026 06:43:01 GMT  
		Size: 37.2 KB (37168 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; s390x

```console
$ docker pull cassandra@sha256:44635a745e870e931b92ffc853d6b1487414fa0361358254d31e606789f49db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (164031722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c9b30bb2de5de74957c1d4a500eeded3cc4c0ef83373afb3878571ba70fe40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:42:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 02 Jul 2026 05:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 05:42:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:42:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
RUN java --version # buildkit
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 02 Jul 2026 05:42:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:42:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_VERSION=5.0.8
# Thu, 02 Jul 2026 05:42:57 GMT
ENV CASSANDRA_SHA512=06b7af18c8f41dc13dbfdae186d565a5f91e71ea413c3c5373aec8a4e5074c6dee5632a0e5e98c21665f08f7291d7ca384f61a323c02610c6bca51e074b5a0c4
# Thu, 02 Jul 2026 05:43:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Jul 2026 05:43:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 05:43:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:43:13 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 02 Jul 2026 05:43:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f54adbc572b3941af5bfcf717dd9d92b69b3feea63cd329e976cc1938d02291`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276780954ae5df70bacc065ab2ebcc4937039e47d4584b27c689b0bb709a3e3e`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 17.4 MB (17447309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bd7b2249cc8aab265bcbaa5523bba93d1f59ad408858cc3b0b5f38e49268f0`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 1.2 MB (1240492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6c596d39af6e2022e538a837564508efb0bd7685b7598e2f563156289d0273`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 44.5 MB (44528785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdddea01d600cfb67be5f2489b67bb68ab43fd916009b186cb84f3d72a8c1c43`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e644cfeafcada9d9dccb86fae768732118f9219af7ec7f9fd3407a6375ad9d41`  
		Last Modified: Thu, 02 Jul 2026 05:43:35 GMT  
		Size: 73.9 MB (73919091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247304648af4495a10076dea94f5c961c8b947b67298540cd122b6c49617f7c9`  
		Last Modified: Thu, 02 Jul 2026 05:43:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:c96e78620ea19fef08e866804f0d001b4f9415363d3fc3f4f485207470a6b28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7b3b62328e2034185c92609852d75c7083914f7b94c9eb8e59214ce20e8a33`

```dockerfile
```

-	Layers:
	-	`sha256:44f5566f79378223e578f517688b5b1556b4da309ebbcfab283c15a0aa3cd902`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 3.3 MB (3302962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8374ca20f461001c845f8dcd59842beaa003170483bf3b4f7c01e7d707628e63`  
		Last Modified: Thu, 02 Jul 2026 05:43:32 GMT  
		Size: 37.1 KB (37082 bytes)  
		MIME: application/vnd.in-toto+json
