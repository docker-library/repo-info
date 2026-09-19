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
$ docker pull cassandra@sha256:17396c467d9408afe978630a9a0e12600b07176dc0c966228298e148ef432480
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
$ docker pull cassandra@sha256:b3341061a736ef696c738d1a69a5daf1d76aefa33a756b542bba79ea47313a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149187938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc66088834f631e2987c56537d105a23f1a310522629df288c77bec0f9bbb85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:11:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd161596e62e4b8e35c17c264fece307eb4d5fcbcac7f16f049af77737d4feb2`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a6832a1b38565f6251eb32385fea895a65f1b728631584aae1b18771efa463`  
		Last Modified: Sat, 19 Sep 2026 01:12:04 GMT  
		Size: 18.2 MB (18154218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5db05efb0e9a80734ed843b109a26424219763536e07a84dde2079aeb95f646`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.3 MB (1266983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651731408ae8819110201144f2459da4400416ff06570389b12d583e6ea070b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 47.3 MB (47323596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2558db7ceaa73eae9825043fa8b3064ab410ed3f5feb743f698763333a923d`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d04d43629c896b99dd522ec169b86c0eb4260c42483cba587ae8739d7aaea0`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 54.2 MB (54202242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40c20be4b1391ea4ead13d2b2eaf1b82b3f2d5f8072d60e56db00143706ab7b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:735a8d91bea71ebfd683b969084aa1a5dc1f33e79e5c7f9de54b8aee2722964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc7cfed7f6b2c9afdef915b980807559a68da98b7e14d7973b088aeec9ba05c`

```dockerfile
```

-	Layers:
	-	`sha256:d2740e1894abfbae3d9d594612a03a8d349fe9f40760991d34179be0e677b0dd`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 3.3 MB (3281919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78edb8125a7682b39bc983e82e7bbdaa361c3ffa07f5d2c90bc45d85fed10678`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:6216305c81aa50eb57b6ee854126ed9a722eb6c02c307e0dc38292d7a0ccc048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141034981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8b427fc661d508371f1aae7c4b5abff4d55265d1c9d2fa76f82ad6bf071fc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:15:34 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 16 Sep 2026 04:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 16 Sep 2026 04:15:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:15:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:54 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 04:15:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 16 Sep 2026 04:16:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 04:16:16 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 04:16:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 04:16:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 04:16:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 04:16:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ddc9aa17b1ab490c9ef565049ccb5d8a048a4c264ece6a8d2ef612b0709997`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffb47adb967b7b66e48a5013e373f9276f306bd8eb089965e508a9758efdf3f7`  
		Last Modified: Wed, 16 Sep 2026 04:16:29 GMT  
		Size: 16.2 MB (16224315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4e3cfdfb8e60de5735c1dc796069e4d8e65d441461f9c24041c81973503eea`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 1.2 MB (1233109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5f13c08e4e584cafe6c80d725bab6ca65ec5da933c26e96f771d07a10f51ab`  
		Last Modified: Wed, 16 Sep 2026 04:16:30 GMT  
		Size: 45.4 MB (45433026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a9ce76a614cef774d1a60505282e08c88a35d76ae3f886ec4dd010c960a65e`  
		Last Modified: Wed, 16 Sep 2026 04:16:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc8c361917256fcf5fbecf5dbf96b9ce445102f1072fee73d099b7026379bef`  
		Last Modified: Wed, 16 Sep 2026 04:16:31 GMT  
		Size: 54.2 MB (54202224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61ab1152b1d1f191cd44ff4bd310e6f054c5a11083105068b2a5a12a1e6d82`  
		Last Modified: Wed, 16 Sep 2026 04:16:30 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:faaa3833f69d827ed5835009ab22fad8ec11a7ba135af53c31aad1cb35eb7d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1374d25f32e0a6600077982e967ae4e30bf973e62a56ddad51d0b1cd4e37a2a9`

```dockerfile
```

-	Layers:
	-	`sha256:3173878cf4553acd027b27c58b856b45ad49e589184bda2713b3a09b2ccb46af`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 3.3 MB (3285613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0197eaad9c308f6213fb61c022d5ee1ca25ef856cbb99dda6e7f4d2846602015`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f17f093b4c175fdecd75e505762e7e86d97b26f3abc73c5a83697ad3709b5545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147082761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70255ef159171f0e2b0766e5f7afdeb0ceb114fed54027624234517d8a34673f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:46 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:19:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:19:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c60dc1a8f9ca1b7785b6ef8468173ef64008d25917e8e2dd3d837ac77ed825`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3236516622c91fbbbcaf02ec23df1c1ca666cd0b020eb4880e4456f8dc74d68c`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 17.9 MB (17901506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48270257f79c1756a9bd64106459ed5642fc9257125220a75408c99facf21659`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.2 MB (1220524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bccc28edc1b8681cb8de2450301477d2db8f2f15bdc3b712212f137c7d9a92a`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 45.6 MB (45632389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776ff8ecd63c9ea7fb52fe5b4cafe5144e7292701cf7278a8aa6452557f2fcc8`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800c9bf94013bca5843e4e21713ade31975e90230d13f143a8226090524b76ec`  
		Last Modified: Sat, 19 Sep 2026 01:19:34 GMT  
		Size: 54.2 MB (54202200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ceaac4e55f0adf860912de7aacf3541703d74e9bdfecfa69acccc8049b438ab`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:cffd171f594b268976b7a646c3fd9964094e89d77dcbfc7de133a19d90cd0953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5649222aa72e9935a8b15354ff05425ee5d51cca41f586e5ae8e7c05db2f0343`

```dockerfile
```

-	Layers:
	-	`sha256:e3960fe47d2543927c0727511994ce3ca40709e5d512eea1939b1977b9ffa51d`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 3.3 MB (3282278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83e4a26be05ce53af461d8aa57f5eaa243bb299a732a0b0066761fc6882c54f3`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6a3fd4f22694ec8da071809d38275cbed2bbb7566e83145fe3672897cd1b1d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149799282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327d970937eaf9347e7f4a6a6b55c72b199d864d8c681346c8bc4e27e177d2c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:24:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:25:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 16 Sep 2026 10:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4e46a40eb30f4f33300ac219238c261a88d6a36d3b6a4f29ceb58f806c57be`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a18a5b178b454f17ec285042dfd9e4df361416f94bda6d188c143bac4843800`  
		Last Modified: Wed, 09 Sep 2026 10:26:12 GMT  
		Size: 19.5 MB (19502055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a3cfd8a3c9f68d53becfde67ed56333f9bd5afc42401947598448037d5320`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.2 MB (1226075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ebe369c08893cf9a063c5f7af86db617a13f99298cf933f2fdf4902209c37d`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 42.8 MB (42789701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaf09683e8cc555e7c8a889236500021758ff00e567eeedbc5ba78f369d4dc5`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a99f3bff035df0d21d2dc142a5bf8c6b5bcb2dd0b6ccb1edff7472b8320b2f`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 54.2 MB (54202513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8df90d3d56cae27a6831187ba755a807c5e81da7793a407ec59ebe454f6d17`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:b40492b0fe83d452cee32c0f241600e77e4d9e3539d1346493ebd5e0f74e4fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a583e4d2ac735b2953ea8d892fc07949c3d8c4e8e2f1fd0b2f3c56d402a18302`

```dockerfile
```

-	Layers:
	-	`sha256:e6d04db7a9153ce7586d4cd1a4231f7f54ae0eb6a518cc226f0dcdc96b454eca`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 3.3 MB (3286143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad5a099bd64b2c263115694f2f25e2bc3bc94428f2780e3f159fe5229737072`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4-bookworm`

```console
$ docker pull cassandra@sha256:17396c467d9408afe978630a9a0e12600b07176dc0c966228298e148ef432480
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
$ docker pull cassandra@sha256:b3341061a736ef696c738d1a69a5daf1d76aefa33a756b542bba79ea47313a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149187938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc66088834f631e2987c56537d105a23f1a310522629df288c77bec0f9bbb85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:11:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd161596e62e4b8e35c17c264fece307eb4d5fcbcac7f16f049af77737d4feb2`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a6832a1b38565f6251eb32385fea895a65f1b728631584aae1b18771efa463`  
		Last Modified: Sat, 19 Sep 2026 01:12:04 GMT  
		Size: 18.2 MB (18154218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5db05efb0e9a80734ed843b109a26424219763536e07a84dde2079aeb95f646`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.3 MB (1266983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651731408ae8819110201144f2459da4400416ff06570389b12d583e6ea070b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 47.3 MB (47323596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2558db7ceaa73eae9825043fa8b3064ab410ed3f5feb743f698763333a923d`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d04d43629c896b99dd522ec169b86c0eb4260c42483cba587ae8739d7aaea0`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 54.2 MB (54202242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40c20be4b1391ea4ead13d2b2eaf1b82b3f2d5f8072d60e56db00143706ab7b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:735a8d91bea71ebfd683b969084aa1a5dc1f33e79e5c7f9de54b8aee2722964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc7cfed7f6b2c9afdef915b980807559a68da98b7e14d7973b088aeec9ba05c`

```dockerfile
```

-	Layers:
	-	`sha256:d2740e1894abfbae3d9d594612a03a8d349fe9f40760991d34179be0e677b0dd`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 3.3 MB (3281919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78edb8125a7682b39bc983e82e7bbdaa361c3ffa07f5d2c90bc45d85fed10678`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:6216305c81aa50eb57b6ee854126ed9a722eb6c02c307e0dc38292d7a0ccc048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141034981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8b427fc661d508371f1aae7c4b5abff4d55265d1c9d2fa76f82ad6bf071fc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:15:34 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 16 Sep 2026 04:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 16 Sep 2026 04:15:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:15:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:54 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 04:15:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 16 Sep 2026 04:16:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 04:16:16 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 04:16:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 04:16:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 04:16:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 04:16:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ddc9aa17b1ab490c9ef565049ccb5d8a048a4c264ece6a8d2ef612b0709997`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffb47adb967b7b66e48a5013e373f9276f306bd8eb089965e508a9758efdf3f7`  
		Last Modified: Wed, 16 Sep 2026 04:16:29 GMT  
		Size: 16.2 MB (16224315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4e3cfdfb8e60de5735c1dc796069e4d8e65d441461f9c24041c81973503eea`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 1.2 MB (1233109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5f13c08e4e584cafe6c80d725bab6ca65ec5da933c26e96f771d07a10f51ab`  
		Last Modified: Wed, 16 Sep 2026 04:16:30 GMT  
		Size: 45.4 MB (45433026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a9ce76a614cef774d1a60505282e08c88a35d76ae3f886ec4dd010c960a65e`  
		Last Modified: Wed, 16 Sep 2026 04:16:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc8c361917256fcf5fbecf5dbf96b9ce445102f1072fee73d099b7026379bef`  
		Last Modified: Wed, 16 Sep 2026 04:16:31 GMT  
		Size: 54.2 MB (54202224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61ab1152b1d1f191cd44ff4bd310e6f054c5a11083105068b2a5a12a1e6d82`  
		Last Modified: Wed, 16 Sep 2026 04:16:30 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:faaa3833f69d827ed5835009ab22fad8ec11a7ba135af53c31aad1cb35eb7d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1374d25f32e0a6600077982e967ae4e30bf973e62a56ddad51d0b1cd4e37a2a9`

```dockerfile
```

-	Layers:
	-	`sha256:3173878cf4553acd027b27c58b856b45ad49e589184bda2713b3a09b2ccb46af`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 3.3 MB (3285613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0197eaad9c308f6213fb61c022d5ee1ca25ef856cbb99dda6e7f4d2846602015`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f17f093b4c175fdecd75e505762e7e86d97b26f3abc73c5a83697ad3709b5545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147082761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70255ef159171f0e2b0766e5f7afdeb0ceb114fed54027624234517d8a34673f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:46 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:19:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:19:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c60dc1a8f9ca1b7785b6ef8468173ef64008d25917e8e2dd3d837ac77ed825`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3236516622c91fbbbcaf02ec23df1c1ca666cd0b020eb4880e4456f8dc74d68c`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 17.9 MB (17901506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48270257f79c1756a9bd64106459ed5642fc9257125220a75408c99facf21659`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.2 MB (1220524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bccc28edc1b8681cb8de2450301477d2db8f2f15bdc3b712212f137c7d9a92a`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 45.6 MB (45632389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776ff8ecd63c9ea7fb52fe5b4cafe5144e7292701cf7278a8aa6452557f2fcc8`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800c9bf94013bca5843e4e21713ade31975e90230d13f143a8226090524b76ec`  
		Last Modified: Sat, 19 Sep 2026 01:19:34 GMT  
		Size: 54.2 MB (54202200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ceaac4e55f0adf860912de7aacf3541703d74e9bdfecfa69acccc8049b438ab`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:cffd171f594b268976b7a646c3fd9964094e89d77dcbfc7de133a19d90cd0953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5649222aa72e9935a8b15354ff05425ee5d51cca41f586e5ae8e7c05db2f0343`

```dockerfile
```

-	Layers:
	-	`sha256:e3960fe47d2543927c0727511994ce3ca40709e5d512eea1939b1977b9ffa51d`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 3.3 MB (3282278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83e4a26be05ce53af461d8aa57f5eaa243bb299a732a0b0066761fc6882c54f3`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6a3fd4f22694ec8da071809d38275cbed2bbb7566e83145fe3672897cd1b1d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149799282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327d970937eaf9347e7f4a6a6b55c72b199d864d8c681346c8bc4e27e177d2c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:24:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:25:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 16 Sep 2026 10:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4e46a40eb30f4f33300ac219238c261a88d6a36d3b6a4f29ceb58f806c57be`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a18a5b178b454f17ec285042dfd9e4df361416f94bda6d188c143bac4843800`  
		Last Modified: Wed, 09 Sep 2026 10:26:12 GMT  
		Size: 19.5 MB (19502055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a3cfd8a3c9f68d53becfde67ed56333f9bd5afc42401947598448037d5320`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.2 MB (1226075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ebe369c08893cf9a063c5f7af86db617a13f99298cf933f2fdf4902209c37d`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 42.8 MB (42789701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaf09683e8cc555e7c8a889236500021758ff00e567eeedbc5ba78f369d4dc5`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a99f3bff035df0d21d2dc142a5bf8c6b5bcb2dd0b6ccb1edff7472b8320b2f`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 54.2 MB (54202513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8df90d3d56cae27a6831187ba755a807c5e81da7793a407ec59ebe454f6d17`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b40492b0fe83d452cee32c0f241600e77e4d9e3539d1346493ebd5e0f74e4fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a583e4d2ac735b2953ea8d892fc07949c3d8c4e8e2f1fd0b2f3c56d402a18302`

```dockerfile
```

-	Layers:
	-	`sha256:e6d04db7a9153ce7586d4cd1a4231f7f54ae0eb6a518cc226f0dcdc96b454eca`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 3.3 MB (3286143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad5a099bd64b2c263115694f2f25e2bc3bc94428f2780e3f159fe5229737072`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0`

```console
$ docker pull cassandra@sha256:d388e652072f9a599ed045f05382e9a6a372dbb8311bbea8eacf90f3c3554696
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
$ docker pull cassandra@sha256:f11ce6ebd703722dabcccfd4189c5903fcb28454a8210d749e971913258c0657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b1020dffdca580103f2c21d949d7a7d6878f53dba7e85bf4640e5878ef527a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:11:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:52 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:52 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:52 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 01:12:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:12:09 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:12:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:12:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:12:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:12:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e13e5b14ebd057e510da49aeb429577002fc015ec3039a45bd0b7853db7f09`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4225dc979239e53cf6d68a3a60f32d5552ac3f1030f6dff36198614ef35a080c`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 18.2 MB (18154244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb350230f216f92fcd787b488175fe1370428c2bd5c2817b9815840d28ee00f1`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 1.3 MB (1267051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679f93af23efac196adfe630236953855d7b652311d6f196f172546c6751f14b`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 47.3 MB (47323621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1715353813d5b8f3494ba5101cf91e809a7301929df10fa9be84d0d81d54d8e7`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14536b6e402590e1ddba1c465a95f75d642119e6330a46f95ff9795ba6010c1b`  
		Last Modified: Sat, 19 Sep 2026 01:12:23 GMT  
		Size: 52.1 MB (52081648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aafe41fa03bdff7316a6e69dcd3bab61f2c5d9fe96b11de6acc0edbab8d2855`  
		Last Modified: Sat, 19 Sep 2026 01:12:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:9fb51b02e0d3aa678fb53c42e1aa6d464bfa13338949adcd44e2fa345ec1efe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a290936f42e377c324a8fca43e953a1d864cce53553d6fbae323ec8592b98e34`

```dockerfile
```

-	Layers:
	-	`sha256:bf167409dfe52f9904de04bcf3bcc6717b0df93932bca689b1a22e89d571a9cf`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 3.3 MB (3274852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a1a4ac11e95daf9c9948b1cd9cbd549c9e7e0b83d11ac86234a2353940d20c`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:07f40b5b84c3e97a39782c372b6edc2ccc94a765127444066fbcde27640f54f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138917798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33d4afe5c140a9186709207d8402b5c5d66a8d332f23b5d41c8092b9ebb2d7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 02:02:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:28 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:29 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 02:02:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:49 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc1899754a2a52b1561c6ae57f9bf28c0c7165a2e697cc14951ac9bec04fa37`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0772326a446a4fff6002190ea35b869226ec37fcdf2f12e9ff514e61d08298a`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 16.2 MB (16224361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8aa54e9d664cea323f9b1a2f5aaac950939fb0ad1c74aa33c503549b5a48ea0`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 1.2 MB (1233089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c8c45f13d2cc69ff6f9314b8d21ff6f80a2d5414561f6bb24e190b46a4ae20`  
		Last Modified: Sat, 19 Sep 2026 02:03:02 GMT  
		Size: 45.4 MB (45433046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32eb43a70d72c060c31033a6cb7537c7a743d01a4df810cb95663fe40dd1ca8`  
		Last Modified: Sat, 19 Sep 2026 02:03:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cce3d2b9b1262dc0dfe03258666276dfc480606e664003f956e91da7b9575b`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 52.1 MB (52081726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e48b29ffe202ec2551f9052b9f0d4555927286f672b92dd61b73348a7f54f1`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:6fb251f91986ac3fef1c3937ad8a05070d48f7cb04b6759974c70b3b3cf4852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05563d4ba2e37f66d031fd7448ca5e739c6cc9153d0f685b7359a9f6d453338f`

```dockerfile
```

-	Layers:
	-	`sha256:a7c25d885aa583424a47deae2f872d5abbc610058fba8fbf6923aafb5a1e2338`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 3.3 MB (3278566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf4198d8170321514abeae30d54c3afec224dc5a89749cbccc8c2e35b0239b3b`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:962e7dd927d72b0302f516a72c679b59d969bbbc8ccadbc147884dc9680e52ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144962372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b0b1a5fcdc8c7b5c614afb0a166066272778aa5fcb072f516e7099c98ceb13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:59 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:19:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:15 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:19:15 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:15 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 01:19:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:32 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:32 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cc4f0c26710f4d3c52f798b9e96a7c6bc04ebfff7d2bd6efd9bee76d6134c9`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7140ad415ecca5f06a6aa4c8415da2c8da923a29d7582e49a45f0607518a09ff`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 17.9 MB (17901551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90104caae42a4183fcc633733cfed4c010b14a02cdd9edf690f61afda701cc5c`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 1.2 MB (1220549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2d4d997a8819387a35ba9efed8148ef336d337d12d5e2c1a2fced0007ecd37`  
		Last Modified: Sat, 19 Sep 2026 01:19:45 GMT  
		Size: 45.6 MB (45632389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aca7c9e14e2cb10a53427092344031b1c94aeaa9414ac0e5343c7e4979910e`  
		Last Modified: Sat, 19 Sep 2026 01:19:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496899086f83334113ec3835a7bbfeb5b211e492e784c2324fa59872731e30a4`  
		Last Modified: Sat, 19 Sep 2026 01:19:46 GMT  
		Size: 52.1 MB (52081743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9608458cfaf6a2728423aeb141f907092d702d989c0ac843e0736ef4720c53`  
		Last Modified: Sat, 19 Sep 2026 01:19:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:e7bbbdf6b6544dcd3c26dcef00d8e43b3e714118fba3459e5ec144851c65e20f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25307ac66b846a57c8f9bfdfa5a5c176b4da7c5b5fbe5e651d2b2ea84239b9cc`

```dockerfile
```

-	Layers:
	-	`sha256:4875110346166854f1ba4757da555e087d1ab95c91d9715f7cc05066fade57af`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 3.3 MB (3275187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d08157a63370e57e2a7c81bd8271e3a779a696cb65471174a1e1e25767fd573`  
		Last Modified: Sat, 19 Sep 2026 01:19:43 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:60c67d4bc8e546371c260a817bc2e045c0b1027f7ed44fdb19b255e2be0165a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147678828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233621d26f432938a40861a51f7f12f25e0c00a48a451ff63cc3bf29650ce54e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:24:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:25:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 16 Sep 2026 10:17:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:17:06 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:17:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:17:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:17:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4e46a40eb30f4f33300ac219238c261a88d6a36d3b6a4f29ceb58f806c57be`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a18a5b178b454f17ec285042dfd9e4df361416f94bda6d188c143bac4843800`  
		Last Modified: Wed, 09 Sep 2026 10:26:12 GMT  
		Size: 19.5 MB (19502055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a3cfd8a3c9f68d53becfde67ed56333f9bd5afc42401947598448037d5320`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.2 MB (1226075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ebe369c08893cf9a063c5f7af86db617a13f99298cf933f2fdf4902209c37d`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 42.8 MB (42789701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaf09683e8cc555e7c8a889236500021758ff00e567eeedbc5ba78f369d4dc5`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f87fdce93210961e9e890a6d85de1cde29831b6b6a8d1991396a6d714015f5`  
		Last Modified: Wed, 16 Sep 2026 10:18:13 GMT  
		Size: 52.1 MB (52082057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c11c7590c17cd88238fb88e39271934bc93db70cc62cbb6cf5f66d263d1750a`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:15e3f4473092c67c234f7c10ab0a4ec21bbb48ce2793c62372ae868d67cdd887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7337b6cfbf15e0df21a01c4e75a537f2cdc4df94287dec738cd49981658761`

```dockerfile
```

-	Layers:
	-	`sha256:9aa9e23658e5271c4506e3a8864a0a57bb8741d870bffa69242bd37c30996e6c`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 3.3 MB (3279064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06d41560e0604936c3f065f815dcd0e284f42f07a49c033e4a464328b0bec327`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0-bookworm`

```console
$ docker pull cassandra@sha256:d388e652072f9a599ed045f05382e9a6a372dbb8311bbea8eacf90f3c3554696
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
$ docker pull cassandra@sha256:f11ce6ebd703722dabcccfd4189c5903fcb28454a8210d749e971913258c0657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b1020dffdca580103f2c21d949d7a7d6878f53dba7e85bf4640e5878ef527a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:11:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:52 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:52 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:52 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 01:12:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:12:09 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:12:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:12:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:12:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:12:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e13e5b14ebd057e510da49aeb429577002fc015ec3039a45bd0b7853db7f09`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4225dc979239e53cf6d68a3a60f32d5552ac3f1030f6dff36198614ef35a080c`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 18.2 MB (18154244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb350230f216f92fcd787b488175fe1370428c2bd5c2817b9815840d28ee00f1`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 1.3 MB (1267051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679f93af23efac196adfe630236953855d7b652311d6f196f172546c6751f14b`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 47.3 MB (47323621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1715353813d5b8f3494ba5101cf91e809a7301929df10fa9be84d0d81d54d8e7`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14536b6e402590e1ddba1c465a95f75d642119e6330a46f95ff9795ba6010c1b`  
		Last Modified: Sat, 19 Sep 2026 01:12:23 GMT  
		Size: 52.1 MB (52081648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aafe41fa03bdff7316a6e69dcd3bab61f2c5d9fe96b11de6acc0edbab8d2855`  
		Last Modified: Sat, 19 Sep 2026 01:12:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:9fb51b02e0d3aa678fb53c42e1aa6d464bfa13338949adcd44e2fa345ec1efe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a290936f42e377c324a8fca43e953a1d864cce53553d6fbae323ec8592b98e34`

```dockerfile
```

-	Layers:
	-	`sha256:bf167409dfe52f9904de04bcf3bcc6717b0df93932bca689b1a22e89d571a9cf`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 3.3 MB (3274852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a1a4ac11e95daf9c9948b1cd9cbd549c9e7e0b83d11ac86234a2353940d20c`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:07f40b5b84c3e97a39782c372b6edc2ccc94a765127444066fbcde27640f54f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138917798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33d4afe5c140a9186709207d8402b5c5d66a8d332f23b5d41c8092b9ebb2d7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 02:02:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:28 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:29 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 02:02:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:49 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc1899754a2a52b1561c6ae57f9bf28c0c7165a2e697cc14951ac9bec04fa37`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0772326a446a4fff6002190ea35b869226ec37fcdf2f12e9ff514e61d08298a`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 16.2 MB (16224361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8aa54e9d664cea323f9b1a2f5aaac950939fb0ad1c74aa33c503549b5a48ea0`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 1.2 MB (1233089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c8c45f13d2cc69ff6f9314b8d21ff6f80a2d5414561f6bb24e190b46a4ae20`  
		Last Modified: Sat, 19 Sep 2026 02:03:02 GMT  
		Size: 45.4 MB (45433046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32eb43a70d72c060c31033a6cb7537c7a743d01a4df810cb95663fe40dd1ca8`  
		Last Modified: Sat, 19 Sep 2026 02:03:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cce3d2b9b1262dc0dfe03258666276dfc480606e664003f956e91da7b9575b`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 52.1 MB (52081726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e48b29ffe202ec2551f9052b9f0d4555927286f672b92dd61b73348a7f54f1`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:6fb251f91986ac3fef1c3937ad8a05070d48f7cb04b6759974c70b3b3cf4852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05563d4ba2e37f66d031fd7448ca5e739c6cc9153d0f685b7359a9f6d453338f`

```dockerfile
```

-	Layers:
	-	`sha256:a7c25d885aa583424a47deae2f872d5abbc610058fba8fbf6923aafb5a1e2338`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 3.3 MB (3278566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf4198d8170321514abeae30d54c3afec224dc5a89749cbccc8c2e35b0239b3b`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:962e7dd927d72b0302f516a72c679b59d969bbbc8ccadbc147884dc9680e52ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144962372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b0b1a5fcdc8c7b5c614afb0a166066272778aa5fcb072f516e7099c98ceb13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:59 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:19:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:15 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:19:15 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:15 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 01:19:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:32 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:32 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cc4f0c26710f4d3c52f798b9e96a7c6bc04ebfff7d2bd6efd9bee76d6134c9`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7140ad415ecca5f06a6aa4c8415da2c8da923a29d7582e49a45f0607518a09ff`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 17.9 MB (17901551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90104caae42a4183fcc633733cfed4c010b14a02cdd9edf690f61afda701cc5c`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 1.2 MB (1220549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2d4d997a8819387a35ba9efed8148ef336d337d12d5e2c1a2fced0007ecd37`  
		Last Modified: Sat, 19 Sep 2026 01:19:45 GMT  
		Size: 45.6 MB (45632389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aca7c9e14e2cb10a53427092344031b1c94aeaa9414ac0e5343c7e4979910e`  
		Last Modified: Sat, 19 Sep 2026 01:19:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496899086f83334113ec3835a7bbfeb5b211e492e784c2324fa59872731e30a4`  
		Last Modified: Sat, 19 Sep 2026 01:19:46 GMT  
		Size: 52.1 MB (52081743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9608458cfaf6a2728423aeb141f907092d702d989c0ac843e0736ef4720c53`  
		Last Modified: Sat, 19 Sep 2026 01:19:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:e7bbbdf6b6544dcd3c26dcef00d8e43b3e714118fba3459e5ec144851c65e20f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25307ac66b846a57c8f9bfdfa5a5c176b4da7c5b5fbe5e651d2b2ea84239b9cc`

```dockerfile
```

-	Layers:
	-	`sha256:4875110346166854f1ba4757da555e087d1ab95c91d9715f7cc05066fade57af`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 3.3 MB (3275187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d08157a63370e57e2a7c81bd8271e3a779a696cb65471174a1e1e25767fd573`  
		Last Modified: Sat, 19 Sep 2026 01:19:43 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:60c67d4bc8e546371c260a817bc2e045c0b1027f7ed44fdb19b255e2be0165a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147678828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233621d26f432938a40861a51f7f12f25e0c00a48a451ff63cc3bf29650ce54e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:24:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:25:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 16 Sep 2026 10:17:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:17:06 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:17:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:17:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:17:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4e46a40eb30f4f33300ac219238c261a88d6a36d3b6a4f29ceb58f806c57be`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a18a5b178b454f17ec285042dfd9e4df361416f94bda6d188c143bac4843800`  
		Last Modified: Wed, 09 Sep 2026 10:26:12 GMT  
		Size: 19.5 MB (19502055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a3cfd8a3c9f68d53becfde67ed56333f9bd5afc42401947598448037d5320`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.2 MB (1226075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ebe369c08893cf9a063c5f7af86db617a13f99298cf933f2fdf4902209c37d`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 42.8 MB (42789701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaf09683e8cc555e7c8a889236500021758ff00e567eeedbc5ba78f369d4dc5`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f87fdce93210961e9e890a6d85de1cde29831b6b6a8d1991396a6d714015f5`  
		Last Modified: Wed, 16 Sep 2026 10:18:13 GMT  
		Size: 52.1 MB (52082057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c11c7590c17cd88238fb88e39271934bc93db70cc62cbb6cf5f66d263d1750a`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:15e3f4473092c67c234f7c10ab0a4ec21bbb48ce2793c62372ae868d67cdd887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7337b6cfbf15e0df21a01c4e75a537f2cdc4df94287dec738cd49981658761`

```dockerfile
```

-	Layers:
	-	`sha256:9aa9e23658e5271c4506e3a8864a0a57bb8741d870bffa69242bd37c30996e6c`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 3.3 MB (3279064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06d41560e0604936c3f065f815dcd0e284f42f07a49c033e4a464328b0bec327`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.21`

```console
$ docker pull cassandra@sha256:d388e652072f9a599ed045f05382e9a6a372dbb8311bbea8eacf90f3c3554696
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
$ docker pull cassandra@sha256:f11ce6ebd703722dabcccfd4189c5903fcb28454a8210d749e971913258c0657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b1020dffdca580103f2c21d949d7a7d6878f53dba7e85bf4640e5878ef527a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:11:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:52 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:52 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:52 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 01:12:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:12:09 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:12:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:12:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:12:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:12:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e13e5b14ebd057e510da49aeb429577002fc015ec3039a45bd0b7853db7f09`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4225dc979239e53cf6d68a3a60f32d5552ac3f1030f6dff36198614ef35a080c`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 18.2 MB (18154244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb350230f216f92fcd787b488175fe1370428c2bd5c2817b9815840d28ee00f1`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 1.3 MB (1267051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679f93af23efac196adfe630236953855d7b652311d6f196f172546c6751f14b`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 47.3 MB (47323621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1715353813d5b8f3494ba5101cf91e809a7301929df10fa9be84d0d81d54d8e7`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14536b6e402590e1ddba1c465a95f75d642119e6330a46f95ff9795ba6010c1b`  
		Last Modified: Sat, 19 Sep 2026 01:12:23 GMT  
		Size: 52.1 MB (52081648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aafe41fa03bdff7316a6e69dcd3bab61f2c5d9fe96b11de6acc0edbab8d2855`  
		Last Modified: Sat, 19 Sep 2026 01:12:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:9fb51b02e0d3aa678fb53c42e1aa6d464bfa13338949adcd44e2fa345ec1efe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a290936f42e377c324a8fca43e953a1d864cce53553d6fbae323ec8592b98e34`

```dockerfile
```

-	Layers:
	-	`sha256:bf167409dfe52f9904de04bcf3bcc6717b0df93932bca689b1a22e89d571a9cf`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 3.3 MB (3274852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a1a4ac11e95daf9c9948b1cd9cbd549c9e7e0b83d11ac86234a2353940d20c`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:07f40b5b84c3e97a39782c372b6edc2ccc94a765127444066fbcde27640f54f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138917798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33d4afe5c140a9186709207d8402b5c5d66a8d332f23b5d41c8092b9ebb2d7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 02:02:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:28 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:29 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 02:02:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:49 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc1899754a2a52b1561c6ae57f9bf28c0c7165a2e697cc14951ac9bec04fa37`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0772326a446a4fff6002190ea35b869226ec37fcdf2f12e9ff514e61d08298a`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 16.2 MB (16224361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8aa54e9d664cea323f9b1a2f5aaac950939fb0ad1c74aa33c503549b5a48ea0`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 1.2 MB (1233089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c8c45f13d2cc69ff6f9314b8d21ff6f80a2d5414561f6bb24e190b46a4ae20`  
		Last Modified: Sat, 19 Sep 2026 02:03:02 GMT  
		Size: 45.4 MB (45433046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32eb43a70d72c060c31033a6cb7537c7a743d01a4df810cb95663fe40dd1ca8`  
		Last Modified: Sat, 19 Sep 2026 02:03:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cce3d2b9b1262dc0dfe03258666276dfc480606e664003f956e91da7b9575b`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 52.1 MB (52081726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e48b29ffe202ec2551f9052b9f0d4555927286f672b92dd61b73348a7f54f1`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:6fb251f91986ac3fef1c3937ad8a05070d48f7cb04b6759974c70b3b3cf4852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05563d4ba2e37f66d031fd7448ca5e739c6cc9153d0f685b7359a9f6d453338f`

```dockerfile
```

-	Layers:
	-	`sha256:a7c25d885aa583424a47deae2f872d5abbc610058fba8fbf6923aafb5a1e2338`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 3.3 MB (3278566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf4198d8170321514abeae30d54c3afec224dc5a89749cbccc8c2e35b0239b3b`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:962e7dd927d72b0302f516a72c679b59d969bbbc8ccadbc147884dc9680e52ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144962372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b0b1a5fcdc8c7b5c614afb0a166066272778aa5fcb072f516e7099c98ceb13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:59 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:19:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:15 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:19:15 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:15 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 01:19:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:32 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:32 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cc4f0c26710f4d3c52f798b9e96a7c6bc04ebfff7d2bd6efd9bee76d6134c9`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7140ad415ecca5f06a6aa4c8415da2c8da923a29d7582e49a45f0607518a09ff`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 17.9 MB (17901551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90104caae42a4183fcc633733cfed4c010b14a02cdd9edf690f61afda701cc5c`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 1.2 MB (1220549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2d4d997a8819387a35ba9efed8148ef336d337d12d5e2c1a2fced0007ecd37`  
		Last Modified: Sat, 19 Sep 2026 01:19:45 GMT  
		Size: 45.6 MB (45632389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aca7c9e14e2cb10a53427092344031b1c94aeaa9414ac0e5343c7e4979910e`  
		Last Modified: Sat, 19 Sep 2026 01:19:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496899086f83334113ec3835a7bbfeb5b211e492e784c2324fa59872731e30a4`  
		Last Modified: Sat, 19 Sep 2026 01:19:46 GMT  
		Size: 52.1 MB (52081743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9608458cfaf6a2728423aeb141f907092d702d989c0ac843e0736ef4720c53`  
		Last Modified: Sat, 19 Sep 2026 01:19:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:e7bbbdf6b6544dcd3c26dcef00d8e43b3e714118fba3459e5ec144851c65e20f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25307ac66b846a57c8f9bfdfa5a5c176b4da7c5b5fbe5e651d2b2ea84239b9cc`

```dockerfile
```

-	Layers:
	-	`sha256:4875110346166854f1ba4757da555e087d1ab95c91d9715f7cc05066fade57af`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 3.3 MB (3275187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d08157a63370e57e2a7c81bd8271e3a779a696cb65471174a1e1e25767fd573`  
		Last Modified: Sat, 19 Sep 2026 01:19:43 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21` - linux; ppc64le

```console
$ docker pull cassandra@sha256:60c67d4bc8e546371c260a817bc2e045c0b1027f7ed44fdb19b255e2be0165a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147678828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233621d26f432938a40861a51f7f12f25e0c00a48a451ff63cc3bf29650ce54e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:24:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:25:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 16 Sep 2026 10:17:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:17:06 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:17:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:17:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:17:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4e46a40eb30f4f33300ac219238c261a88d6a36d3b6a4f29ceb58f806c57be`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a18a5b178b454f17ec285042dfd9e4df361416f94bda6d188c143bac4843800`  
		Last Modified: Wed, 09 Sep 2026 10:26:12 GMT  
		Size: 19.5 MB (19502055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a3cfd8a3c9f68d53becfde67ed56333f9bd5afc42401947598448037d5320`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.2 MB (1226075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ebe369c08893cf9a063c5f7af86db617a13f99298cf933f2fdf4902209c37d`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 42.8 MB (42789701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaf09683e8cc555e7c8a889236500021758ff00e567eeedbc5ba78f369d4dc5`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f87fdce93210961e9e890a6d85de1cde29831b6b6a8d1991396a6d714015f5`  
		Last Modified: Wed, 16 Sep 2026 10:18:13 GMT  
		Size: 52.1 MB (52082057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c11c7590c17cd88238fb88e39271934bc93db70cc62cbb6cf5f66d263d1750a`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:15e3f4473092c67c234f7c10ab0a4ec21bbb48ce2793c62372ae868d67cdd887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7337b6cfbf15e0df21a01c4e75a537f2cdc4df94287dec738cd49981658761`

```dockerfile
```

-	Layers:
	-	`sha256:9aa9e23658e5271c4506e3a8864a0a57bb8741d870bffa69242bd37c30996e6c`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 3.3 MB (3279064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06d41560e0604936c3f065f815dcd0e284f42f07a49c033e4a464328b0bec327`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.21-bookworm`

```console
$ docker pull cassandra@sha256:d388e652072f9a599ed045f05382e9a6a372dbb8311bbea8eacf90f3c3554696
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
$ docker pull cassandra@sha256:f11ce6ebd703722dabcccfd4189c5903fcb28454a8210d749e971913258c0657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b1020dffdca580103f2c21d949d7a7d6878f53dba7e85bf4640e5878ef527a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:11:36 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:52 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:52 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:52 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 01:11:52 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 01:12:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:12:09 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:12:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:12:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:12:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:12:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e13e5b14ebd057e510da49aeb429577002fc015ec3039a45bd0b7853db7f09`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4225dc979239e53cf6d68a3a60f32d5552ac3f1030f6dff36198614ef35a080c`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 18.2 MB (18154244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb350230f216f92fcd787b488175fe1370428c2bd5c2817b9815840d28ee00f1`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 1.3 MB (1267051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679f93af23efac196adfe630236953855d7b652311d6f196f172546c6751f14b`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 47.3 MB (47323621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1715353813d5b8f3494ba5101cf91e809a7301929df10fa9be84d0d81d54d8e7`  
		Last Modified: Sat, 19 Sep 2026 01:12:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14536b6e402590e1ddba1c465a95f75d642119e6330a46f95ff9795ba6010c1b`  
		Last Modified: Sat, 19 Sep 2026 01:12:23 GMT  
		Size: 52.1 MB (52081648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aafe41fa03bdff7316a6e69dcd3bab61f2c5d9fe96b11de6acc0edbab8d2855`  
		Last Modified: Sat, 19 Sep 2026 01:12:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:9fb51b02e0d3aa678fb53c42e1aa6d464bfa13338949adcd44e2fa345ec1efe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a290936f42e377c324a8fca43e953a1d864cce53553d6fbae323ec8592b98e34`

```dockerfile
```

-	Layers:
	-	`sha256:bf167409dfe52f9904de04bcf3bcc6717b0df93932bca689b1a22e89d571a9cf`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 3.3 MB (3274852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a1a4ac11e95daf9c9948b1cd9cbd549c9e7e0b83d11ac86234a2353940d20c`  
		Last Modified: Sat, 19 Sep 2026 01:12:21 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:07f40b5b84c3e97a39782c372b6edc2ccc94a765127444066fbcde27640f54f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138917798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33d4afe5c140a9186709207d8402b5c5d66a8d332f23b5d41c8092b9ebb2d7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 02:02:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:28 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:29 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:29 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:29 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 02:02:29 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 02:02:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:49 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:49 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc1899754a2a52b1561c6ae57f9bf28c0c7165a2e697cc14951ac9bec04fa37`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0772326a446a4fff6002190ea35b869226ec37fcdf2f12e9ff514e61d08298a`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 16.2 MB (16224361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8aa54e9d664cea323f9b1a2f5aaac950939fb0ad1c74aa33c503549b5a48ea0`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 1.2 MB (1233089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c8c45f13d2cc69ff6f9314b8d21ff6f80a2d5414561f6bb24e190b46a4ae20`  
		Last Modified: Sat, 19 Sep 2026 02:03:02 GMT  
		Size: 45.4 MB (45433046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32eb43a70d72c060c31033a6cb7537c7a743d01a4df810cb95663fe40dd1ca8`  
		Last Modified: Sat, 19 Sep 2026 02:03:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cce3d2b9b1262dc0dfe03258666276dfc480606e664003f956e91da7b9575b`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 52.1 MB (52081726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e48b29ffe202ec2551f9052b9f0d4555927286f672b92dd61b73348a7f54f1`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:6fb251f91986ac3fef1c3937ad8a05070d48f7cb04b6759974c70b3b3cf4852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05563d4ba2e37f66d031fd7448ca5e739c6cc9153d0f685b7359a9f6d453338f`

```dockerfile
```

-	Layers:
	-	`sha256:a7c25d885aa583424a47deae2f872d5abbc610058fba8fbf6923aafb5a1e2338`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 3.3 MB (3278566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf4198d8170321514abeae30d54c3afec224dc5a89749cbccc8c2e35b0239b3b`  
		Last Modified: Sat, 19 Sep 2026 02:03:01 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:962e7dd927d72b0302f516a72c679b59d969bbbc8ccadbc147884dc9680e52ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144962372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b0b1a5fcdc8c7b5c614afb0a166066272778aa5fcb072f516e7099c98ceb13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:59 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:19:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:15 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:19:15 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:15 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_VERSION=4.0.21
# Sat, 19 Sep 2026 01:19:15 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Sat, 19 Sep 2026 01:19:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:32 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:32 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cc4f0c26710f4d3c52f798b9e96a7c6bc04ebfff7d2bd6efd9bee76d6134c9`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7140ad415ecca5f06a6aa4c8415da2c8da923a29d7582e49a45f0607518a09ff`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 17.9 MB (17901551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90104caae42a4183fcc633733cfed4c010b14a02cdd9edf690f61afda701cc5c`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 1.2 MB (1220549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2d4d997a8819387a35ba9efed8148ef336d337d12d5e2c1a2fced0007ecd37`  
		Last Modified: Sat, 19 Sep 2026 01:19:45 GMT  
		Size: 45.6 MB (45632389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aca7c9e14e2cb10a53427092344031b1c94aeaa9414ac0e5343c7e4979910e`  
		Last Modified: Sat, 19 Sep 2026 01:19:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496899086f83334113ec3835a7bbfeb5b211e492e784c2324fa59872731e30a4`  
		Last Modified: Sat, 19 Sep 2026 01:19:46 GMT  
		Size: 52.1 MB (52081743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9608458cfaf6a2728423aeb141f907092d702d989c0ac843e0736ef4720c53`  
		Last Modified: Sat, 19 Sep 2026 01:19:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:e7bbbdf6b6544dcd3c26dcef00d8e43b3e714118fba3459e5ec144851c65e20f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25307ac66b846a57c8f9bfdfa5a5c176b4da7c5b5fbe5e651d2b2ea84239b9cc`

```dockerfile
```

-	Layers:
	-	`sha256:4875110346166854f1ba4757da555e087d1ab95c91d9715f7cc05066fade57af`  
		Last Modified: Sat, 19 Sep 2026 01:19:44 GMT  
		Size: 3.3 MB (3275187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d08157a63370e57e2a7c81bd8271e3a779a696cb65471174a1e1e25767fd573`  
		Last Modified: Sat, 19 Sep 2026 01:19:43 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:60c67d4bc8e546371c260a817bc2e045c0b1027f7ed44fdb19b255e2be0165a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147678828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233621d26f432938a40861a51f7f12f25e0c00a48a451ff63cc3bf29650ce54e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:24:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:25:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 16 Sep 2026 10:17:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:17:06 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:17:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:17:08 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:17:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4e46a40eb30f4f33300ac219238c261a88d6a36d3b6a4f29ceb58f806c57be`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a18a5b178b454f17ec285042dfd9e4df361416f94bda6d188c143bac4843800`  
		Last Modified: Wed, 09 Sep 2026 10:26:12 GMT  
		Size: 19.5 MB (19502055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a3cfd8a3c9f68d53becfde67ed56333f9bd5afc42401947598448037d5320`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.2 MB (1226075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ebe369c08893cf9a063c5f7af86db617a13f99298cf933f2fdf4902209c37d`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 42.8 MB (42789701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaf09683e8cc555e7c8a889236500021758ff00e567eeedbc5ba78f369d4dc5`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f87fdce93210961e9e890a6d85de1cde29831b6b6a8d1991396a6d714015f5`  
		Last Modified: Wed, 16 Sep 2026 10:18:13 GMT  
		Size: 52.1 MB (52082057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c11c7590c17cd88238fb88e39271934bc93db70cc62cbb6cf5f66d263d1750a`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:15e3f4473092c67c234f7c10ab0a4ec21bbb48ce2793c62372ae868d67cdd887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7337b6cfbf15e0df21a01c4e75a537f2cdc4df94287dec738cd49981658761`

```dockerfile
```

-	Layers:
	-	`sha256:9aa9e23658e5271c4506e3a8864a0a57bb8741d870bffa69242bd37c30996e6c`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 3.3 MB (3279064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06d41560e0604936c3f065f815dcd0e284f42f07a49c033e4a464328b0bec327`  
		Last Modified: Wed, 16 Sep 2026 10:18:12 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1`

```console
$ docker pull cassandra@sha256:b11fe04f6a3b1a8d7f0664d2ed0b3680feaa5760bff78921c86bd3f3124076cf
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
$ docker pull cassandra@sha256:b3341061a736ef696c738d1a69a5daf1d76aefa33a756b542bba79ea47313a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149187938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc66088834f631e2987c56537d105a23f1a310522629df288c77bec0f9bbb85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:11:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd161596e62e4b8e35c17c264fece307eb4d5fcbcac7f16f049af77737d4feb2`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a6832a1b38565f6251eb32385fea895a65f1b728631584aae1b18771efa463`  
		Last Modified: Sat, 19 Sep 2026 01:12:04 GMT  
		Size: 18.2 MB (18154218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5db05efb0e9a80734ed843b109a26424219763536e07a84dde2079aeb95f646`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.3 MB (1266983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651731408ae8819110201144f2459da4400416ff06570389b12d583e6ea070b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 47.3 MB (47323596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2558db7ceaa73eae9825043fa8b3064ab410ed3f5feb743f698763333a923d`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d04d43629c896b99dd522ec169b86c0eb4260c42483cba587ae8739d7aaea0`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 54.2 MB (54202242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40c20be4b1391ea4ead13d2b2eaf1b82b3f2d5f8072d60e56db00143706ab7b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:735a8d91bea71ebfd683b969084aa1a5dc1f33e79e5c7f9de54b8aee2722964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc7cfed7f6b2c9afdef915b980807559a68da98b7e14d7973b088aeec9ba05c`

```dockerfile
```

-	Layers:
	-	`sha256:d2740e1894abfbae3d9d594612a03a8d349fe9f40760991d34179be0e677b0dd`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 3.3 MB (3281919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78edb8125a7682b39bc983e82e7bbdaa361c3ffa07f5d2c90bc45d85fed10678`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ab16242dd32ce6d785ecda9c632d212102dec5973acb8a6253e753fae8c71910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141038245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c545f95dfe7fa26a13b6e3bfba3477968d6d2c0db670b3477b06ce09ec7d84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 02:02:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:25 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:26 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 02:02:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:45 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:45 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a70871f8d60da662b8e5cfd137c5f0acb15fc8056793baffda6fd5deff7ba49`  
		Last Modified: Sat, 19 Sep 2026 02:02:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b5f1d79a210166a4c4f9803f5a2e8e962b43fcd8494ea6a73d555ab706bfa6`  
		Last Modified: Sat, 19 Sep 2026 02:02:57 GMT  
		Size: 16.2 MB (16224343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5be6fecee0cff0ee7f79e3da8213bb63c1dc00746f5a4c4acf725c7eee20c6`  
		Last Modified: Sat, 19 Sep 2026 02:02:56 GMT  
		Size: 1.2 MB (1233074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97286d2acba7ce8fa956cb91bcc8bc0eb1e0f91e80dcaa9f31d7ba101d5f27ea`  
		Last Modified: Sat, 19 Sep 2026 02:02:58 GMT  
		Size: 45.4 MB (45433048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a78894a5b7d3690c92a6b1b5bc2ca2b40ec42829cc4a9d63069a5d672c745c8`  
		Last Modified: Sat, 19 Sep 2026 02:02:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211a1f59dc61c89eed083005ff21793e3a4e28b8327518b73f1ed547f3d990e8`  
		Last Modified: Sat, 19 Sep 2026 02:02:59 GMT  
		Size: 54.2 MB (54202202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39951872983438617e6703b30cd1869176b81fc86f0b389a0dbc7f0452992e2a`  
		Last Modified: Sat, 19 Sep 2026 02:02:59 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:440676302be89eae3d65ddbb9cb1dbb5fadc864a47d8055050e1fede941fc17e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69119e7c6cb7d7c0cb26f8497c73ddb1b77987bc4fc8c84cf7624a29aa9d389c`

```dockerfile
```

-	Layers:
	-	`sha256:e306e4fb1444c20fb91e58ddfbcfe962caa80a7a5636d54e4a227f7474391631`  
		Last Modified: Sat, 19 Sep 2026 02:02:57 GMT  
		Size: 3.3 MB (3285649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a088bd33bd1bfcda526e4488ac7e1ad7ed82e4330c289ad4a5e78063e9ee8dba`  
		Last Modified: Sat, 19 Sep 2026 02:02:56 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f17f093b4c175fdecd75e505762e7e86d97b26f3abc73c5a83697ad3709b5545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147082761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70255ef159171f0e2b0766e5f7afdeb0ceb114fed54027624234517d8a34673f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:46 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:19:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:19:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c60dc1a8f9ca1b7785b6ef8468173ef64008d25917e8e2dd3d837ac77ed825`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3236516622c91fbbbcaf02ec23df1c1ca666cd0b020eb4880e4456f8dc74d68c`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 17.9 MB (17901506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48270257f79c1756a9bd64106459ed5642fc9257125220a75408c99facf21659`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.2 MB (1220524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bccc28edc1b8681cb8de2450301477d2db8f2f15bdc3b712212f137c7d9a92a`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 45.6 MB (45632389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776ff8ecd63c9ea7fb52fe5b4cafe5144e7292701cf7278a8aa6452557f2fcc8`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800c9bf94013bca5843e4e21713ade31975e90230d13f143a8226090524b76ec`  
		Last Modified: Sat, 19 Sep 2026 01:19:34 GMT  
		Size: 54.2 MB (54202200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ceaac4e55f0adf860912de7aacf3541703d74e9bdfecfa69acccc8049b438ab`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:cffd171f594b268976b7a646c3fd9964094e89d77dcbfc7de133a19d90cd0953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5649222aa72e9935a8b15354ff05425ee5d51cca41f586e5ae8e7c05db2f0343`

```dockerfile
```

-	Layers:
	-	`sha256:e3960fe47d2543927c0727511994ce3ca40709e5d512eea1939b1977b9ffa51d`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 3.3 MB (3282278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83e4a26be05ce53af461d8aa57f5eaa243bb299a732a0b0066761fc6882c54f3`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6a3fd4f22694ec8da071809d38275cbed2bbb7566e83145fe3672897cd1b1d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149799282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327d970937eaf9347e7f4a6a6b55c72b199d864d8c681346c8bc4e27e177d2c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:24:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:25:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 16 Sep 2026 10:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4e46a40eb30f4f33300ac219238c261a88d6a36d3b6a4f29ceb58f806c57be`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a18a5b178b454f17ec285042dfd9e4df361416f94bda6d188c143bac4843800`  
		Last Modified: Wed, 09 Sep 2026 10:26:12 GMT  
		Size: 19.5 MB (19502055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a3cfd8a3c9f68d53becfde67ed56333f9bd5afc42401947598448037d5320`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.2 MB (1226075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ebe369c08893cf9a063c5f7af86db617a13f99298cf933f2fdf4902209c37d`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 42.8 MB (42789701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaf09683e8cc555e7c8a889236500021758ff00e567eeedbc5ba78f369d4dc5`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a99f3bff035df0d21d2dc142a5bf8c6b5bcb2dd0b6ccb1edff7472b8320b2f`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 54.2 MB (54202513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8df90d3d56cae27a6831187ba755a807c5e81da7793a407ec59ebe454f6d17`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:b40492b0fe83d452cee32c0f241600e77e4d9e3539d1346493ebd5e0f74e4fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a583e4d2ac735b2953ea8d892fc07949c3d8c4e8e2f1fd0b2f3c56d402a18302`

```dockerfile
```

-	Layers:
	-	`sha256:e6d04db7a9153ce7586d4cd1a4231f7f54ae0eb6a518cc226f0dcdc96b454eca`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 3.3 MB (3286143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad5a099bd64b2c263115694f2f25e2bc3bc94428f2780e3f159fe5229737072`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1-bookworm`

```console
$ docker pull cassandra@sha256:b11fe04f6a3b1a8d7f0664d2ed0b3680feaa5760bff78921c86bd3f3124076cf
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
$ docker pull cassandra@sha256:b3341061a736ef696c738d1a69a5daf1d76aefa33a756b542bba79ea47313a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149187938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc66088834f631e2987c56537d105a23f1a310522629df288c77bec0f9bbb85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:11:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd161596e62e4b8e35c17c264fece307eb4d5fcbcac7f16f049af77737d4feb2`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a6832a1b38565f6251eb32385fea895a65f1b728631584aae1b18771efa463`  
		Last Modified: Sat, 19 Sep 2026 01:12:04 GMT  
		Size: 18.2 MB (18154218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5db05efb0e9a80734ed843b109a26424219763536e07a84dde2079aeb95f646`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.3 MB (1266983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651731408ae8819110201144f2459da4400416ff06570389b12d583e6ea070b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 47.3 MB (47323596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2558db7ceaa73eae9825043fa8b3064ab410ed3f5feb743f698763333a923d`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d04d43629c896b99dd522ec169b86c0eb4260c42483cba587ae8739d7aaea0`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 54.2 MB (54202242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40c20be4b1391ea4ead13d2b2eaf1b82b3f2d5f8072d60e56db00143706ab7b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:735a8d91bea71ebfd683b969084aa1a5dc1f33e79e5c7f9de54b8aee2722964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc7cfed7f6b2c9afdef915b980807559a68da98b7e14d7973b088aeec9ba05c`

```dockerfile
```

-	Layers:
	-	`sha256:d2740e1894abfbae3d9d594612a03a8d349fe9f40760991d34179be0e677b0dd`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 3.3 MB (3281919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78edb8125a7682b39bc983e82e7bbdaa361c3ffa07f5d2c90bc45d85fed10678`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ab16242dd32ce6d785ecda9c632d212102dec5973acb8a6253e753fae8c71910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141038245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c545f95dfe7fa26a13b6e3bfba3477968d6d2c0db670b3477b06ce09ec7d84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 02:02:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:25 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:26 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 02:02:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:45 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:45 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a70871f8d60da662b8e5cfd137c5f0acb15fc8056793baffda6fd5deff7ba49`  
		Last Modified: Sat, 19 Sep 2026 02:02:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b5f1d79a210166a4c4f9803f5a2e8e962b43fcd8494ea6a73d555ab706bfa6`  
		Last Modified: Sat, 19 Sep 2026 02:02:57 GMT  
		Size: 16.2 MB (16224343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5be6fecee0cff0ee7f79e3da8213bb63c1dc00746f5a4c4acf725c7eee20c6`  
		Last Modified: Sat, 19 Sep 2026 02:02:56 GMT  
		Size: 1.2 MB (1233074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97286d2acba7ce8fa956cb91bcc8bc0eb1e0f91e80dcaa9f31d7ba101d5f27ea`  
		Last Modified: Sat, 19 Sep 2026 02:02:58 GMT  
		Size: 45.4 MB (45433048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a78894a5b7d3690c92a6b1b5bc2ca2b40ec42829cc4a9d63069a5d672c745c8`  
		Last Modified: Sat, 19 Sep 2026 02:02:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211a1f59dc61c89eed083005ff21793e3a4e28b8327518b73f1ed547f3d990e8`  
		Last Modified: Sat, 19 Sep 2026 02:02:59 GMT  
		Size: 54.2 MB (54202202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39951872983438617e6703b30cd1869176b81fc86f0b389a0dbc7f0452992e2a`  
		Last Modified: Sat, 19 Sep 2026 02:02:59 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:440676302be89eae3d65ddbb9cb1dbb5fadc864a47d8055050e1fede941fc17e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69119e7c6cb7d7c0cb26f8497c73ddb1b77987bc4fc8c84cf7624a29aa9d389c`

```dockerfile
```

-	Layers:
	-	`sha256:e306e4fb1444c20fb91e58ddfbcfe962caa80a7a5636d54e4a227f7474391631`  
		Last Modified: Sat, 19 Sep 2026 02:02:57 GMT  
		Size: 3.3 MB (3285649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a088bd33bd1bfcda526e4488ac7e1ad7ed82e4330c289ad4a5e78063e9ee8dba`  
		Last Modified: Sat, 19 Sep 2026 02:02:56 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f17f093b4c175fdecd75e505762e7e86d97b26f3abc73c5a83697ad3709b5545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147082761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70255ef159171f0e2b0766e5f7afdeb0ceb114fed54027624234517d8a34673f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:46 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:19:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:19:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c60dc1a8f9ca1b7785b6ef8468173ef64008d25917e8e2dd3d837ac77ed825`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3236516622c91fbbbcaf02ec23df1c1ca666cd0b020eb4880e4456f8dc74d68c`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 17.9 MB (17901506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48270257f79c1756a9bd64106459ed5642fc9257125220a75408c99facf21659`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.2 MB (1220524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bccc28edc1b8681cb8de2450301477d2db8f2f15bdc3b712212f137c7d9a92a`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 45.6 MB (45632389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776ff8ecd63c9ea7fb52fe5b4cafe5144e7292701cf7278a8aa6452557f2fcc8`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800c9bf94013bca5843e4e21713ade31975e90230d13f143a8226090524b76ec`  
		Last Modified: Sat, 19 Sep 2026 01:19:34 GMT  
		Size: 54.2 MB (54202200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ceaac4e55f0adf860912de7aacf3541703d74e9bdfecfa69acccc8049b438ab`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:cffd171f594b268976b7a646c3fd9964094e89d77dcbfc7de133a19d90cd0953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5649222aa72e9935a8b15354ff05425ee5d51cca41f586e5ae8e7c05db2f0343`

```dockerfile
```

-	Layers:
	-	`sha256:e3960fe47d2543927c0727511994ce3ca40709e5d512eea1939b1977b9ffa51d`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 3.3 MB (3282278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83e4a26be05ce53af461d8aa57f5eaa243bb299a732a0b0066761fc6882c54f3`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6a3fd4f22694ec8da071809d38275cbed2bbb7566e83145fe3672897cd1b1d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149799282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327d970937eaf9347e7f4a6a6b55c72b199d864d8c681346c8bc4e27e177d2c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:24:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:25:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 16 Sep 2026 10:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4e46a40eb30f4f33300ac219238c261a88d6a36d3b6a4f29ceb58f806c57be`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a18a5b178b454f17ec285042dfd9e4df361416f94bda6d188c143bac4843800`  
		Last Modified: Wed, 09 Sep 2026 10:26:12 GMT  
		Size: 19.5 MB (19502055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a3cfd8a3c9f68d53becfde67ed56333f9bd5afc42401947598448037d5320`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.2 MB (1226075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ebe369c08893cf9a063c5f7af86db617a13f99298cf933f2fdf4902209c37d`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 42.8 MB (42789701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaf09683e8cc555e7c8a889236500021758ff00e567eeedbc5ba78f369d4dc5`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a99f3bff035df0d21d2dc142a5bf8c6b5bcb2dd0b6ccb1edff7472b8320b2f`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 54.2 MB (54202513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8df90d3d56cae27a6831187ba755a807c5e81da7793a407ec59ebe454f6d17`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b40492b0fe83d452cee32c0f241600e77e4d9e3539d1346493ebd5e0f74e4fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a583e4d2ac735b2953ea8d892fc07949c3d8c4e8e2f1fd0b2f3c56d402a18302`

```dockerfile
```

-	Layers:
	-	`sha256:e6d04db7a9153ce7586d4cd1a4231f7f54ae0eb6a518cc226f0dcdc96b454eca`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 3.3 MB (3286143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad5a099bd64b2c263115694f2f25e2bc3bc94428f2780e3f159fe5229737072`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.12`

```console
$ docker pull cassandra@sha256:b11fe04f6a3b1a8d7f0664d2ed0b3680feaa5760bff78921c86bd3f3124076cf
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
$ docker pull cassandra@sha256:b3341061a736ef696c738d1a69a5daf1d76aefa33a756b542bba79ea47313a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149187938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc66088834f631e2987c56537d105a23f1a310522629df288c77bec0f9bbb85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:11:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd161596e62e4b8e35c17c264fece307eb4d5fcbcac7f16f049af77737d4feb2`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a6832a1b38565f6251eb32385fea895a65f1b728631584aae1b18771efa463`  
		Last Modified: Sat, 19 Sep 2026 01:12:04 GMT  
		Size: 18.2 MB (18154218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5db05efb0e9a80734ed843b109a26424219763536e07a84dde2079aeb95f646`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.3 MB (1266983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651731408ae8819110201144f2459da4400416ff06570389b12d583e6ea070b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 47.3 MB (47323596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2558db7ceaa73eae9825043fa8b3064ab410ed3f5feb743f698763333a923d`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d04d43629c896b99dd522ec169b86c0eb4260c42483cba587ae8739d7aaea0`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 54.2 MB (54202242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40c20be4b1391ea4ead13d2b2eaf1b82b3f2d5f8072d60e56db00143706ab7b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:735a8d91bea71ebfd683b969084aa1a5dc1f33e79e5c7f9de54b8aee2722964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc7cfed7f6b2c9afdef915b980807559a68da98b7e14d7973b088aeec9ba05c`

```dockerfile
```

-	Layers:
	-	`sha256:d2740e1894abfbae3d9d594612a03a8d349fe9f40760991d34179be0e677b0dd`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 3.3 MB (3281919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78edb8125a7682b39bc983e82e7bbdaa361c3ffa07f5d2c90bc45d85fed10678`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ab16242dd32ce6d785ecda9c632d212102dec5973acb8a6253e753fae8c71910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141038245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c545f95dfe7fa26a13b6e3bfba3477968d6d2c0db670b3477b06ce09ec7d84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 02:02:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:25 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:26 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 02:02:26 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 02:02:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:45 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:45 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a70871f8d60da662b8e5cfd137c5f0acb15fc8056793baffda6fd5deff7ba49`  
		Last Modified: Sat, 19 Sep 2026 02:02:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b5f1d79a210166a4c4f9803f5a2e8e962b43fcd8494ea6a73d555ab706bfa6`  
		Last Modified: Sat, 19 Sep 2026 02:02:57 GMT  
		Size: 16.2 MB (16224343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5be6fecee0cff0ee7f79e3da8213bb63c1dc00746f5a4c4acf725c7eee20c6`  
		Last Modified: Sat, 19 Sep 2026 02:02:56 GMT  
		Size: 1.2 MB (1233074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97286d2acba7ce8fa956cb91bcc8bc0eb1e0f91e80dcaa9f31d7ba101d5f27ea`  
		Last Modified: Sat, 19 Sep 2026 02:02:58 GMT  
		Size: 45.4 MB (45433048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a78894a5b7d3690c92a6b1b5bc2ca2b40ec42829cc4a9d63069a5d672c745c8`  
		Last Modified: Sat, 19 Sep 2026 02:02:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211a1f59dc61c89eed083005ff21793e3a4e28b8327518b73f1ed547f3d990e8`  
		Last Modified: Sat, 19 Sep 2026 02:02:59 GMT  
		Size: 54.2 MB (54202202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39951872983438617e6703b30cd1869176b81fc86f0b389a0dbc7f0452992e2a`  
		Last Modified: Sat, 19 Sep 2026 02:02:59 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:440676302be89eae3d65ddbb9cb1dbb5fadc864a47d8055050e1fede941fc17e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69119e7c6cb7d7c0cb26f8497c73ddb1b77987bc4fc8c84cf7624a29aa9d389c`

```dockerfile
```

-	Layers:
	-	`sha256:e306e4fb1444c20fb91e58ddfbcfe962caa80a7a5636d54e4a227f7474391631`  
		Last Modified: Sat, 19 Sep 2026 02:02:57 GMT  
		Size: 3.3 MB (3285649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a088bd33bd1bfcda526e4488ac7e1ad7ed82e4330c289ad4a5e78063e9ee8dba`  
		Last Modified: Sat, 19 Sep 2026 02:02:56 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f17f093b4c175fdecd75e505762e7e86d97b26f3abc73c5a83697ad3709b5545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147082761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70255ef159171f0e2b0766e5f7afdeb0ceb114fed54027624234517d8a34673f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:46 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:19:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:19:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c60dc1a8f9ca1b7785b6ef8468173ef64008d25917e8e2dd3d837ac77ed825`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3236516622c91fbbbcaf02ec23df1c1ca666cd0b020eb4880e4456f8dc74d68c`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 17.9 MB (17901506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48270257f79c1756a9bd64106459ed5642fc9257125220a75408c99facf21659`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.2 MB (1220524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bccc28edc1b8681cb8de2450301477d2db8f2f15bdc3b712212f137c7d9a92a`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 45.6 MB (45632389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776ff8ecd63c9ea7fb52fe5b4cafe5144e7292701cf7278a8aa6452557f2fcc8`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800c9bf94013bca5843e4e21713ade31975e90230d13f143a8226090524b76ec`  
		Last Modified: Sat, 19 Sep 2026 01:19:34 GMT  
		Size: 54.2 MB (54202200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ceaac4e55f0adf860912de7aacf3541703d74e9bdfecfa69acccc8049b438ab`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:cffd171f594b268976b7a646c3fd9964094e89d77dcbfc7de133a19d90cd0953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5649222aa72e9935a8b15354ff05425ee5d51cca41f586e5ae8e7c05db2f0343`

```dockerfile
```

-	Layers:
	-	`sha256:e3960fe47d2543927c0727511994ce3ca40709e5d512eea1939b1977b9ffa51d`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 3.3 MB (3282278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83e4a26be05ce53af461d8aa57f5eaa243bb299a732a0b0066761fc6882c54f3`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6a3fd4f22694ec8da071809d38275cbed2bbb7566e83145fe3672897cd1b1d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149799282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327d970937eaf9347e7f4a6a6b55c72b199d864d8c681346c8bc4e27e177d2c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:24:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:25:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 16 Sep 2026 10:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4e46a40eb30f4f33300ac219238c261a88d6a36d3b6a4f29ceb58f806c57be`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a18a5b178b454f17ec285042dfd9e4df361416f94bda6d188c143bac4843800`  
		Last Modified: Wed, 09 Sep 2026 10:26:12 GMT  
		Size: 19.5 MB (19502055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a3cfd8a3c9f68d53becfde67ed56333f9bd5afc42401947598448037d5320`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.2 MB (1226075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ebe369c08893cf9a063c5f7af86db617a13f99298cf933f2fdf4902209c37d`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 42.8 MB (42789701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaf09683e8cc555e7c8a889236500021758ff00e567eeedbc5ba78f369d4dc5`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a99f3bff035df0d21d2dc142a5bf8c6b5bcb2dd0b6ccb1edff7472b8320b2f`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 54.2 MB (54202513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8df90d3d56cae27a6831187ba755a807c5e81da7793a407ec59ebe454f6d17`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:b40492b0fe83d452cee32c0f241600e77e4d9e3539d1346493ebd5e0f74e4fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a583e4d2ac735b2953ea8d892fc07949c3d8c4e8e2f1fd0b2f3c56d402a18302`

```dockerfile
```

-	Layers:
	-	`sha256:e6d04db7a9153ce7586d4cd1a4231f7f54ae0eb6a518cc226f0dcdc96b454eca`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 3.3 MB (3286143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad5a099bd64b2c263115694f2f25e2bc3bc94428f2780e3f159fe5229737072`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.12-bookworm`

```console
$ docker pull cassandra@sha256:17396c467d9408afe978630a9a0e12600b07176dc0c966228298e148ef432480
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
$ docker pull cassandra@sha256:b3341061a736ef696c738d1a69a5daf1d76aefa33a756b542bba79ea47313a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149187938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc66088834f631e2987c56537d105a23f1a310522629df288c77bec0f9bbb85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:11:19 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:35 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:35 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:11:35 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd161596e62e4b8e35c17c264fece307eb4d5fcbcac7f16f049af77737d4feb2`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a6832a1b38565f6251eb32385fea895a65f1b728631584aae1b18771efa463`  
		Last Modified: Sat, 19 Sep 2026 01:12:04 GMT  
		Size: 18.2 MB (18154218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5db05efb0e9a80734ed843b109a26424219763536e07a84dde2079aeb95f646`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 1.3 MB (1266983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c651731408ae8819110201144f2459da4400416ff06570389b12d583e6ea070b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 47.3 MB (47323596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2558db7ceaa73eae9825043fa8b3064ab410ed3f5feb743f698763333a923d`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d04d43629c896b99dd522ec169b86c0eb4260c42483cba587ae8739d7aaea0`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 54.2 MB (54202242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40c20be4b1391ea4ead13d2b2eaf1b82b3f2d5f8072d60e56db00143706ab7b`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:735a8d91bea71ebfd683b969084aa1a5dc1f33e79e5c7f9de54b8aee2722964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc7cfed7f6b2c9afdef915b980807559a68da98b7e14d7973b088aeec9ba05c`

```dockerfile
```

-	Layers:
	-	`sha256:d2740e1894abfbae3d9d594612a03a8d349fe9f40760991d34179be0e677b0dd`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 3.3 MB (3281919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78edb8125a7682b39bc983e82e7bbdaa361c3ffa07f5d2c90bc45d85fed10678`  
		Last Modified: Sat, 19 Sep 2026 01:12:03 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:6216305c81aa50eb57b6ee854126ed9a722eb6c02c307e0dc38292d7a0ccc048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141034981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8b427fc661d508371f1aae7c4b5abff4d55265d1c9d2fa76f82ad6bf071fc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:15:34 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 16 Sep 2026 04:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 16 Sep 2026 04:15:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:15:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:54 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 04:15:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 16 Sep 2026 04:15:54 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 16 Sep 2026 04:16:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 04:16:16 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 04:16:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 04:16:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 04:16:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 04:16:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ddc9aa17b1ab490c9ef565049ccb5d8a048a4c264ece6a8d2ef612b0709997`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffb47adb967b7b66e48a5013e373f9276f306bd8eb089965e508a9758efdf3f7`  
		Last Modified: Wed, 16 Sep 2026 04:16:29 GMT  
		Size: 16.2 MB (16224315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4e3cfdfb8e60de5735c1dc796069e4d8e65d441461f9c24041c81973503eea`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 1.2 MB (1233109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5f13c08e4e584cafe6c80d725bab6ca65ec5da933c26e96f771d07a10f51ab`  
		Last Modified: Wed, 16 Sep 2026 04:16:30 GMT  
		Size: 45.4 MB (45433026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a9ce76a614cef774d1a60505282e08c88a35d76ae3f886ec4dd010c960a65e`  
		Last Modified: Wed, 16 Sep 2026 04:16:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc8c361917256fcf5fbecf5dbf96b9ce445102f1072fee73d099b7026379bef`  
		Last Modified: Wed, 16 Sep 2026 04:16:31 GMT  
		Size: 54.2 MB (54202224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61ab1152b1d1f191cd44ff4bd310e6f054c5a11083105068b2a5a12a1e6d82`  
		Last Modified: Wed, 16 Sep 2026 04:16:30 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:faaa3833f69d827ed5835009ab22fad8ec11a7ba135af53c31aad1cb35eb7d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1374d25f32e0a6600077982e967ae4e30bf973e62a56ddad51d0b1cd4e37a2a9`

```dockerfile
```

-	Layers:
	-	`sha256:3173878cf4553acd027b27c58b856b45ad49e589184bda2713b3a09b2ccb46af`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 3.3 MB (3285613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0197eaad9c308f6213fb61c022d5ee1ca25ef856cbb99dda6e7f4d2846602015`  
		Last Modified: Wed, 16 Sep 2026 04:16:28 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:f17f093b4c175fdecd75e505762e7e86d97b26f3abc73c5a83697ad3709b5545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147082761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70255ef159171f0e2b0766e5f7afdeb0ceb114fed54027624234517d8a34673f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:46 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:19:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:19:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:19:03 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:03 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_VERSION=4.1.12
# Sat, 19 Sep 2026 01:19:03 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Sat, 19 Sep 2026 01:19:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c60dc1a8f9ca1b7785b6ef8468173ef64008d25917e8e2dd3d837ac77ed825`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3236516622c91fbbbcaf02ec23df1c1ca666cd0b020eb4880e4456f8dc74d68c`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 17.9 MB (17901506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48270257f79c1756a9bd64106459ed5642fc9257125220a75408c99facf21659`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 1.2 MB (1220524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bccc28edc1b8681cb8de2450301477d2db8f2f15bdc3b712212f137c7d9a92a`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 45.6 MB (45632389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776ff8ecd63c9ea7fb52fe5b4cafe5144e7292701cf7278a8aa6452557f2fcc8`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800c9bf94013bca5843e4e21713ade31975e90230d13f143a8226090524b76ec`  
		Last Modified: Sat, 19 Sep 2026 01:19:34 GMT  
		Size: 54.2 MB (54202200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ceaac4e55f0adf860912de7aacf3541703d74e9bdfecfa69acccc8049b438ab`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:cffd171f594b268976b7a646c3fd9964094e89d77dcbfc7de133a19d90cd0953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5649222aa72e9935a8b15354ff05425ee5d51cca41f586e5ae8e7c05db2f0343`

```dockerfile
```

-	Layers:
	-	`sha256:e3960fe47d2543927c0727511994ce3ca40709e5d512eea1939b1977b9ffa51d`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 3.3 MB (3282278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83e4a26be05ce53af461d8aa57f5eaa243bb299a732a0b0066761fc6882c54f3`  
		Last Modified: Sat, 19 Sep 2026 01:19:31 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6a3fd4f22694ec8da071809d38275cbed2bbb7566e83145fe3672897cd1b1d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149799282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327d970937eaf9347e7f4a6a6b55c72b199d864d8c681346c8bc4e27e177d2c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:24:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:25:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:13:20 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:13:20 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 16 Sep 2026 10:13:20 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 16 Sep 2026 10:14:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4e46a40eb30f4f33300ac219238c261a88d6a36d3b6a4f29ceb58f806c57be`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a18a5b178b454f17ec285042dfd9e4df361416f94bda6d188c143bac4843800`  
		Last Modified: Wed, 09 Sep 2026 10:26:12 GMT  
		Size: 19.5 MB (19502055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a3cfd8a3c9f68d53becfde67ed56333f9bd5afc42401947598448037d5320`  
		Last Modified: Wed, 09 Sep 2026 10:26:11 GMT  
		Size: 1.2 MB (1226075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ebe369c08893cf9a063c5f7af86db617a13f99298cf933f2fdf4902209c37d`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 42.8 MB (42789701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaf09683e8cc555e7c8a889236500021758ff00e567eeedbc5ba78f369d4dc5`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a99f3bff035df0d21d2dc142a5bf8c6b5bcb2dd0b6ccb1edff7472b8320b2f`  
		Last Modified: Wed, 16 Sep 2026 10:15:07 GMT  
		Size: 54.2 MB (54202513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8df90d3d56cae27a6831187ba755a807c5e81da7793a407ec59ebe454f6d17`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:b40492b0fe83d452cee32c0f241600e77e4d9e3539d1346493ebd5e0f74e4fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a583e4d2ac735b2953ea8d892fc07949c3d8c4e8e2f1fd0b2f3c56d402a18302`

```dockerfile
```

-	Layers:
	-	`sha256:e6d04db7a9153ce7586d4cd1a4231f7f54ae0eb6a518cc226f0dcdc96b454eca`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 3.3 MB (3286143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad5a099bd64b2c263115694f2f25e2bc3bc94428f2780e3f159fe5229737072`  
		Last Modified: Wed, 16 Sep 2026 10:15:05 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5`

```console
$ docker pull cassandra@sha256:23b89480406e25dade96b68a7ac3899cd7313d4320c76b8fab39bb18fd63910c
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
$ docker pull cassandra@sha256:e883069cafb97a5ea982b4ea938ce9871ad2ec000a31697b142a3f029c74c979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168250714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0798b7251b756834595d5b70ea94c8e48f53024f4f12b3ffcf4dc33f470be7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499fa5da95bfe22fe2d0c798a7d071000385e81369414db40b80118bb65122c0`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282a43a7fdc51463a47d3aafcb6b527685d600fcd60a47206360d35b8d88a46c`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 15.7 MB (15650895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07a9a538091d515b8fe36a437e53726d4f043c41fcad0689ee156a8ebef371`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.3 MB (1310329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8932be80612342b423825e1001bb06e24a287fa66ef5d2c25bf065b2cf6199`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 47.5 MB (47509942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa6579adcba2b9cf09c52d1e6a2b74379dc35a7f4d20c2fe8c2f8afff3b840b`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a38148d69bb7f8e7fa3a388f428d106f3a845a0e75b18528ec4ddd9487a19c`  
		Last Modified: Sat, 19 Sep 2026 01:12:08 GMT  
		Size: 73.9 MB (73946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23b91f8712f513ef8cf1a71afe7b1a53d962ad5f53c54cfc043fa53c739f120`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:8aa1cedfe4240bf5ec4ce9781b90e22d7f3e0a6c29f662ce19c7eebb49e8f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4498dc48a9e07972e6280490cb2e9eebfdae21d2e0310b9408ac73eae01768e6`

```dockerfile
```

-	Layers:
	-	`sha256:82f29a7c0658834175a7f561377f1af69f0a21e19957d6d1042e0e4a3babfeaf`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 3.0 MB (2975961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf31ed1c81921d2c22023272745981f4d88c80f5b2a36405115774474640d303`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79334bec0fd5103a1e241cda6070e9b75f5cb9619d2789a3ee5b2c194d3314e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163170966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d78baf239665daaf74b0b4b179579bb2868f03bc9bfdbc6479caecfa0f69c42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:15:32 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 16 Sep 2026 04:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 16 Sep 2026 04:15:56 GMT
ENV GOSU_VERSION=1.19
# Wed, 16 Sep 2026 04:15:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 16 Sep 2026 04:15:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:15:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:15:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:57 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 04:15:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 04:16:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 04:16:21 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 04:16:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 04:16:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 04:16:21 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 04:16:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41f832f868328774c0865653d220a39c6a47b7bd552605a59971d9123125e4b`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e7a345dfb4a36003599f1c5f6538863bb57e2dbc8020a4fa6293ddc8942cf9`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 14.4 MB (14422632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cc9e7c7fcc277af2b624b628424cfc02fb0820fa5bb5c9678aa17f4212bc6d`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 3.5 MB (3486838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772084d24feb89fd07f3d92b4093d576b3c4153509b36f852db46e8ab09d2cfc`  
		Last Modified: Wed, 16 Sep 2026 04:16:34 GMT  
		Size: 45.1 MB (45092748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081552cb5c4088a99e4a9d9375da3f782245dcf57ccc1ec46a63f947e33a7f16`  
		Last Modified: Wed, 16 Sep 2026 04:16:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffed81688e19bed09263f33b968f1631a31e15bd668c11e8b0e9e765adfef0e1`  
		Last Modified: Wed, 16 Sep 2026 04:16:37 GMT  
		Size: 73.9 MB (73947142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1949eaa64985bb06a222ef77646bddeb66384aab7155e0577cd57e64c08c7e0`  
		Last Modified: Wed, 16 Sep 2026 04:16:35 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:b27dcaa71f54f9c81a6d58bdbc5e0ffd98616cabee9e348e23add4bd45b6fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3009154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb1cb0a14099e37e3e7b9245ad07e7dfb82813aab86cefac47e6109186455ac`

```dockerfile
```

-	Layers:
	-	`sha256:1ca0f45984c991a88aa798fdc73fe41399a27f2817d7c0829c2c9c0e7c993e06`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 3.0 MB (2971905 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c38476c06ce8fbb27b59cc3b4d4536c2fedcd1fc66f41ea35ea5bf05d1a817c6`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 37.2 KB (37249 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:bf833ba579fcab44a6b517c19d58c361fc5f4d5dea6da9c0faf2d09393e81447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae96cfb04519f857f25b57f687d4a9def2fd98765c6a99bafad9395feb76dad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:31 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:19:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:10 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5d5ff7a0eb5ca9d5dbee21202664dc107d947366da28b935d16f4b6434c2c3`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a4014784af22de94bfc72a066e63080c1052d95ddbe9f0ede2134ea886e2fb`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 15.5 MB (15535074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7697cfbb13016d4a67cb93a09e766fd7009570f5732ef1e32c787253348acdb1`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 1.3 MB (1262315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24821ae7106f6986bc056dabb4bf795753e9d3dd3eff04ba01502d7d1e27e87`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 47.0 MB (46996468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90497411df0523a94201dc024ae1b482ae05b6256841265c48499866888ad402`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262e2e7284109d1fcf05eac2394a025e527ad3309b412578d483860e8fc634a5`  
		Last Modified: Sat, 19 Sep 2026 01:19:26 GMT  
		Size: 73.9 MB (73946695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea2987101a4c2e4bfdc1543724d90b60cdd3b0a15ad2d18ed2c1ea6fe7e128b`  
		Last Modified: Sat, 19 Sep 2026 01:19:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:c060729b87f306678a6f28eef501624ad9c2efdca3281d8f2a4586501b4702fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b022d235b9b32d4558c3ed44fd82a617b167bda28085a743fdf6838704994991`

```dockerfile
```

-	Layers:
	-	`sha256:f3c8070e3ea4dc2690e2a9ad4940a336619f474592bc1756300573cbeb2b6696`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 3.0 MB (2975717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0835bf1ccf082656725cc3b46f0862cafa8ad7b2ffd9c7a99909a45ff1545f18`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8fa791142b00baf6a407867bbdf421dac68a325e0bdf940e7afb354ecf3f57dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176112497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcbd23ff0620928ca8a3e741f384f555140823d2d52298d6b1ea29741b048cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 10:14:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21614e13cfa16a0c8beb97eff5b2aacab79a6d5a099fe0b60b1cc98e6edf207`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 47.4 MB (47422402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e36d0fdb69bab06aa41c6e23ecccd2c1b2b8e8e1f1adf1217f1695fcf7bc63`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2754491b24dad80f358c1e3c4eb8c73db0cbc99adb83cb9bde28f0528e18e11e`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 73.9 MB (73947307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58d7f40df6bbf09a467ba0d61ffddcb9a9bb696cccf58136369f798448c8845`  
		Last Modified: Wed, 16 Sep 2026 10:14:31 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:4d3b9c9631e76697c9da5cea669a6149db92eb634db9f5c72ee869995519f714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3010782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d497d5c343e4bc7f8c2d938d21f31978cefd02f9030a7597d0e43ca5621609df`

```dockerfile
```

-	Layers:
	-	`sha256:8346e4999811a8ef86ae6af447af807774a8211d59acd88f3a9d32d3f564996a`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 3.0 MB (2973632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e28fb6e0b48ad4d816dce21004c2dea895e95689b3d0778c93d767723982db8`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; s390x

```console
$ docker pull cassandra@sha256:8a7861a2db03503136fabdf0a79216ea34c610428b53f1470147e3ef4574f6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165259607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9a31093f9280eb206c13a59342cd084aebaca5757e074f3d834d44962ace0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:31:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:31:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:31:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:31:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:31:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de19cf994b8efbb04f2eaee97d62191c91deb0183a3846e65f0b9fbb168abd39`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 44.5 MB (44502493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f288f4b71d3bdc821dace9244460cfe40b480989d321e35dce9a247496034b`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dbe66d7fcde27743808dcadd20628263c0f118639673ea1153d6266feecb67`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 73.9 MB (73946990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae89bf589e0887a15360e51c3082eafe829c43a00ffed08553a1170523c91080`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:a69d9f2ac5235dadf533103d71bec5185a8d578019b6977f6f8af921f59e474c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0414992c7b7095ab3667f8783d502dc2b1c0da8e263243cff5bbfed58597f6`

```dockerfile
```

-	Layers:
	-	`sha256:421c606e88dc18bb64ea1e6d570f79a976748096bca6ac48d91570ac3fc0df86`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 3.0 MB (2976714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb49fb8e08c0fff5c0d0771edf8f35a1c1b27b918b9e0a0c9e8ffd466713675f`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5-trixie`

```console
$ docker pull cassandra@sha256:97cc0f3999ebd9a9fa86413a4822d4b71255ecdcd4900c43a1b0ba486b7e01a9
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
$ docker pull cassandra@sha256:e883069cafb97a5ea982b4ea938ce9871ad2ec000a31697b142a3f029c74c979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168250714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0798b7251b756834595d5b70ea94c8e48f53024f4f12b3ffcf4dc33f470be7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499fa5da95bfe22fe2d0c798a7d071000385e81369414db40b80118bb65122c0`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282a43a7fdc51463a47d3aafcb6b527685d600fcd60a47206360d35b8d88a46c`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 15.7 MB (15650895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07a9a538091d515b8fe36a437e53726d4f043c41fcad0689ee156a8ebef371`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.3 MB (1310329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8932be80612342b423825e1001bb06e24a287fa66ef5d2c25bf065b2cf6199`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 47.5 MB (47509942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa6579adcba2b9cf09c52d1e6a2b74379dc35a7f4d20c2fe8c2f8afff3b840b`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a38148d69bb7f8e7fa3a388f428d106f3a845a0e75b18528ec4ddd9487a19c`  
		Last Modified: Sat, 19 Sep 2026 01:12:08 GMT  
		Size: 73.9 MB (73946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23b91f8712f513ef8cf1a71afe7b1a53d962ad5f53c54cfc043fa53c739f120`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:8aa1cedfe4240bf5ec4ce9781b90e22d7f3e0a6c29f662ce19c7eebb49e8f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4498dc48a9e07972e6280490cb2e9eebfdae21d2e0310b9408ac73eae01768e6`

```dockerfile
```

-	Layers:
	-	`sha256:82f29a7c0658834175a7f561377f1af69f0a21e19957d6d1042e0e4a3babfeaf`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 3.0 MB (2975961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf31ed1c81921d2c22023272745981f4d88c80f5b2a36405115774474640d303`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:2a2fb6c41ae8a372cd0f36495051f4ca23a5d11fdd4974d41d9ed5208e546ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160968598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4a9ca89a3488dac4b4bdecb551b10c7f52a290ae6b534d20d084791e212498`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 02:02:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:27 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 02:02:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:51 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:51 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d046f713f459c754dd66b53baa2b237e03b8c315c477d73af6ee6dabddc96fab`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34e8181190fdc079b7db497b16baf8c861b9e6cc60dc2cea0d9c53e3007977e`  
		Last Modified: Sat, 19 Sep 2026 02:03:04 GMT  
		Size: 14.4 MB (14402442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfae227660bcbca3f27768c27d7fb1d3a25d1fe08076f0f57a2157bd954bf158`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.3 MB (1275104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f37e7f79cd6fc16ca725cd0ee5a85ac72094671a6550b22f814a6dd460eaab`  
		Last Modified: Sat, 19 Sep 2026 02:03:05 GMT  
		Size: 45.1 MB (45092776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84815a803082551955a575d2e937afdfe7ae131f111eca888726ced6b18f69fc`  
		Last Modified: Sat, 19 Sep 2026 02:03:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b739e7507a2173863961c106a59b457e3a045fd55fdcdb2aa18402d752811b29`  
		Last Modified: Sat, 19 Sep 2026 02:03:06 GMT  
		Size: 73.9 MB (73946887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d888b652a333151fe24ac4888439dbb791f4720fde8b834a250f0bb4183859`  
		Last Modified: Sat, 19 Sep 2026 02:03:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:6578e792a1a5bbc84a459066bfddc8645040a2236f2051bbae1f0e63cd898a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0472837e7f3abfaa92619dbac8c4a04c6953c99e3e43f6aef64b15462293fd1e`

```dockerfile
```

-	Layers:
	-	`sha256:8b71107d5e4ae357dceeb42edc892b7a2cadbe1befd66372a5119c8152fd5b69`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 3.0 MB (2977615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f4b4e7fcbc37aef6aa0ba223c14f27d57881283665931fdd0dc8890c81faab`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 37.2 KB (37249 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:bf833ba579fcab44a6b517c19d58c361fc5f4d5dea6da9c0faf2d09393e81447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae96cfb04519f857f25b57f687d4a9def2fd98765c6a99bafad9395feb76dad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:31 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:19:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:10 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5d5ff7a0eb5ca9d5dbee21202664dc107d947366da28b935d16f4b6434c2c3`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a4014784af22de94bfc72a066e63080c1052d95ddbe9f0ede2134ea886e2fb`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 15.5 MB (15535074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7697cfbb13016d4a67cb93a09e766fd7009570f5732ef1e32c787253348acdb1`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 1.3 MB (1262315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24821ae7106f6986bc056dabb4bf795753e9d3dd3eff04ba01502d7d1e27e87`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 47.0 MB (46996468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90497411df0523a94201dc024ae1b482ae05b6256841265c48499866888ad402`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262e2e7284109d1fcf05eac2394a025e527ad3309b412578d483860e8fc634a5`  
		Last Modified: Sat, 19 Sep 2026 01:19:26 GMT  
		Size: 73.9 MB (73946695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea2987101a4c2e4bfdc1543724d90b60cdd3b0a15ad2d18ed2c1ea6fe7e128b`  
		Last Modified: Sat, 19 Sep 2026 01:19:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:c060729b87f306678a6f28eef501624ad9c2efdca3281d8f2a4586501b4702fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b022d235b9b32d4558c3ed44fd82a617b167bda28085a743fdf6838704994991`

```dockerfile
```

-	Layers:
	-	`sha256:f3c8070e3ea4dc2690e2a9ad4940a336619f474592bc1756300573cbeb2b6696`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 3.0 MB (2975717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0835bf1ccf082656725cc3b46f0862cafa8ad7b2ffd9c7a99909a45ff1545f18`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8fa791142b00baf6a407867bbdf421dac68a325e0bdf940e7afb354ecf3f57dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176112497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcbd23ff0620928ca8a3e741f384f555140823d2d52298d6b1ea29741b048cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 10:14:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21614e13cfa16a0c8beb97eff5b2aacab79a6d5a099fe0b60b1cc98e6edf207`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 47.4 MB (47422402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e36d0fdb69bab06aa41c6e23ecccd2c1b2b8e8e1f1adf1217f1695fcf7bc63`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2754491b24dad80f358c1e3c4eb8c73db0cbc99adb83cb9bde28f0528e18e11e`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 73.9 MB (73947307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58d7f40df6bbf09a467ba0d61ffddcb9a9bb696cccf58136369f798448c8845`  
		Last Modified: Wed, 16 Sep 2026 10:14:31 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:4d3b9c9631e76697c9da5cea669a6149db92eb634db9f5c72ee869995519f714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3010782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d497d5c343e4bc7f8c2d938d21f31978cefd02f9030a7597d0e43ca5621609df`

```dockerfile
```

-	Layers:
	-	`sha256:8346e4999811a8ef86ae6af447af807774a8211d59acd88f3a9d32d3f564996a`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 3.0 MB (2973632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e28fb6e0b48ad4d816dce21004c2dea895e95689b3d0778c93d767723982db8`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:8a7861a2db03503136fabdf0a79216ea34c610428b53f1470147e3ef4574f6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165259607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9a31093f9280eb206c13a59342cd084aebaca5757e074f3d834d44962ace0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:31:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:31:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:31:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:31:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:31:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de19cf994b8efbb04f2eaee97d62191c91deb0183a3846e65f0b9fbb168abd39`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 44.5 MB (44502493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f288f4b71d3bdc821dace9244460cfe40b480989d321e35dce9a247496034b`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dbe66d7fcde27743808dcadd20628263c0f118639673ea1153d6266feecb67`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 73.9 MB (73946990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae89bf589e0887a15360e51c3082eafe829c43a00ffed08553a1170523c91080`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:a69d9f2ac5235dadf533103d71bec5185a8d578019b6977f6f8af921f59e474c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0414992c7b7095ab3667f8783d502dc2b1c0da8e263243cff5bbfed58597f6`

```dockerfile
```

-	Layers:
	-	`sha256:421c606e88dc18bb64ea1e6d570f79a976748096bca6ac48d91570ac3fc0df86`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 3.0 MB (2976714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb49fb8e08c0fff5c0d0771edf8f35a1c1b27b918b9e0a0c9e8ffd466713675f`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0`

```console
$ docker pull cassandra@sha256:23b89480406e25dade96b68a7ac3899cd7313d4320c76b8fab39bb18fd63910c
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
$ docker pull cassandra@sha256:e883069cafb97a5ea982b4ea938ce9871ad2ec000a31697b142a3f029c74c979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168250714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0798b7251b756834595d5b70ea94c8e48f53024f4f12b3ffcf4dc33f470be7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499fa5da95bfe22fe2d0c798a7d071000385e81369414db40b80118bb65122c0`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282a43a7fdc51463a47d3aafcb6b527685d600fcd60a47206360d35b8d88a46c`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 15.7 MB (15650895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07a9a538091d515b8fe36a437e53726d4f043c41fcad0689ee156a8ebef371`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.3 MB (1310329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8932be80612342b423825e1001bb06e24a287fa66ef5d2c25bf065b2cf6199`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 47.5 MB (47509942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa6579adcba2b9cf09c52d1e6a2b74379dc35a7f4d20c2fe8c2f8afff3b840b`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a38148d69bb7f8e7fa3a388f428d106f3a845a0e75b18528ec4ddd9487a19c`  
		Last Modified: Sat, 19 Sep 2026 01:12:08 GMT  
		Size: 73.9 MB (73946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23b91f8712f513ef8cf1a71afe7b1a53d962ad5f53c54cfc043fa53c739f120`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:8aa1cedfe4240bf5ec4ce9781b90e22d7f3e0a6c29f662ce19c7eebb49e8f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4498dc48a9e07972e6280490cb2e9eebfdae21d2e0310b9408ac73eae01768e6`

```dockerfile
```

-	Layers:
	-	`sha256:82f29a7c0658834175a7f561377f1af69f0a21e19957d6d1042e0e4a3babfeaf`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 3.0 MB (2975961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf31ed1c81921d2c22023272745981f4d88c80f5b2a36405115774474640d303`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79334bec0fd5103a1e241cda6070e9b75f5cb9619d2789a3ee5b2c194d3314e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163170966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d78baf239665daaf74b0b4b179579bb2868f03bc9bfdbc6479caecfa0f69c42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:15:32 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 16 Sep 2026 04:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 16 Sep 2026 04:15:56 GMT
ENV GOSU_VERSION=1.19
# Wed, 16 Sep 2026 04:15:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 16 Sep 2026 04:15:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:15:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:15:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:57 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 04:15:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 04:16:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 04:16:21 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 04:16:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 04:16:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 04:16:21 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 04:16:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41f832f868328774c0865653d220a39c6a47b7bd552605a59971d9123125e4b`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e7a345dfb4a36003599f1c5f6538863bb57e2dbc8020a4fa6293ddc8942cf9`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 14.4 MB (14422632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cc9e7c7fcc277af2b624b628424cfc02fb0820fa5bb5c9678aa17f4212bc6d`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 3.5 MB (3486838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772084d24feb89fd07f3d92b4093d576b3c4153509b36f852db46e8ab09d2cfc`  
		Last Modified: Wed, 16 Sep 2026 04:16:34 GMT  
		Size: 45.1 MB (45092748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081552cb5c4088a99e4a9d9375da3f782245dcf57ccc1ec46a63f947e33a7f16`  
		Last Modified: Wed, 16 Sep 2026 04:16:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffed81688e19bed09263f33b968f1631a31e15bd668c11e8b0e9e765adfef0e1`  
		Last Modified: Wed, 16 Sep 2026 04:16:37 GMT  
		Size: 73.9 MB (73947142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1949eaa64985bb06a222ef77646bddeb66384aab7155e0577cd57e64c08c7e0`  
		Last Modified: Wed, 16 Sep 2026 04:16:35 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:b27dcaa71f54f9c81a6d58bdbc5e0ffd98616cabee9e348e23add4bd45b6fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3009154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb1cb0a14099e37e3e7b9245ad07e7dfb82813aab86cefac47e6109186455ac`

```dockerfile
```

-	Layers:
	-	`sha256:1ca0f45984c991a88aa798fdc73fe41399a27f2817d7c0829c2c9c0e7c993e06`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 3.0 MB (2971905 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c38476c06ce8fbb27b59cc3b4d4536c2fedcd1fc66f41ea35ea5bf05d1a817c6`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 37.2 KB (37249 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:bf833ba579fcab44a6b517c19d58c361fc5f4d5dea6da9c0faf2d09393e81447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae96cfb04519f857f25b57f687d4a9def2fd98765c6a99bafad9395feb76dad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:31 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:19:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:10 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5d5ff7a0eb5ca9d5dbee21202664dc107d947366da28b935d16f4b6434c2c3`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a4014784af22de94bfc72a066e63080c1052d95ddbe9f0ede2134ea886e2fb`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 15.5 MB (15535074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7697cfbb13016d4a67cb93a09e766fd7009570f5732ef1e32c787253348acdb1`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 1.3 MB (1262315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24821ae7106f6986bc056dabb4bf795753e9d3dd3eff04ba01502d7d1e27e87`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 47.0 MB (46996468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90497411df0523a94201dc024ae1b482ae05b6256841265c48499866888ad402`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262e2e7284109d1fcf05eac2394a025e527ad3309b412578d483860e8fc634a5`  
		Last Modified: Sat, 19 Sep 2026 01:19:26 GMT  
		Size: 73.9 MB (73946695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea2987101a4c2e4bfdc1543724d90b60cdd3b0a15ad2d18ed2c1ea6fe7e128b`  
		Last Modified: Sat, 19 Sep 2026 01:19:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:c060729b87f306678a6f28eef501624ad9c2efdca3281d8f2a4586501b4702fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b022d235b9b32d4558c3ed44fd82a617b167bda28085a743fdf6838704994991`

```dockerfile
```

-	Layers:
	-	`sha256:f3c8070e3ea4dc2690e2a9ad4940a336619f474592bc1756300573cbeb2b6696`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 3.0 MB (2975717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0835bf1ccf082656725cc3b46f0862cafa8ad7b2ffd9c7a99909a45ff1545f18`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8fa791142b00baf6a407867bbdf421dac68a325e0bdf940e7afb354ecf3f57dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176112497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcbd23ff0620928ca8a3e741f384f555140823d2d52298d6b1ea29741b048cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 10:14:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21614e13cfa16a0c8beb97eff5b2aacab79a6d5a099fe0b60b1cc98e6edf207`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 47.4 MB (47422402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e36d0fdb69bab06aa41c6e23ecccd2c1b2b8e8e1f1adf1217f1695fcf7bc63`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2754491b24dad80f358c1e3c4eb8c73db0cbc99adb83cb9bde28f0528e18e11e`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 73.9 MB (73947307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58d7f40df6bbf09a467ba0d61ffddcb9a9bb696cccf58136369f798448c8845`  
		Last Modified: Wed, 16 Sep 2026 10:14:31 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:4d3b9c9631e76697c9da5cea669a6149db92eb634db9f5c72ee869995519f714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3010782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d497d5c343e4bc7f8c2d938d21f31978cefd02f9030a7597d0e43ca5621609df`

```dockerfile
```

-	Layers:
	-	`sha256:8346e4999811a8ef86ae6af447af807774a8211d59acd88f3a9d32d3f564996a`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 3.0 MB (2973632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e28fb6e0b48ad4d816dce21004c2dea895e95689b3d0778c93d767723982db8`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; s390x

```console
$ docker pull cassandra@sha256:8a7861a2db03503136fabdf0a79216ea34c610428b53f1470147e3ef4574f6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165259607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9a31093f9280eb206c13a59342cd084aebaca5757e074f3d834d44962ace0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:31:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:31:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:31:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:31:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:31:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de19cf994b8efbb04f2eaee97d62191c91deb0183a3846e65f0b9fbb168abd39`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 44.5 MB (44502493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f288f4b71d3bdc821dace9244460cfe40b480989d321e35dce9a247496034b`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dbe66d7fcde27743808dcadd20628263c0f118639673ea1153d6266feecb67`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 73.9 MB (73946990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae89bf589e0887a15360e51c3082eafe829c43a00ffed08553a1170523c91080`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:a69d9f2ac5235dadf533103d71bec5185a8d578019b6977f6f8af921f59e474c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0414992c7b7095ab3667f8783d502dc2b1c0da8e263243cff5bbfed58597f6`

```dockerfile
```

-	Layers:
	-	`sha256:421c606e88dc18bb64ea1e6d570f79a976748096bca6ac48d91570ac3fc0df86`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 3.0 MB (2976714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb49fb8e08c0fff5c0d0771edf8f35a1c1b27b918b9e0a0c9e8ffd466713675f`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0-trixie`

```console
$ docker pull cassandra@sha256:97cc0f3999ebd9a9fa86413a4822d4b71255ecdcd4900c43a1b0ba486b7e01a9
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
$ docker pull cassandra@sha256:e883069cafb97a5ea982b4ea938ce9871ad2ec000a31697b142a3f029c74c979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168250714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0798b7251b756834595d5b70ea94c8e48f53024f4f12b3ffcf4dc33f470be7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499fa5da95bfe22fe2d0c798a7d071000385e81369414db40b80118bb65122c0`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282a43a7fdc51463a47d3aafcb6b527685d600fcd60a47206360d35b8d88a46c`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 15.7 MB (15650895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07a9a538091d515b8fe36a437e53726d4f043c41fcad0689ee156a8ebef371`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.3 MB (1310329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8932be80612342b423825e1001bb06e24a287fa66ef5d2c25bf065b2cf6199`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 47.5 MB (47509942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa6579adcba2b9cf09c52d1e6a2b74379dc35a7f4d20c2fe8c2f8afff3b840b`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a38148d69bb7f8e7fa3a388f428d106f3a845a0e75b18528ec4ddd9487a19c`  
		Last Modified: Sat, 19 Sep 2026 01:12:08 GMT  
		Size: 73.9 MB (73946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23b91f8712f513ef8cf1a71afe7b1a53d962ad5f53c54cfc043fa53c739f120`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:8aa1cedfe4240bf5ec4ce9781b90e22d7f3e0a6c29f662ce19c7eebb49e8f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4498dc48a9e07972e6280490cb2e9eebfdae21d2e0310b9408ac73eae01768e6`

```dockerfile
```

-	Layers:
	-	`sha256:82f29a7c0658834175a7f561377f1af69f0a21e19957d6d1042e0e4a3babfeaf`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 3.0 MB (2975961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf31ed1c81921d2c22023272745981f4d88c80f5b2a36405115774474640d303`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:2a2fb6c41ae8a372cd0f36495051f4ca23a5d11fdd4974d41d9ed5208e546ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160968598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4a9ca89a3488dac4b4bdecb551b10c7f52a290ae6b534d20d084791e212498`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 02:02:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:27 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 02:02:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:51 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:51 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d046f713f459c754dd66b53baa2b237e03b8c315c477d73af6ee6dabddc96fab`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34e8181190fdc079b7db497b16baf8c861b9e6cc60dc2cea0d9c53e3007977e`  
		Last Modified: Sat, 19 Sep 2026 02:03:04 GMT  
		Size: 14.4 MB (14402442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfae227660bcbca3f27768c27d7fb1d3a25d1fe08076f0f57a2157bd954bf158`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.3 MB (1275104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f37e7f79cd6fc16ca725cd0ee5a85ac72094671a6550b22f814a6dd460eaab`  
		Last Modified: Sat, 19 Sep 2026 02:03:05 GMT  
		Size: 45.1 MB (45092776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84815a803082551955a575d2e937afdfe7ae131f111eca888726ced6b18f69fc`  
		Last Modified: Sat, 19 Sep 2026 02:03:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b739e7507a2173863961c106a59b457e3a045fd55fdcdb2aa18402d752811b29`  
		Last Modified: Sat, 19 Sep 2026 02:03:06 GMT  
		Size: 73.9 MB (73946887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d888b652a333151fe24ac4888439dbb791f4720fde8b834a250f0bb4183859`  
		Last Modified: Sat, 19 Sep 2026 02:03:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:6578e792a1a5bbc84a459066bfddc8645040a2236f2051bbae1f0e63cd898a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0472837e7f3abfaa92619dbac8c4a04c6953c99e3e43f6aef64b15462293fd1e`

```dockerfile
```

-	Layers:
	-	`sha256:8b71107d5e4ae357dceeb42edc892b7a2cadbe1befd66372a5119c8152fd5b69`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 3.0 MB (2977615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f4b4e7fcbc37aef6aa0ba223c14f27d57881283665931fdd0dc8890c81faab`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 37.2 KB (37249 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:bf833ba579fcab44a6b517c19d58c361fc5f4d5dea6da9c0faf2d09393e81447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae96cfb04519f857f25b57f687d4a9def2fd98765c6a99bafad9395feb76dad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:31 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:19:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:10 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5d5ff7a0eb5ca9d5dbee21202664dc107d947366da28b935d16f4b6434c2c3`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a4014784af22de94bfc72a066e63080c1052d95ddbe9f0ede2134ea886e2fb`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 15.5 MB (15535074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7697cfbb13016d4a67cb93a09e766fd7009570f5732ef1e32c787253348acdb1`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 1.3 MB (1262315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24821ae7106f6986bc056dabb4bf795753e9d3dd3eff04ba01502d7d1e27e87`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 47.0 MB (46996468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90497411df0523a94201dc024ae1b482ae05b6256841265c48499866888ad402`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262e2e7284109d1fcf05eac2394a025e527ad3309b412578d483860e8fc634a5`  
		Last Modified: Sat, 19 Sep 2026 01:19:26 GMT  
		Size: 73.9 MB (73946695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea2987101a4c2e4bfdc1543724d90b60cdd3b0a15ad2d18ed2c1ea6fe7e128b`  
		Last Modified: Sat, 19 Sep 2026 01:19:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:c060729b87f306678a6f28eef501624ad9c2efdca3281d8f2a4586501b4702fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b022d235b9b32d4558c3ed44fd82a617b167bda28085a743fdf6838704994991`

```dockerfile
```

-	Layers:
	-	`sha256:f3c8070e3ea4dc2690e2a9ad4940a336619f474592bc1756300573cbeb2b6696`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 3.0 MB (2975717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0835bf1ccf082656725cc3b46f0862cafa8ad7b2ffd9c7a99909a45ff1545f18`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8fa791142b00baf6a407867bbdf421dac68a325e0bdf940e7afb354ecf3f57dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176112497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcbd23ff0620928ca8a3e741f384f555140823d2d52298d6b1ea29741b048cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 10:14:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21614e13cfa16a0c8beb97eff5b2aacab79a6d5a099fe0b60b1cc98e6edf207`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 47.4 MB (47422402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e36d0fdb69bab06aa41c6e23ecccd2c1b2b8e8e1f1adf1217f1695fcf7bc63`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2754491b24dad80f358c1e3c4eb8c73db0cbc99adb83cb9bde28f0528e18e11e`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 73.9 MB (73947307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58d7f40df6bbf09a467ba0d61ffddcb9a9bb696cccf58136369f798448c8845`  
		Last Modified: Wed, 16 Sep 2026 10:14:31 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:4d3b9c9631e76697c9da5cea669a6149db92eb634db9f5c72ee869995519f714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3010782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d497d5c343e4bc7f8c2d938d21f31978cefd02f9030a7597d0e43ca5621609df`

```dockerfile
```

-	Layers:
	-	`sha256:8346e4999811a8ef86ae6af447af807774a8211d59acd88f3a9d32d3f564996a`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 3.0 MB (2973632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e28fb6e0b48ad4d816dce21004c2dea895e95689b3d0778c93d767723982db8`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:8a7861a2db03503136fabdf0a79216ea34c610428b53f1470147e3ef4574f6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165259607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9a31093f9280eb206c13a59342cd084aebaca5757e074f3d834d44962ace0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:31:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:31:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:31:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:31:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:31:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de19cf994b8efbb04f2eaee97d62191c91deb0183a3846e65f0b9fbb168abd39`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 44.5 MB (44502493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f288f4b71d3bdc821dace9244460cfe40b480989d321e35dce9a247496034b`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dbe66d7fcde27743808dcadd20628263c0f118639673ea1153d6266feecb67`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 73.9 MB (73946990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae89bf589e0887a15360e51c3082eafe829c43a00ffed08553a1170523c91080`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:a69d9f2ac5235dadf533103d71bec5185a8d578019b6977f6f8af921f59e474c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0414992c7b7095ab3667f8783d502dc2b1c0da8e263243cff5bbfed58597f6`

```dockerfile
```

-	Layers:
	-	`sha256:421c606e88dc18bb64ea1e6d570f79a976748096bca6ac48d91570ac3fc0df86`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 3.0 MB (2976714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb49fb8e08c0fff5c0d0771edf8f35a1c1b27b918b9e0a0c9e8ffd466713675f`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.9`

```console
$ docker pull cassandra@sha256:97cc0f3999ebd9a9fa86413a4822d4b71255ecdcd4900c43a1b0ba486b7e01a9
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
$ docker pull cassandra@sha256:e883069cafb97a5ea982b4ea938ce9871ad2ec000a31697b142a3f029c74c979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168250714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0798b7251b756834595d5b70ea94c8e48f53024f4f12b3ffcf4dc33f470be7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499fa5da95bfe22fe2d0c798a7d071000385e81369414db40b80118bb65122c0`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282a43a7fdc51463a47d3aafcb6b527685d600fcd60a47206360d35b8d88a46c`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 15.7 MB (15650895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07a9a538091d515b8fe36a437e53726d4f043c41fcad0689ee156a8ebef371`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.3 MB (1310329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8932be80612342b423825e1001bb06e24a287fa66ef5d2c25bf065b2cf6199`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 47.5 MB (47509942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa6579adcba2b9cf09c52d1e6a2b74379dc35a7f4d20c2fe8c2f8afff3b840b`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a38148d69bb7f8e7fa3a388f428d106f3a845a0e75b18528ec4ddd9487a19c`  
		Last Modified: Sat, 19 Sep 2026 01:12:08 GMT  
		Size: 73.9 MB (73946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23b91f8712f513ef8cf1a71afe7b1a53d962ad5f53c54cfc043fa53c739f120`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:8aa1cedfe4240bf5ec4ce9781b90e22d7f3e0a6c29f662ce19c7eebb49e8f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4498dc48a9e07972e6280490cb2e9eebfdae21d2e0310b9408ac73eae01768e6`

```dockerfile
```

-	Layers:
	-	`sha256:82f29a7c0658834175a7f561377f1af69f0a21e19957d6d1042e0e4a3babfeaf`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 3.0 MB (2975961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf31ed1c81921d2c22023272745981f4d88c80f5b2a36405115774474640d303`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:2a2fb6c41ae8a372cd0f36495051f4ca23a5d11fdd4974d41d9ed5208e546ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160968598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4a9ca89a3488dac4b4bdecb551b10c7f52a290ae6b534d20d084791e212498`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 02:02:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:27 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 02:02:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:51 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:51 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d046f713f459c754dd66b53baa2b237e03b8c315c477d73af6ee6dabddc96fab`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34e8181190fdc079b7db497b16baf8c861b9e6cc60dc2cea0d9c53e3007977e`  
		Last Modified: Sat, 19 Sep 2026 02:03:04 GMT  
		Size: 14.4 MB (14402442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfae227660bcbca3f27768c27d7fb1d3a25d1fe08076f0f57a2157bd954bf158`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.3 MB (1275104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f37e7f79cd6fc16ca725cd0ee5a85ac72094671a6550b22f814a6dd460eaab`  
		Last Modified: Sat, 19 Sep 2026 02:03:05 GMT  
		Size: 45.1 MB (45092776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84815a803082551955a575d2e937afdfe7ae131f111eca888726ced6b18f69fc`  
		Last Modified: Sat, 19 Sep 2026 02:03:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b739e7507a2173863961c106a59b457e3a045fd55fdcdb2aa18402d752811b29`  
		Last Modified: Sat, 19 Sep 2026 02:03:06 GMT  
		Size: 73.9 MB (73946887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d888b652a333151fe24ac4888439dbb791f4720fde8b834a250f0bb4183859`  
		Last Modified: Sat, 19 Sep 2026 02:03:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:6578e792a1a5bbc84a459066bfddc8645040a2236f2051bbae1f0e63cd898a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0472837e7f3abfaa92619dbac8c4a04c6953c99e3e43f6aef64b15462293fd1e`

```dockerfile
```

-	Layers:
	-	`sha256:8b71107d5e4ae357dceeb42edc892b7a2cadbe1befd66372a5119c8152fd5b69`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 3.0 MB (2977615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f4b4e7fcbc37aef6aa0ba223c14f27d57881283665931fdd0dc8890c81faab`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 37.2 KB (37249 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:bf833ba579fcab44a6b517c19d58c361fc5f4d5dea6da9c0faf2d09393e81447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae96cfb04519f857f25b57f687d4a9def2fd98765c6a99bafad9395feb76dad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:31 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:19:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:10 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5d5ff7a0eb5ca9d5dbee21202664dc107d947366da28b935d16f4b6434c2c3`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a4014784af22de94bfc72a066e63080c1052d95ddbe9f0ede2134ea886e2fb`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 15.5 MB (15535074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7697cfbb13016d4a67cb93a09e766fd7009570f5732ef1e32c787253348acdb1`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 1.3 MB (1262315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24821ae7106f6986bc056dabb4bf795753e9d3dd3eff04ba01502d7d1e27e87`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 47.0 MB (46996468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90497411df0523a94201dc024ae1b482ae05b6256841265c48499866888ad402`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262e2e7284109d1fcf05eac2394a025e527ad3309b412578d483860e8fc634a5`  
		Last Modified: Sat, 19 Sep 2026 01:19:26 GMT  
		Size: 73.9 MB (73946695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea2987101a4c2e4bfdc1543724d90b60cdd3b0a15ad2d18ed2c1ea6fe7e128b`  
		Last Modified: Sat, 19 Sep 2026 01:19:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:c060729b87f306678a6f28eef501624ad9c2efdca3281d8f2a4586501b4702fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b022d235b9b32d4558c3ed44fd82a617b167bda28085a743fdf6838704994991`

```dockerfile
```

-	Layers:
	-	`sha256:f3c8070e3ea4dc2690e2a9ad4940a336619f474592bc1756300573cbeb2b6696`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 3.0 MB (2975717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0835bf1ccf082656725cc3b46f0862cafa8ad7b2ffd9c7a99909a45ff1545f18`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8fa791142b00baf6a407867bbdf421dac68a325e0bdf940e7afb354ecf3f57dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176112497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcbd23ff0620928ca8a3e741f384f555140823d2d52298d6b1ea29741b048cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 10:14:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21614e13cfa16a0c8beb97eff5b2aacab79a6d5a099fe0b60b1cc98e6edf207`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 47.4 MB (47422402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e36d0fdb69bab06aa41c6e23ecccd2c1b2b8e8e1f1adf1217f1695fcf7bc63`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2754491b24dad80f358c1e3c4eb8c73db0cbc99adb83cb9bde28f0528e18e11e`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 73.9 MB (73947307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58d7f40df6bbf09a467ba0d61ffddcb9a9bb696cccf58136369f798448c8845`  
		Last Modified: Wed, 16 Sep 2026 10:14:31 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:4d3b9c9631e76697c9da5cea669a6149db92eb634db9f5c72ee869995519f714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3010782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d497d5c343e4bc7f8c2d938d21f31978cefd02f9030a7597d0e43ca5621609df`

```dockerfile
```

-	Layers:
	-	`sha256:8346e4999811a8ef86ae6af447af807774a8211d59acd88f3a9d32d3f564996a`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 3.0 MB (2973632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e28fb6e0b48ad4d816dce21004c2dea895e95689b3d0778c93d767723982db8`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; s390x

```console
$ docker pull cassandra@sha256:8a7861a2db03503136fabdf0a79216ea34c610428b53f1470147e3ef4574f6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165259607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9a31093f9280eb206c13a59342cd084aebaca5757e074f3d834d44962ace0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:31:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:31:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:31:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:31:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:31:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de19cf994b8efbb04f2eaee97d62191c91deb0183a3846e65f0b9fbb168abd39`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 44.5 MB (44502493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f288f4b71d3bdc821dace9244460cfe40b480989d321e35dce9a247496034b`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dbe66d7fcde27743808dcadd20628263c0f118639673ea1153d6266feecb67`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 73.9 MB (73946990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae89bf589e0887a15360e51c3082eafe829c43a00ffed08553a1170523c91080`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:a69d9f2ac5235dadf533103d71bec5185a8d578019b6977f6f8af921f59e474c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0414992c7b7095ab3667f8783d502dc2b1c0da8e263243cff5bbfed58597f6`

```dockerfile
```

-	Layers:
	-	`sha256:421c606e88dc18bb64ea1e6d570f79a976748096bca6ac48d91570ac3fc0df86`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 3.0 MB (2976714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb49fb8e08c0fff5c0d0771edf8f35a1c1b27b918b9e0a0c9e8ffd466713675f`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.9-trixie`

```console
$ docker pull cassandra@sha256:97cc0f3999ebd9a9fa86413a4822d4b71255ecdcd4900c43a1b0ba486b7e01a9
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
$ docker pull cassandra@sha256:e883069cafb97a5ea982b4ea938ce9871ad2ec000a31697b142a3f029c74c979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168250714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0798b7251b756834595d5b70ea94c8e48f53024f4f12b3ffcf4dc33f470be7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499fa5da95bfe22fe2d0c798a7d071000385e81369414db40b80118bb65122c0`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282a43a7fdc51463a47d3aafcb6b527685d600fcd60a47206360d35b8d88a46c`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 15.7 MB (15650895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07a9a538091d515b8fe36a437e53726d4f043c41fcad0689ee156a8ebef371`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.3 MB (1310329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8932be80612342b423825e1001bb06e24a287fa66ef5d2c25bf065b2cf6199`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 47.5 MB (47509942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa6579adcba2b9cf09c52d1e6a2b74379dc35a7f4d20c2fe8c2f8afff3b840b`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a38148d69bb7f8e7fa3a388f428d106f3a845a0e75b18528ec4ddd9487a19c`  
		Last Modified: Sat, 19 Sep 2026 01:12:08 GMT  
		Size: 73.9 MB (73946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23b91f8712f513ef8cf1a71afe7b1a53d962ad5f53c54cfc043fa53c739f120`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:8aa1cedfe4240bf5ec4ce9781b90e22d7f3e0a6c29f662ce19c7eebb49e8f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4498dc48a9e07972e6280490cb2e9eebfdae21d2e0310b9408ac73eae01768e6`

```dockerfile
```

-	Layers:
	-	`sha256:82f29a7c0658834175a7f561377f1af69f0a21e19957d6d1042e0e4a3babfeaf`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 3.0 MB (2975961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf31ed1c81921d2c22023272745981f4d88c80f5b2a36405115774474640d303`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:2a2fb6c41ae8a372cd0f36495051f4ca23a5d11fdd4974d41d9ed5208e546ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160968598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4a9ca89a3488dac4b4bdecb551b10c7f52a290ae6b534d20d084791e212498`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 02:02:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:27 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 02:02:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:51 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:51 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d046f713f459c754dd66b53baa2b237e03b8c315c477d73af6ee6dabddc96fab`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34e8181190fdc079b7db497b16baf8c861b9e6cc60dc2cea0d9c53e3007977e`  
		Last Modified: Sat, 19 Sep 2026 02:03:04 GMT  
		Size: 14.4 MB (14402442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfae227660bcbca3f27768c27d7fb1d3a25d1fe08076f0f57a2157bd954bf158`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.3 MB (1275104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f37e7f79cd6fc16ca725cd0ee5a85ac72094671a6550b22f814a6dd460eaab`  
		Last Modified: Sat, 19 Sep 2026 02:03:05 GMT  
		Size: 45.1 MB (45092776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84815a803082551955a575d2e937afdfe7ae131f111eca888726ced6b18f69fc`  
		Last Modified: Sat, 19 Sep 2026 02:03:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b739e7507a2173863961c106a59b457e3a045fd55fdcdb2aa18402d752811b29`  
		Last Modified: Sat, 19 Sep 2026 02:03:06 GMT  
		Size: 73.9 MB (73946887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d888b652a333151fe24ac4888439dbb791f4720fde8b834a250f0bb4183859`  
		Last Modified: Sat, 19 Sep 2026 02:03:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:6578e792a1a5bbc84a459066bfddc8645040a2236f2051bbae1f0e63cd898a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0472837e7f3abfaa92619dbac8c4a04c6953c99e3e43f6aef64b15462293fd1e`

```dockerfile
```

-	Layers:
	-	`sha256:8b71107d5e4ae357dceeb42edc892b7a2cadbe1befd66372a5119c8152fd5b69`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 3.0 MB (2977615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f4b4e7fcbc37aef6aa0ba223c14f27d57881283665931fdd0dc8890c81faab`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 37.2 KB (37249 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:bf833ba579fcab44a6b517c19d58c361fc5f4d5dea6da9c0faf2d09393e81447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae96cfb04519f857f25b57f687d4a9def2fd98765c6a99bafad9395feb76dad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:31 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:19:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:10 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5d5ff7a0eb5ca9d5dbee21202664dc107d947366da28b935d16f4b6434c2c3`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a4014784af22de94bfc72a066e63080c1052d95ddbe9f0ede2134ea886e2fb`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 15.5 MB (15535074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7697cfbb13016d4a67cb93a09e766fd7009570f5732ef1e32c787253348acdb1`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 1.3 MB (1262315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24821ae7106f6986bc056dabb4bf795753e9d3dd3eff04ba01502d7d1e27e87`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 47.0 MB (46996468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90497411df0523a94201dc024ae1b482ae05b6256841265c48499866888ad402`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262e2e7284109d1fcf05eac2394a025e527ad3309b412578d483860e8fc634a5`  
		Last Modified: Sat, 19 Sep 2026 01:19:26 GMT  
		Size: 73.9 MB (73946695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea2987101a4c2e4bfdc1543724d90b60cdd3b0a15ad2d18ed2c1ea6fe7e128b`  
		Last Modified: Sat, 19 Sep 2026 01:19:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:c060729b87f306678a6f28eef501624ad9c2efdca3281d8f2a4586501b4702fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b022d235b9b32d4558c3ed44fd82a617b167bda28085a743fdf6838704994991`

```dockerfile
```

-	Layers:
	-	`sha256:f3c8070e3ea4dc2690e2a9ad4940a336619f474592bc1756300573cbeb2b6696`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 3.0 MB (2975717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0835bf1ccf082656725cc3b46f0862cafa8ad7b2ffd9c7a99909a45ff1545f18`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8fa791142b00baf6a407867bbdf421dac68a325e0bdf940e7afb354ecf3f57dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176112497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcbd23ff0620928ca8a3e741f384f555140823d2d52298d6b1ea29741b048cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 10:14:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21614e13cfa16a0c8beb97eff5b2aacab79a6d5a099fe0b60b1cc98e6edf207`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 47.4 MB (47422402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e36d0fdb69bab06aa41c6e23ecccd2c1b2b8e8e1f1adf1217f1695fcf7bc63`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2754491b24dad80f358c1e3c4eb8c73db0cbc99adb83cb9bde28f0528e18e11e`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 73.9 MB (73947307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58d7f40df6bbf09a467ba0d61ffddcb9a9bb696cccf58136369f798448c8845`  
		Last Modified: Wed, 16 Sep 2026 10:14:31 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:4d3b9c9631e76697c9da5cea669a6149db92eb634db9f5c72ee869995519f714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3010782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d497d5c343e4bc7f8c2d938d21f31978cefd02f9030a7597d0e43ca5621609df`

```dockerfile
```

-	Layers:
	-	`sha256:8346e4999811a8ef86ae6af447af807774a8211d59acd88f3a9d32d3f564996a`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 3.0 MB (2973632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e28fb6e0b48ad4d816dce21004c2dea895e95689b3d0778c93d767723982db8`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:8a7861a2db03503136fabdf0a79216ea34c610428b53f1470147e3ef4574f6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165259607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9a31093f9280eb206c13a59342cd084aebaca5757e074f3d834d44962ace0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:31:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:31:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:31:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:31:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:31:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de19cf994b8efbb04f2eaee97d62191c91deb0183a3846e65f0b9fbb168abd39`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 44.5 MB (44502493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f288f4b71d3bdc821dace9244460cfe40b480989d321e35dce9a247496034b`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dbe66d7fcde27743808dcadd20628263c0f118639673ea1153d6266feecb67`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 73.9 MB (73946990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae89bf589e0887a15360e51c3082eafe829c43a00ffed08553a1170523c91080`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:a69d9f2ac5235dadf533103d71bec5185a8d578019b6977f6f8af921f59e474c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0414992c7b7095ab3667f8783d502dc2b1c0da8e263243cff5bbfed58597f6`

```dockerfile
```

-	Layers:
	-	`sha256:421c606e88dc18bb64ea1e6d570f79a976748096bca6ac48d91570ac3fc0df86`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 3.0 MB (2976714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb49fb8e08c0fff5c0d0771edf8f35a1c1b27b918b9e0a0c9e8ffd466713675f`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0`

```console
$ docker pull cassandra@sha256:d0d825a5d4670850a26367e0de4bb9050e4d11a8aeaba97924c21bde6b181a21
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
$ docker pull cassandra@sha256:bbca585c496f49d226a774e50c06f4fc82407a005ad6e20658e9521146b013a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174225393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dced876ea2a22e204d2c24ea8428c36219caef423646a1eefb5e86e99d3fcec1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:23 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:11:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:43 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee2f7841cd8ef08b836d03f11ea2cd8f9d5c0710452ebdca0c858b3a8683b62`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641d52d9415e73ae90788ed3262efa1041396b306a88d9dafe6eda774b731421`  
		Last Modified: Sat, 19 Sep 2026 01:11:57 GMT  
		Size: 15.7 MB (15650861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09508ad50befc7ab64daa6700a2020e0934ea0ffca52b5527d64e7e183f99ac3`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 1.3 MB (1310302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb0fb2d20d742e06928c8b79661b5278408ae1afe354b9130db14b956c8bd19`  
		Last Modified: Sat, 19 Sep 2026 01:11:58 GMT  
		Size: 53.1 MB (53091038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a35df7661d5f4155d508d958596728087c1f967da6a1039ee10bdf89da4f3f`  
		Last Modified: Sat, 19 Sep 2026 01:11:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52d85cab707fd74bf1921e9da930234a07caccacfedbf7c16b399e066c0a9fc`  
		Last Modified: Sat, 19 Sep 2026 01:12:00 GMT  
		Size: 74.3 MB (74340316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a706604a6bbae1655a045e7399d76b979ff0e9408a1e8b820b2660dabd046f`  
		Last Modified: Sat, 19 Sep 2026 01:11:58 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:8feb5ee8f8a7a3c96a78f5c4bc37149d4f8ce19cce1c0dd20a5f851df355c512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394204322d58e52ca2b86ac77554a2c7ace07e7a112104ae9986585da6e5ac8a`

```dockerfile
```

-	Layers:
	-	`sha256:73e9c348c23d3634818235ee14658a776bc8f3a3e67ed34b8cab41dd3e5a1fc3`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 3.0 MB (2985061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83610e425002fb0909df4cb3663cc13dd60254d9e43bf9199ca2ae8f238f0c08`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:97463d38b9a462877f4fa984efad5529f356eea825efe0d8fd80bfdb5b0f9f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173596692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b40f5733022934beb5b37fa4af4283b0964ad92f14fe902a01d2ef0e042592e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:17:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:18 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:19 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:19 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:19 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:18:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:18:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:18:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:18:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:18:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:18:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283e431aaa9d33f8aec8d055d2093ba46da4abbd67baa3c7b8a0e5e5491c08f0`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735c112c41bcf50f2448e7a30dc68934b974d461849b2b2a813b16cbf815a3d0`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 15.5 MB (15534990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb9aff2e83681c889d5f5db086c0f0240da20b93a0d3e0ce46eb1738eb39dba`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 1.3 MB (1262340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bed53635be94d782ffb7ada7895fefa95f1d95fc0dfcd1b3aa5c0e88546386`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 52.3 MB (52266757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80a586aed32cb70a2ce260adb181cb0d494db85bd85d9769732ad25b84880d7`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b3c16d786b66ee628b2c5b93a692b919f9923130c60801c0d0cfe24ffdbabc`  
		Last Modified: Sat, 19 Sep 2026 01:18:53 GMT  
		Size: 74.3 MB (74340455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00b9a926736b2a3c3cdcf5dcb80405dfe7e9e75169019ff49d79fa98c5032e9`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:d08f609829deaf4c14435f188998df3dce17e3970adb9196a5ae2c58bcf816c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c34c1e19750a6bec41b6591a92c940ac1e9acfe3e065b79ce6a88f0a209258`

```dockerfile
```

-	Layers:
	-	`sha256:3098ecfa0800fa76f0c8afc69cecd63ffd7951f8b0849c6eb0240eb8d2231e05`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 3.0 MB (2984769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff7e905b6dddcfdcca3b3d122e4747b4f5a3ea329d34c3c16fb36e9b3ae17788`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:0c561fb0e98d6cc8632bbf688c20201dabffe22891bf0541831d38e38f05a7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182193111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08278db1f0303494da047c031fdbad90c4a67163162b9557ce6e3a13ff3c805e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:21:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:21:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:21:27 GMT
RUN java --version # buildkit
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 09 Sep 2026 10:21:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:21:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Wed, 09 Sep 2026 10:22:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 09 Sep 2026 10:22:09 GMT
VOLUME [/var/lib/cassandra]
# Wed, 09 Sep 2026 10:22:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 10:22:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 10:22:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 09 Sep 2026 10:22:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72f1018e3b6ecf1aa4345170df6f017a4e96cecbcc87c3e50347b9ed889dedb`  
		Last Modified: Wed, 09 Sep 2026 10:22:41 GMT  
		Size: 53.1 MB (53109503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f65268adec163ef2e51b25904c6b4faef49acfd2096631e121107ef522b183`  
		Last Modified: Wed, 09 Sep 2026 10:22:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a95aeb201060d0615d3223556bd748a43825828b0cad9403159ca6ae2b6bb2`  
		Last Modified: Wed, 09 Sep 2026 10:22:42 GMT  
		Size: 74.3 MB (74340820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f8acd6a6b81d6e3fa23564aaf9920e9856abe143a2d5373dd7c81252d2ef71`  
		Last Modified: Wed, 09 Sep 2026 10:22:41 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:9f243ff8fd0a8e6dfde234a2cbef3c96d992465d03257985cef18691effcc2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3018653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb66ca22bd7ee027390322988298e199e11876f1e9d568316242a3db1df07d30`

```dockerfile
```

-	Layers:
	-	`sha256:190041d0fdc64bc7ddc26b983215a97cf323455a0a5ea303103df0582009c688`  
		Last Modified: Wed, 16 Sep 2026 10:13:06 GMT  
		Size: 3.0 MB (2982708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1175a5083864d12716c590abe6ba594b39cfcc219d4b798dad0f355b1bde5e`  
		Last Modified: Wed, 16 Sep 2026 10:13:05 GMT  
		Size: 35.9 KB (35945 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0` - linux; s390x

```console
$ docker pull cassandra@sha256:5239e4ab950fa4e04dc621f0f25279fee7e82de78c30aa5dbbe69a9f2407fab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170781915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3478bcaab7e5bbe26ac279ff94602bcd38c94b63183a6de3598c13f3c3254c2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:30:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:30:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:30:25 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:30:25 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:30:25 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:30:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:30:40 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:30:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:30:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:30:40 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:30:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767491fe0909931ab878be2c2ca2794567acc4a8daea4b7ca74d8748608a0467`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 49.6 MB (49631149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71ec9ac5441554a78e8bb576d0d81547ba7f8307b6a72999cad17917967ea5`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f06ba0502e16d0b79015fae5d58602aca7eabd4fd3ad25e830798b0a38b64d`  
		Last Modified: Sat, 19 Sep 2026 01:31:01 GMT  
		Size: 74.3 MB (74340644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a71eb35fc919fba5045e5ca85f15cc35a0d576e3f6aea76b5ac50c1896b6c65`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:f1ea6d3436459e471aa2d7d6e86818ea27b8edb007af1d439cc272d5505baf98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3021697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c6ba24877a5299cbd2938932eaeb38282257c88c5bd28784d7d64d2e30e76e`

```dockerfile
```

-	Layers:
	-	`sha256:9eddb24606342d24411e1c296dc0f58170911b27e81907b7d84e848807e8d770`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 3.0 MB (2985814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eabab0b4b6f96eafbb0ce94f9b331949673534fa6f3a5a111655db1da348905d`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0-alpha2`

```console
$ docker pull cassandra@sha256:d0d825a5d4670850a26367e0de4bb9050e4d11a8aeaba97924c21bde6b181a21
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
$ docker pull cassandra@sha256:bbca585c496f49d226a774e50c06f4fc82407a005ad6e20658e9521146b013a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174225393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dced876ea2a22e204d2c24ea8428c36219caef423646a1eefb5e86e99d3fcec1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:23 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:11:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:43 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee2f7841cd8ef08b836d03f11ea2cd8f9d5c0710452ebdca0c858b3a8683b62`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641d52d9415e73ae90788ed3262efa1041396b306a88d9dafe6eda774b731421`  
		Last Modified: Sat, 19 Sep 2026 01:11:57 GMT  
		Size: 15.7 MB (15650861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09508ad50befc7ab64daa6700a2020e0934ea0ffca52b5527d64e7e183f99ac3`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 1.3 MB (1310302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb0fb2d20d742e06928c8b79661b5278408ae1afe354b9130db14b956c8bd19`  
		Last Modified: Sat, 19 Sep 2026 01:11:58 GMT  
		Size: 53.1 MB (53091038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a35df7661d5f4155d508d958596728087c1f967da6a1039ee10bdf89da4f3f`  
		Last Modified: Sat, 19 Sep 2026 01:11:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52d85cab707fd74bf1921e9da930234a07caccacfedbf7c16b399e066c0a9fc`  
		Last Modified: Sat, 19 Sep 2026 01:12:00 GMT  
		Size: 74.3 MB (74340316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a706604a6bbae1655a045e7399d76b979ff0e9408a1e8b820b2660dabd046f`  
		Last Modified: Sat, 19 Sep 2026 01:11:58 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:8feb5ee8f8a7a3c96a78f5c4bc37149d4f8ce19cce1c0dd20a5f851df355c512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394204322d58e52ca2b86ac77554a2c7ace07e7a112104ae9986585da6e5ac8a`

```dockerfile
```

-	Layers:
	-	`sha256:73e9c348c23d3634818235ee14658a776bc8f3a3e67ed34b8cab41dd3e5a1fc3`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 3.0 MB (2985061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83610e425002fb0909df4cb3663cc13dd60254d9e43bf9199ca2ae8f238f0c08`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:97463d38b9a462877f4fa984efad5529f356eea825efe0d8fd80bfdb5b0f9f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173596692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b40f5733022934beb5b37fa4af4283b0964ad92f14fe902a01d2ef0e042592e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:17:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:18 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:19 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:19 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:19 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:18:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:18:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:18:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:18:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:18:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:18:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283e431aaa9d33f8aec8d055d2093ba46da4abbd67baa3c7b8a0e5e5491c08f0`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735c112c41bcf50f2448e7a30dc68934b974d461849b2b2a813b16cbf815a3d0`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 15.5 MB (15534990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb9aff2e83681c889d5f5db086c0f0240da20b93a0d3e0ce46eb1738eb39dba`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 1.3 MB (1262340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bed53635be94d782ffb7ada7895fefa95f1d95fc0dfcd1b3aa5c0e88546386`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 52.3 MB (52266757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80a586aed32cb70a2ce260adb181cb0d494db85bd85d9769732ad25b84880d7`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b3c16d786b66ee628b2c5b93a692b919f9923130c60801c0d0cfe24ffdbabc`  
		Last Modified: Sat, 19 Sep 2026 01:18:53 GMT  
		Size: 74.3 MB (74340455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00b9a926736b2a3c3cdcf5dcb80405dfe7e9e75169019ff49d79fa98c5032e9`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:d08f609829deaf4c14435f188998df3dce17e3970adb9196a5ae2c58bcf816c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c34c1e19750a6bec41b6591a92c940ac1e9acfe3e065b79ce6a88f0a209258`

```dockerfile
```

-	Layers:
	-	`sha256:3098ecfa0800fa76f0c8afc69cecd63ffd7951f8b0849c6eb0240eb8d2231e05`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 3.0 MB (2984769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff7e905b6dddcfdcca3b3d122e4747b4f5a3ea329d34c3c16fb36e9b3ae17788`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2` - linux; ppc64le

```console
$ docker pull cassandra@sha256:0c561fb0e98d6cc8632bbf688c20201dabffe22891bf0541831d38e38f05a7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182193111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08278db1f0303494da047c031fdbad90c4a67163162b9557ce6e3a13ff3c805e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:21:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:21:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:21:27 GMT
RUN java --version # buildkit
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 09 Sep 2026 10:21:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:21:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Wed, 09 Sep 2026 10:22:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 09 Sep 2026 10:22:09 GMT
VOLUME [/var/lib/cassandra]
# Wed, 09 Sep 2026 10:22:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 10:22:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 10:22:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 09 Sep 2026 10:22:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72f1018e3b6ecf1aa4345170df6f017a4e96cecbcc87c3e50347b9ed889dedb`  
		Last Modified: Wed, 09 Sep 2026 10:22:41 GMT  
		Size: 53.1 MB (53109503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f65268adec163ef2e51b25904c6b4faef49acfd2096631e121107ef522b183`  
		Last Modified: Wed, 09 Sep 2026 10:22:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a95aeb201060d0615d3223556bd748a43825828b0cad9403159ca6ae2b6bb2`  
		Last Modified: Wed, 09 Sep 2026 10:22:42 GMT  
		Size: 74.3 MB (74340820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f8acd6a6b81d6e3fa23564aaf9920e9856abe143a2d5373dd7c81252d2ef71`  
		Last Modified: Wed, 09 Sep 2026 10:22:41 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:9f243ff8fd0a8e6dfde234a2cbef3c96d992465d03257985cef18691effcc2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3018653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb66ca22bd7ee027390322988298e199e11876f1e9d568316242a3db1df07d30`

```dockerfile
```

-	Layers:
	-	`sha256:190041d0fdc64bc7ddc26b983215a97cf323455a0a5ea303103df0582009c688`  
		Last Modified: Wed, 16 Sep 2026 10:13:06 GMT  
		Size: 3.0 MB (2982708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1175a5083864d12716c590abe6ba594b39cfcc219d4b798dad0f355b1bde5e`  
		Last Modified: Wed, 16 Sep 2026 10:13:05 GMT  
		Size: 35.9 KB (35945 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2` - linux; s390x

```console
$ docker pull cassandra@sha256:5239e4ab950fa4e04dc621f0f25279fee7e82de78c30aa5dbbe69a9f2407fab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170781915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3478bcaab7e5bbe26ac279ff94602bcd38c94b63183a6de3598c13f3c3254c2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:30:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:30:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:30:25 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:30:25 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:30:25 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:30:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:30:40 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:30:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:30:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:30:40 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:30:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767491fe0909931ab878be2c2ca2794567acc4a8daea4b7ca74d8748608a0467`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 49.6 MB (49631149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71ec9ac5441554a78e8bb576d0d81547ba7f8307b6a72999cad17917967ea5`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f06ba0502e16d0b79015fae5d58602aca7eabd4fd3ad25e830798b0a38b64d`  
		Last Modified: Sat, 19 Sep 2026 01:31:01 GMT  
		Size: 74.3 MB (74340644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a71eb35fc919fba5045e5ca85f15cc35a0d576e3f6aea76b5ac50c1896b6c65`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:f1ea6d3436459e471aa2d7d6e86818ea27b8edb007af1d439cc272d5505baf98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3021697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c6ba24877a5299cbd2938932eaeb38282257c88c5bd28784d7d64d2e30e76e`

```dockerfile
```

-	Layers:
	-	`sha256:9eddb24606342d24411e1c296dc0f58170911b27e81907b7d84e848807e8d770`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 3.0 MB (2985814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eabab0b4b6f96eafbb0ce94f9b331949673534fa6f3a5a111655db1da348905d`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0-alpha2-trixie`

```console
$ docker pull cassandra@sha256:d0d825a5d4670850a26367e0de4bb9050e4d11a8aeaba97924c21bde6b181a21
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
$ docker pull cassandra@sha256:bbca585c496f49d226a774e50c06f4fc82407a005ad6e20658e9521146b013a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174225393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dced876ea2a22e204d2c24ea8428c36219caef423646a1eefb5e86e99d3fcec1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:23 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:11:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:43 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee2f7841cd8ef08b836d03f11ea2cd8f9d5c0710452ebdca0c858b3a8683b62`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641d52d9415e73ae90788ed3262efa1041396b306a88d9dafe6eda774b731421`  
		Last Modified: Sat, 19 Sep 2026 01:11:57 GMT  
		Size: 15.7 MB (15650861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09508ad50befc7ab64daa6700a2020e0934ea0ffca52b5527d64e7e183f99ac3`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 1.3 MB (1310302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb0fb2d20d742e06928c8b79661b5278408ae1afe354b9130db14b956c8bd19`  
		Last Modified: Sat, 19 Sep 2026 01:11:58 GMT  
		Size: 53.1 MB (53091038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a35df7661d5f4155d508d958596728087c1f967da6a1039ee10bdf89da4f3f`  
		Last Modified: Sat, 19 Sep 2026 01:11:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52d85cab707fd74bf1921e9da930234a07caccacfedbf7c16b399e066c0a9fc`  
		Last Modified: Sat, 19 Sep 2026 01:12:00 GMT  
		Size: 74.3 MB (74340316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a706604a6bbae1655a045e7399d76b979ff0e9408a1e8b820b2660dabd046f`  
		Last Modified: Sat, 19 Sep 2026 01:11:58 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:8feb5ee8f8a7a3c96a78f5c4bc37149d4f8ce19cce1c0dd20a5f851df355c512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394204322d58e52ca2b86ac77554a2c7ace07e7a112104ae9986585da6e5ac8a`

```dockerfile
```

-	Layers:
	-	`sha256:73e9c348c23d3634818235ee14658a776bc8f3a3e67ed34b8cab41dd3e5a1fc3`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 3.0 MB (2985061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83610e425002fb0909df4cb3663cc13dd60254d9e43bf9199ca2ae8f238f0c08`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:97463d38b9a462877f4fa984efad5529f356eea825efe0d8fd80bfdb5b0f9f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173596692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b40f5733022934beb5b37fa4af4283b0964ad92f14fe902a01d2ef0e042592e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:17:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:18 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:19 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:19 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:19 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:18:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:18:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:18:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:18:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:18:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:18:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283e431aaa9d33f8aec8d055d2093ba46da4abbd67baa3c7b8a0e5e5491c08f0`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735c112c41bcf50f2448e7a30dc68934b974d461849b2b2a813b16cbf815a3d0`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 15.5 MB (15534990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb9aff2e83681c889d5f5db086c0f0240da20b93a0d3e0ce46eb1738eb39dba`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 1.3 MB (1262340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bed53635be94d782ffb7ada7895fefa95f1d95fc0dfcd1b3aa5c0e88546386`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 52.3 MB (52266757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80a586aed32cb70a2ce260adb181cb0d494db85bd85d9769732ad25b84880d7`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b3c16d786b66ee628b2c5b93a692b919f9923130c60801c0d0cfe24ffdbabc`  
		Last Modified: Sat, 19 Sep 2026 01:18:53 GMT  
		Size: 74.3 MB (74340455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00b9a926736b2a3c3cdcf5dcb80405dfe7e9e75169019ff49d79fa98c5032e9`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:d08f609829deaf4c14435f188998df3dce17e3970adb9196a5ae2c58bcf816c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c34c1e19750a6bec41b6591a92c940ac1e9acfe3e065b79ce6a88f0a209258`

```dockerfile
```

-	Layers:
	-	`sha256:3098ecfa0800fa76f0c8afc69cecd63ffd7951f8b0849c6eb0240eb8d2231e05`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 3.0 MB (2984769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff7e905b6dddcfdcca3b3d122e4747b4f5a3ea329d34c3c16fb36e9b3ae17788`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:0c561fb0e98d6cc8632bbf688c20201dabffe22891bf0541831d38e38f05a7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182193111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08278db1f0303494da047c031fdbad90c4a67163162b9557ce6e3a13ff3c805e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:21:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:21:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:21:27 GMT
RUN java --version # buildkit
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 09 Sep 2026 10:21:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:21:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Wed, 09 Sep 2026 10:22:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 09 Sep 2026 10:22:09 GMT
VOLUME [/var/lib/cassandra]
# Wed, 09 Sep 2026 10:22:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 10:22:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 10:22:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 09 Sep 2026 10:22:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72f1018e3b6ecf1aa4345170df6f017a4e96cecbcc87c3e50347b9ed889dedb`  
		Last Modified: Wed, 09 Sep 2026 10:22:41 GMT  
		Size: 53.1 MB (53109503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f65268adec163ef2e51b25904c6b4faef49acfd2096631e121107ef522b183`  
		Last Modified: Wed, 09 Sep 2026 10:22:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a95aeb201060d0615d3223556bd748a43825828b0cad9403159ca6ae2b6bb2`  
		Last Modified: Wed, 09 Sep 2026 10:22:42 GMT  
		Size: 74.3 MB (74340820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f8acd6a6b81d6e3fa23564aaf9920e9856abe143a2d5373dd7c81252d2ef71`  
		Last Modified: Wed, 09 Sep 2026 10:22:41 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:9f243ff8fd0a8e6dfde234a2cbef3c96d992465d03257985cef18691effcc2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3018653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb66ca22bd7ee027390322988298e199e11876f1e9d568316242a3db1df07d30`

```dockerfile
```

-	Layers:
	-	`sha256:190041d0fdc64bc7ddc26b983215a97cf323455a0a5ea303103df0582009c688`  
		Last Modified: Wed, 16 Sep 2026 10:13:06 GMT  
		Size: 3.0 MB (2982708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1175a5083864d12716c590abe6ba594b39cfcc219d4b798dad0f355b1bde5e`  
		Last Modified: Wed, 16 Sep 2026 10:13:05 GMT  
		Size: 35.9 KB (35945 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:5239e4ab950fa4e04dc621f0f25279fee7e82de78c30aa5dbbe69a9f2407fab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170781915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3478bcaab7e5bbe26ac279ff94602bcd38c94b63183a6de3598c13f3c3254c2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:30:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:30:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:30:25 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:30:25 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:30:25 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:30:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:30:40 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:30:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:30:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:30:40 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:30:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767491fe0909931ab878be2c2ca2794567acc4a8daea4b7ca74d8748608a0467`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 49.6 MB (49631149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71ec9ac5441554a78e8bb576d0d81547ba7f8307b6a72999cad17917967ea5`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f06ba0502e16d0b79015fae5d58602aca7eabd4fd3ad25e830798b0a38b64d`  
		Last Modified: Sat, 19 Sep 2026 01:31:01 GMT  
		Size: 74.3 MB (74340644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a71eb35fc919fba5045e5ca85f15cc35a0d576e3f6aea76b5ac50c1896b6c65`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:f1ea6d3436459e471aa2d7d6e86818ea27b8edb007af1d439cc272d5505baf98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3021697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c6ba24877a5299cbd2938932eaeb38282257c88c5bd28784d7d64d2e30e76e`

```dockerfile
```

-	Layers:
	-	`sha256:9eddb24606342d24411e1c296dc0f58170911b27e81907b7d84e848807e8d770`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 3.0 MB (2985814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eabab0b4b6f96eafbb0ce94f9b331949673534fa6f3a5a111655db1da348905d`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0-trixie`

```console
$ docker pull cassandra@sha256:d0d825a5d4670850a26367e0de4bb9050e4d11a8aeaba97924c21bde6b181a21
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
$ docker pull cassandra@sha256:bbca585c496f49d226a774e50c06f4fc82407a005ad6e20658e9521146b013a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174225393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dced876ea2a22e204d2c24ea8428c36219caef423646a1eefb5e86e99d3fcec1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:23 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:23 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:23 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:11:23 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:11:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:43 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:43 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee2f7841cd8ef08b836d03f11ea2cd8f9d5c0710452ebdca0c858b3a8683b62`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641d52d9415e73ae90788ed3262efa1041396b306a88d9dafe6eda774b731421`  
		Last Modified: Sat, 19 Sep 2026 01:11:57 GMT  
		Size: 15.7 MB (15650861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09508ad50befc7ab64daa6700a2020e0934ea0ffca52b5527d64e7e183f99ac3`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 1.3 MB (1310302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb0fb2d20d742e06928c8b79661b5278408ae1afe354b9130db14b956c8bd19`  
		Last Modified: Sat, 19 Sep 2026 01:11:58 GMT  
		Size: 53.1 MB (53091038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a35df7661d5f4155d508d958596728087c1f967da6a1039ee10bdf89da4f3f`  
		Last Modified: Sat, 19 Sep 2026 01:11:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52d85cab707fd74bf1921e9da930234a07caccacfedbf7c16b399e066c0a9fc`  
		Last Modified: Sat, 19 Sep 2026 01:12:00 GMT  
		Size: 74.3 MB (74340316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a706604a6bbae1655a045e7399d76b979ff0e9408a1e8b820b2660dabd046f`  
		Last Modified: Sat, 19 Sep 2026 01:11:58 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:8feb5ee8f8a7a3c96a78f5c4bc37149d4f8ce19cce1c0dd20a5f851df355c512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394204322d58e52ca2b86ac77554a2c7ace07e7a112104ae9986585da6e5ac8a`

```dockerfile
```

-	Layers:
	-	`sha256:73e9c348c23d3634818235ee14658a776bc8f3a3e67ed34b8cab41dd3e5a1fc3`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 3.0 MB (2985061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83610e425002fb0909df4cb3663cc13dd60254d9e43bf9199ca2ae8f238f0c08`  
		Last Modified: Sat, 19 Sep 2026 01:11:56 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:97463d38b9a462877f4fa984efad5529f356eea825efe0d8fd80bfdb5b0f9f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173596692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b40f5733022934beb5b37fa4af4283b0964ad92f14fe902a01d2ef0e042592e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:17:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:18 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:19 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:19 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:19 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:18:19 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:18:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:18:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:18:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:18:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:18:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:18:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283e431aaa9d33f8aec8d055d2093ba46da4abbd67baa3c7b8a0e5e5491c08f0`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735c112c41bcf50f2448e7a30dc68934b974d461849b2b2a813b16cbf815a3d0`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 15.5 MB (15534990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb9aff2e83681c889d5f5db086c0f0240da20b93a0d3e0ce46eb1738eb39dba`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 1.3 MB (1262340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bed53635be94d782ffb7ada7895fefa95f1d95fc0dfcd1b3aa5c0e88546386`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 52.3 MB (52266757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80a586aed32cb70a2ce260adb181cb0d494db85bd85d9769732ad25b84880d7`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b3c16d786b66ee628b2c5b93a692b919f9923130c60801c0d0cfe24ffdbabc`  
		Last Modified: Sat, 19 Sep 2026 01:18:53 GMT  
		Size: 74.3 MB (74340455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00b9a926736b2a3c3cdcf5dcb80405dfe7e9e75169019ff49d79fa98c5032e9`  
		Last Modified: Sat, 19 Sep 2026 01:18:51 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:d08f609829deaf4c14435f188998df3dce17e3970adb9196a5ae2c58bcf816c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c34c1e19750a6bec41b6591a92c940ac1e9acfe3e065b79ce6a88f0a209258`

```dockerfile
```

-	Layers:
	-	`sha256:3098ecfa0800fa76f0c8afc69cecd63ffd7951f8b0849c6eb0240eb8d2231e05`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 3.0 MB (2984769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff7e905b6dddcfdcca3b3d122e4747b4f5a3ea329d34c3c16fb36e9b3ae17788`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:0c561fb0e98d6cc8632bbf688c20201dabffe22891bf0541831d38e38f05a7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182193111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08278db1f0303494da047c031fdbad90c4a67163162b9557ce6e3a13ff3c805e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:21:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:21:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:21:27 GMT
RUN java --version # buildkit
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 09 Sep 2026 10:21:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:21:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Wed, 09 Sep 2026 10:21:27 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Wed, 09 Sep 2026 10:22:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 09 Sep 2026 10:22:09 GMT
VOLUME [/var/lib/cassandra]
# Wed, 09 Sep 2026 10:22:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 10:22:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 10:22:09 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 09 Sep 2026 10:22:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72f1018e3b6ecf1aa4345170df6f017a4e96cecbcc87c3e50347b9ed889dedb`  
		Last Modified: Wed, 09 Sep 2026 10:22:41 GMT  
		Size: 53.1 MB (53109503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f65268adec163ef2e51b25904c6b4faef49acfd2096631e121107ef522b183`  
		Last Modified: Wed, 09 Sep 2026 10:22:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a95aeb201060d0615d3223556bd748a43825828b0cad9403159ca6ae2b6bb2`  
		Last Modified: Wed, 09 Sep 2026 10:22:42 GMT  
		Size: 74.3 MB (74340820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f8acd6a6b81d6e3fa23564aaf9920e9856abe143a2d5373dd7c81252d2ef71`  
		Last Modified: Wed, 09 Sep 2026 10:22:41 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:9f243ff8fd0a8e6dfde234a2cbef3c96d992465d03257985cef18691effcc2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3018653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb66ca22bd7ee027390322988298e199e11876f1e9d568316242a3db1df07d30`

```dockerfile
```

-	Layers:
	-	`sha256:190041d0fdc64bc7ddc26b983215a97cf323455a0a5ea303103df0582009c688`  
		Last Modified: Wed, 16 Sep 2026 10:13:06 GMT  
		Size: 3.0 MB (2982708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1175a5083864d12716c590abe6ba594b39cfcc219d4b798dad0f355b1bde5e`  
		Last Modified: Wed, 16 Sep 2026 10:13:05 GMT  
		Size: 35.9 KB (35945 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:5239e4ab950fa4e04dc621f0f25279fee7e82de78c30aa5dbbe69a9f2407fab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170781915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3478bcaab7e5bbe26ac279ff94602bcd38c94b63183a6de3598c13f3c3254c2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:30:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:30:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:30:25 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:30:25 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:30:25 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Sat, 19 Sep 2026 01:30:25 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Sat, 19 Sep 2026 01:30:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:30:40 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:30:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:30:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:30:40 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:30:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767491fe0909931ab878be2c2ca2794567acc4a8daea4b7ca74d8748608a0467`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 49.6 MB (49631149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71ec9ac5441554a78e8bb576d0d81547ba7f8307b6a72999cad17917967ea5`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f06ba0502e16d0b79015fae5d58602aca7eabd4fd3ad25e830798b0a38b64d`  
		Last Modified: Sat, 19 Sep 2026 01:31:01 GMT  
		Size: 74.3 MB (74340644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a71eb35fc919fba5045e5ca85f15cc35a0d576e3f6aea76b5ac50c1896b6c65`  
		Last Modified: Sat, 19 Sep 2026 01:30:59 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:f1ea6d3436459e471aa2d7d6e86818ea27b8edb007af1d439cc272d5505baf98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3021697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c6ba24877a5299cbd2938932eaeb38282257c88c5bd28784d7d64d2e30e76e`

```dockerfile
```

-	Layers:
	-	`sha256:9eddb24606342d24411e1c296dc0f58170911b27e81907b7d84e848807e8d770`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 3.0 MB (2985814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eabab0b4b6f96eafbb0ce94f9b331949673534fa6f3a5a111655db1da348905d`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:23b89480406e25dade96b68a7ac3899cd7313d4320c76b8fab39bb18fd63910c
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
$ docker pull cassandra@sha256:e883069cafb97a5ea982b4ea938ce9871ad2ec000a31697b142a3f029c74c979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168250714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0798b7251b756834595d5b70ea94c8e48f53024f4f12b3ffcf4dc33f470be7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499fa5da95bfe22fe2d0c798a7d071000385e81369414db40b80118bb65122c0`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282a43a7fdc51463a47d3aafcb6b527685d600fcd60a47206360d35b8d88a46c`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 15.7 MB (15650895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07a9a538091d515b8fe36a437e53726d4f043c41fcad0689ee156a8ebef371`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.3 MB (1310329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8932be80612342b423825e1001bb06e24a287fa66ef5d2c25bf065b2cf6199`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 47.5 MB (47509942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa6579adcba2b9cf09c52d1e6a2b74379dc35a7f4d20c2fe8c2f8afff3b840b`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a38148d69bb7f8e7fa3a388f428d106f3a845a0e75b18528ec4ddd9487a19c`  
		Last Modified: Sat, 19 Sep 2026 01:12:08 GMT  
		Size: 73.9 MB (73946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23b91f8712f513ef8cf1a71afe7b1a53d962ad5f53c54cfc043fa53c739f120`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:8aa1cedfe4240bf5ec4ce9781b90e22d7f3e0a6c29f662ce19c7eebb49e8f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4498dc48a9e07972e6280490cb2e9eebfdae21d2e0310b9408ac73eae01768e6`

```dockerfile
```

-	Layers:
	-	`sha256:82f29a7c0658834175a7f561377f1af69f0a21e19957d6d1042e0e4a3babfeaf`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 3.0 MB (2975961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf31ed1c81921d2c22023272745981f4d88c80f5b2a36405115774474640d303`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:79334bec0fd5103a1e241cda6070e9b75f5cb9619d2789a3ee5b2c194d3314e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163170966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d78baf239665daaf74b0b4b179579bb2868f03bc9bfdbc6479caecfa0f69c42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:15:32 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 16 Sep 2026 04:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 16 Sep 2026 04:15:56 GMT
ENV GOSU_VERSION=1.19
# Wed, 16 Sep 2026 04:15:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 16 Sep 2026 04:15:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:15:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:15:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:57 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 04:15:57 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:15:57 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 04:15:57 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 04:16:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 04:16:21 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 04:16:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 04:16:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 04:16:21 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 04:16:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41f832f868328774c0865653d220a39c6a47b7bd552605a59971d9123125e4b`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e7a345dfb4a36003599f1c5f6538863bb57e2dbc8020a4fa6293ddc8942cf9`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 14.4 MB (14422632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cc9e7c7fcc277af2b624b628424cfc02fb0820fa5bb5c9678aa17f4212bc6d`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 3.5 MB (3486838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772084d24feb89fd07f3d92b4093d576b3c4153509b36f852db46e8ab09d2cfc`  
		Last Modified: Wed, 16 Sep 2026 04:16:34 GMT  
		Size: 45.1 MB (45092748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081552cb5c4088a99e4a9d9375da3f782245dcf57ccc1ec46a63f947e33a7f16`  
		Last Modified: Wed, 16 Sep 2026 04:16:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffed81688e19bed09263f33b968f1631a31e15bd668c11e8b0e9e765adfef0e1`  
		Last Modified: Wed, 16 Sep 2026 04:16:37 GMT  
		Size: 73.9 MB (73947142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1949eaa64985bb06a222ef77646bddeb66384aab7155e0577cd57e64c08c7e0`  
		Last Modified: Wed, 16 Sep 2026 04:16:35 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:b27dcaa71f54f9c81a6d58bdbc5e0ffd98616cabee9e348e23add4bd45b6fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3009154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb1cb0a14099e37e3e7b9245ad07e7dfb82813aab86cefac47e6109186455ac`

```dockerfile
```

-	Layers:
	-	`sha256:1ca0f45984c991a88aa798fdc73fe41399a27f2817d7c0829c2c9c0e7c993e06`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 3.0 MB (2971905 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c38476c06ce8fbb27b59cc3b4d4536c2fedcd1fc66f41ea35ea5bf05d1a817c6`  
		Last Modified: Wed, 16 Sep 2026 04:16:33 GMT  
		Size: 37.2 KB (37249 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:bf833ba579fcab44a6b517c19d58c361fc5f4d5dea6da9c0faf2d09393e81447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae96cfb04519f857f25b57f687d4a9def2fd98765c6a99bafad9395feb76dad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:31 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:19:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:10 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5d5ff7a0eb5ca9d5dbee21202664dc107d947366da28b935d16f4b6434c2c3`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a4014784af22de94bfc72a066e63080c1052d95ddbe9f0ede2134ea886e2fb`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 15.5 MB (15535074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7697cfbb13016d4a67cb93a09e766fd7009570f5732ef1e32c787253348acdb1`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 1.3 MB (1262315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24821ae7106f6986bc056dabb4bf795753e9d3dd3eff04ba01502d7d1e27e87`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 47.0 MB (46996468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90497411df0523a94201dc024ae1b482ae05b6256841265c48499866888ad402`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262e2e7284109d1fcf05eac2394a025e527ad3309b412578d483860e8fc634a5`  
		Last Modified: Sat, 19 Sep 2026 01:19:26 GMT  
		Size: 73.9 MB (73946695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea2987101a4c2e4bfdc1543724d90b60cdd3b0a15ad2d18ed2c1ea6fe7e128b`  
		Last Modified: Sat, 19 Sep 2026 01:19:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:c060729b87f306678a6f28eef501624ad9c2efdca3281d8f2a4586501b4702fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b022d235b9b32d4558c3ed44fd82a617b167bda28085a743fdf6838704994991`

```dockerfile
```

-	Layers:
	-	`sha256:f3c8070e3ea4dc2690e2a9ad4940a336619f474592bc1756300573cbeb2b6696`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 3.0 MB (2975717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0835bf1ccf082656725cc3b46f0862cafa8ad7b2ffd9c7a99909a45ff1545f18`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8fa791142b00baf6a407867bbdf421dac68a325e0bdf940e7afb354ecf3f57dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176112497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcbd23ff0620928ca8a3e741f384f555140823d2d52298d6b1ea29741b048cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 10:14:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21614e13cfa16a0c8beb97eff5b2aacab79a6d5a099fe0b60b1cc98e6edf207`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 47.4 MB (47422402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e36d0fdb69bab06aa41c6e23ecccd2c1b2b8e8e1f1adf1217f1695fcf7bc63`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2754491b24dad80f358c1e3c4eb8c73db0cbc99adb83cb9bde28f0528e18e11e`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 73.9 MB (73947307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58d7f40df6bbf09a467ba0d61ffddcb9a9bb696cccf58136369f798448c8845`  
		Last Modified: Wed, 16 Sep 2026 10:14:31 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:4d3b9c9631e76697c9da5cea669a6149db92eb634db9f5c72ee869995519f714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3010782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d497d5c343e4bc7f8c2d938d21f31978cefd02f9030a7597d0e43ca5621609df`

```dockerfile
```

-	Layers:
	-	`sha256:8346e4999811a8ef86ae6af447af807774a8211d59acd88f3a9d32d3f564996a`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 3.0 MB (2973632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e28fb6e0b48ad4d816dce21004c2dea895e95689b3d0778c93d767723982db8`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; s390x

```console
$ docker pull cassandra@sha256:8a7861a2db03503136fabdf0a79216ea34c610428b53f1470147e3ef4574f6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165259607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9a31093f9280eb206c13a59342cd084aebaca5757e074f3d834d44962ace0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:31:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:31:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:31:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:31:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:31:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de19cf994b8efbb04f2eaee97d62191c91deb0183a3846e65f0b9fbb168abd39`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 44.5 MB (44502493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f288f4b71d3bdc821dace9244460cfe40b480989d321e35dce9a247496034b`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dbe66d7fcde27743808dcadd20628263c0f118639673ea1153d6266feecb67`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 73.9 MB (73946990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae89bf589e0887a15360e51c3082eafe829c43a00ffed08553a1170523c91080`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:a69d9f2ac5235dadf533103d71bec5185a8d578019b6977f6f8af921f59e474c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0414992c7b7095ab3667f8783d502dc2b1c0da8e263243cff5bbfed58597f6`

```dockerfile
```

-	Layers:
	-	`sha256:421c606e88dc18bb64ea1e6d570f79a976748096bca6ac48d91570ac3fc0df86`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 3.0 MB (2976714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb49fb8e08c0fff5c0d0771edf8f35a1c1b27b918b9e0a0c9e8ffd466713675f`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:trixie`

```console
$ docker pull cassandra@sha256:97cc0f3999ebd9a9fa86413a4822d4b71255ecdcd4900c43a1b0ba486b7e01a9
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
$ docker pull cassandra@sha256:e883069cafb97a5ea982b4ea938ce9871ad2ec000a31697b142a3f029c74c979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168250714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0798b7251b756834595d5b70ea94c8e48f53024f4f12b3ffcf4dc33f470be7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:11 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:11:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:11:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:11:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:11:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:11:31 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:11:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:11:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:11:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499fa5da95bfe22fe2d0c798a7d071000385e81369414db40b80118bb65122c0`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282a43a7fdc51463a47d3aafcb6b527685d600fcd60a47206360d35b8d88a46c`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 15.7 MB (15650895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07a9a538091d515b8fe36a437e53726d4f043c41fcad0689ee156a8ebef371`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 1.3 MB (1310329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8932be80612342b423825e1001bb06e24a287fa66ef5d2c25bf065b2cf6199`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 47.5 MB (47509942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa6579adcba2b9cf09c52d1e6a2b74379dc35a7f4d20c2fe8c2f8afff3b840b`  
		Last Modified: Sat, 19 Sep 2026 01:12:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a38148d69bb7f8e7fa3a388f428d106f3a845a0e75b18528ec4ddd9487a19c`  
		Last Modified: Sat, 19 Sep 2026 01:12:08 GMT  
		Size: 73.9 MB (73946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23b91f8712f513ef8cf1a71afe7b1a53d962ad5f53c54cfc043fa53c739f120`  
		Last Modified: Sat, 19 Sep 2026 01:12:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:8aa1cedfe4240bf5ec4ce9781b90e22d7f3e0a6c29f662ce19c7eebb49e8f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4498dc48a9e07972e6280490cb2e9eebfdae21d2e0310b9408ac73eae01768e6`

```dockerfile
```

-	Layers:
	-	`sha256:82f29a7c0658834175a7f561377f1af69f0a21e19957d6d1042e0e4a3babfeaf`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 3.0 MB (2975961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf31ed1c81921d2c22023272745981f4d88c80f5b2a36405115774474640d303`  
		Last Modified: Sat, 19 Sep 2026 01:12:05 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:2a2fb6c41ae8a372cd0f36495051f4ca23a5d11fdd4974d41d9ed5208e546ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160968598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4a9ca89a3488dac4b4bdecb551b10c7f52a290ae6b534d20d084791e212498`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 02:02:03 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 02:02:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:02:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 02:02:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 02:02:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:27 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 02:02:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:02:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 02:02:27 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 02:02:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 02:02:51 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 02:02:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:02:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:02:51 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 02:02:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d046f713f459c754dd66b53baa2b237e03b8c315c477d73af6ee6dabddc96fab`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34e8181190fdc079b7db497b16baf8c861b9e6cc60dc2cea0d9c53e3007977e`  
		Last Modified: Sat, 19 Sep 2026 02:03:04 GMT  
		Size: 14.4 MB (14402442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfae227660bcbca3f27768c27d7fb1d3a25d1fe08076f0f57a2157bd954bf158`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 1.3 MB (1275104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f37e7f79cd6fc16ca725cd0ee5a85ac72094671a6550b22f814a6dd460eaab`  
		Last Modified: Sat, 19 Sep 2026 02:03:05 GMT  
		Size: 45.1 MB (45092776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84815a803082551955a575d2e937afdfe7ae131f111eca888726ced6b18f69fc`  
		Last Modified: Sat, 19 Sep 2026 02:03:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b739e7507a2173863961c106a59b457e3a045fd55fdcdb2aa18402d752811b29`  
		Last Modified: Sat, 19 Sep 2026 02:03:06 GMT  
		Size: 73.9 MB (73946887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d888b652a333151fe24ac4888439dbb791f4720fde8b834a250f0bb4183859`  
		Last Modified: Sat, 19 Sep 2026 02:03:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:6578e792a1a5bbc84a459066bfddc8645040a2236f2051bbae1f0e63cd898a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0472837e7f3abfaa92619dbac8c4a04c6953c99e3e43f6aef64b15462293fd1e`

```dockerfile
```

-	Layers:
	-	`sha256:8b71107d5e4ae357dceeb42edc892b7a2cadbe1befd66372a5119c8152fd5b69`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 3.0 MB (2977615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f4b4e7fcbc37aef6aa0ba223c14f27d57881283665931fdd0dc8890c81faab`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 37.2 KB (37249 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:bf833ba579fcab44a6b517c19d58c361fc5f4d5dea6da9c0faf2d09393e81447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae96cfb04519f857f25b57f687d4a9def2fd98765c6a99bafad9395feb76dad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:31 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:18:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:18:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:18:51 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:51 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:18:51 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:19:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:19:10 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:19:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5d5ff7a0eb5ca9d5dbee21202664dc107d947366da28b935d16f4b6434c2c3`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a4014784af22de94bfc72a066e63080c1052d95ddbe9f0ede2134ea886e2fb`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 15.5 MB (15535074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7697cfbb13016d4a67cb93a09e766fd7009570f5732ef1e32c787253348acdb1`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 1.3 MB (1262315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24821ae7106f6986bc056dabb4bf795753e9d3dd3eff04ba01502d7d1e27e87`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 47.0 MB (46996468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90497411df0523a94201dc024ae1b482ae05b6256841265c48499866888ad402`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262e2e7284109d1fcf05eac2394a025e527ad3309b412578d483860e8fc634a5`  
		Last Modified: Sat, 19 Sep 2026 01:19:26 GMT  
		Size: 73.9 MB (73946695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea2987101a4c2e4bfdc1543724d90b60cdd3b0a15ad2d18ed2c1ea6fe7e128b`  
		Last Modified: Sat, 19 Sep 2026 01:19:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:c060729b87f306678a6f28eef501624ad9c2efdca3281d8f2a4586501b4702fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b022d235b9b32d4558c3ed44fd82a617b167bda28085a743fdf6838704994991`

```dockerfile
```

-	Layers:
	-	`sha256:f3c8070e3ea4dc2690e2a9ad4940a336619f474592bc1756300573cbeb2b6696`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 3.0 MB (2975717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0835bf1ccf082656725cc3b46f0862cafa8ad7b2ffd9c7a99909a45ff1545f18`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8fa791142b00baf6a407867bbdf421dac68a325e0bdf940e7afb354ecf3f57dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176112497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcbd23ff0620928ca8a3e741f384f555140823d2d52298d6b1ea29741b048cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:20:24 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 09 Sep 2026 10:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 10:21:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 10:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
RUN java --version # buildkit
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 16 Sep 2026 10:12:48 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:12:48 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 16 Sep 2026 10:12:48 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 16 Sep 2026 10:14:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 16 Sep 2026 10:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 10:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 10:14:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 16 Sep 2026 10:14:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63517711a9b662fbf17e967abc6479f1520f483c97938a7cd549ba5b091b1318`  
		Last Modified: Wed, 09 Sep 2026 10:22:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23755d7a90a61e163a72532cba6ee198ee2d8bfc7d49227b5b7e584eb33ed17`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 16.7 MB (16651826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b55a63993c7f8d413fea931b8f90b6b06fcbc6aff7e1e2a703041e449767277`  
		Last Modified: Wed, 09 Sep 2026 10:22:39 GMT  
		Size: 4.5 MB (4473037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21614e13cfa16a0c8beb97eff5b2aacab79a6d5a099fe0b60b1cc98e6edf207`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 47.4 MB (47422402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e36d0fdb69bab06aa41c6e23ecccd2c1b2b8e8e1f1adf1217f1695fcf7bc63`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2754491b24dad80f358c1e3c4eb8c73db0cbc99adb83cb9bde28f0528e18e11e`  
		Last Modified: Wed, 16 Sep 2026 10:14:33 GMT  
		Size: 73.9 MB (73947307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58d7f40df6bbf09a467ba0d61ffddcb9a9bb696cccf58136369f798448c8845`  
		Last Modified: Wed, 16 Sep 2026 10:14:31 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:4d3b9c9631e76697c9da5cea669a6149db92eb634db9f5c72ee869995519f714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3010782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d497d5c343e4bc7f8c2d938d21f31978cefd02f9030a7597d0e43ca5621609df`

```dockerfile
```

-	Layers:
	-	`sha256:8346e4999811a8ef86ae6af447af807774a8211d59acd88f3a9d32d3f564996a`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 3.0 MB (2973632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e28fb6e0b48ad4d816dce21004c2dea895e95689b3d0778c93d767723982db8`  
		Last Modified: Wed, 16 Sep 2026 10:14:30 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:8a7861a2db03503136fabdf0a79216ea34c610428b53f1470147e3ef4574f6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165259607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9a31093f9280eb206c13a59342cd084aebaca5757e074f3d834d44962ace0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:30:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:30:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:31:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
RUN java --version # buildkit
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Sat, 19 Sep 2026 01:31:21 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:31:21 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_VERSION=5.0.9
# Sat, 19 Sep 2026 01:31:21 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Sat, 19 Sep 2026 01:31:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
VOLUME [/var/lib/cassandra]
# Sat, 19 Sep 2026 01:31:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:31:35 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Sat, 19 Sep 2026 01:31:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6a6b33348c16d419dad68f93f524604efc8be40066746ae3310e9364266af9`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ef49cf230a5690dc8f54b603b3ff6f1b1f714369351c411de1bba01e996de5`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 15.6 MB (15624620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceabe6b968adaeb384b45a990185bc12f929c0a5dc2deea7a5c6a1904b2af2f6`  
		Last Modified: Sat, 19 Sep 2026 01:30:58 GMT  
		Size: 1.3 MB (1283896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de19cf994b8efbb04f2eaee97d62191c91deb0183a3846e65f0b9fbb168abd39`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 44.5 MB (44502493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f288f4b71d3bdc821dace9244460cfe40b480989d321e35dce9a247496034b`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dbe66d7fcde27743808dcadd20628263c0f118639673ea1153d6266feecb67`  
		Last Modified: Sat, 19 Sep 2026 01:31:54 GMT  
		Size: 73.9 MB (73946990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae89bf589e0887a15360e51c3082eafe829c43a00ffed08553a1170523c91080`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:a69d9f2ac5235dadf533103d71bec5185a8d578019b6977f6f8af921f59e474c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0414992c7b7095ab3667f8783d502dc2b1c0da8e263243cff5bbfed58597f6`

```dockerfile
```

-	Layers:
	-	`sha256:421c606e88dc18bb64ea1e6d570f79a976748096bca6ac48d91570ac3fc0df86`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 3.0 MB (2976714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb49fb8e08c0fff5c0d0771edf8f35a1c1b27b918b9e0a0c9e8ffd466713675f`  
		Last Modified: Sat, 19 Sep 2026 01:31:53 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json
