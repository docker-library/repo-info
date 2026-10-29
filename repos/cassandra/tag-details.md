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
$ docker pull cassandra@sha256:b877532a79865d0212c860352bb9c3b0be97db9628a662ea815fb90ea4033158
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
$ docker pull cassandra@sha256:57b251cede6ebb8402c9cfc8ee8931438086ce2640a5657e80ecebc9f4cf3bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149019639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40516ee152ef61655ef539671a2f59d3bb9ae115a2c8dd4992be227b3ae83b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3e28e5d774f0be3d153daed05f9ced683fc6fa880690346626795c628ccead`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858c15b347121edffe2e35851a1308d8be578420af7eb86b9c7d3b846a2cf22b`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 18.0 MB (17974936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6174d3951eeddc94ccad55c53bbe12880040ce9451e06b9114834ec4354099`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.3 MB (1267037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9818e0023872cd50d2ed7a2d93ffd7093cdedd0c128daaec3ceb015af50ce6fa`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 47.3 MB (47325526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c760519817e9d3cbe1f72835aaf10cd3a500cb3af6be1556af04b632639e41`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21a8b0e9b9eb4769f0e3764a4fe603d2a07bdfe4d8d86fbdd4e4d11239765a9`  
		Last Modified: Wed, 28 Oct 2026 02:09:14 GMT  
		Size: 54.2 MB (54202241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf226d0165a6845136ec4b742802396f383abdb61cba69953385fb3389888d9f`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:dd950e806481b2f14ab74cc7a081397ad0fd3c0790860947195386ec50de2e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848b0b867574ec55307070bf25ac3f2b9dda42360286d199f5001d96c277e542`

```dockerfile
```

-	Layers:
	-	`sha256:28a8f6c38a4f86d71b8d80e6da1d0cbf7714b2f1170a3e49411cd83a3acd1c20`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:312c79ed452f8620fa1656fa12598738c8e9afc59919f72a61bfb607860d6ec5`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:9557a0997e04e275b6bf87cd48654bf2488f4ad17d70878335dc5967af5510f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140888224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e09761e042a4b789dbd5b333da9a453f8a937f5c4014a56a814a61ba55ffc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:57:34 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:58:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e40146745860fcdea328173eb2df7b2ccd49c138cabab1b1523b90fcb68fa8`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7eba274dc6da4feb7e51c67226d482bf5ab888e3f8cb4d65659d3dd99f224a`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 16.1 MB (16056073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883af5f0635fadcf5ccba5a689657f2ee0fe38947ae308054aadd7b91255fdd9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.2 MB (1233016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c65d08ecc9479a7344c74a7927780df49ca3765276a7e56f078fec114058d0`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 45.4 MB (45433533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5756f5011497ed2d1d0da86109c3efabe6b9d765ea7f6d80a236538407fbfc`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1fb10f654ec319dca61127a03457a3fa7cda397f3d0d78a2b6422af6b4e4cf`  
		Last Modified: Wed, 28 Oct 2026 02:58:34 GMT  
		Size: 54.2 MB (54202173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13680d31c855a92077389cdc9a3c926d153b76ca7dab9d3b7637cb4351a8819`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:3e2a3451bc6eea175531f32608f1b845ad158c0a3d046e2bf0a5e05c56abfd2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0258b44ee7f6269531745bb7433ec9db89a25a5ae5d3bacc6f8a1ea3e3bd2248`

```dockerfile
```

-	Layers:
	-	`sha256:5d8c7ac1b0a5e810fb4f7cf436f5a3627f2a80cacdc620a269e6c59d2df59aa6`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4daca554306cc08e515134d8f19cb0de7f6961f7d5d88467eefc91463c769064`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8758a2293fa114e96d8b3558c30310b7860fe977e7abc1d290d2dd3769e02aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146927705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed4d6eefb9273eba45601f5060f2d470180bcf7d4e47488dc482a7b7c5f81bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:14:48 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:15:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:15:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:15:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:15:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:15:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d0a37399711ea2c160fc5b3b0c0cc6330bcf7b668573484d4f836c6ec771f`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ad694628fcb7a1704f557a0549cca57d733f67d153ee99b65e6044ae5704c6`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 17.7 MB (17731407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e5a14bbe10da9ce50a422512d9db0fbc7baaa255e791aa205200fdfaf063d1`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.2 MB (1220554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5ca4d32e7963333b0cfb3cbf417205c070cfcbcbb319fe4adccbfb6e1fafd3`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 45.6 MB (45633114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d44be4ab1a0031a3073219d9067b8fc1a2ffcd5ac9f760073837d1b55fadec`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e3e670e63f439bd688e7acff8d21dd49f1474def1a1b7fcb81481e28e080e6`  
		Last Modified: Wed, 28 Oct 2026 02:15:40 GMT  
		Size: 54.2 MB (54202221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503b522f52cc5a289cf681555db202fca0132a06a268532c6bea32790ba83605`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:0c6afebfa7b6dc2937f348f8b1ca911eafcc171e01b95dcdee4e6719ef4605e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587902335f486ea62b0a29dff7e4b07d6c7ee10061bf0ce77b40c2ba4849eaa6`

```dockerfile
```

-	Layers:
	-	`sha256:8b9280d0bcca236637d349132e209b25d5b98a3e404f95259eb22913dc750f1e`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26c70d4003f39245097abc49e202b64d6cf5dda8bc6a77ec5b70f7219fde00ab`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4` - linux; ppc64le

```console
$ docker pull cassandra@sha256:db3f33dd81a388fb03d96eaf534c423b07ea686a72457bf472568904722a6778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.7 MB (149652691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a6aa68102c73ae6132feeafd124026012a819cd7183736f135dda867c3d179`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:24:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:25:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 09:26:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:26:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:26:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:26:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d942339307e684eeeaaaee3b183a6966ed0fa60b9f619ea7e60ffeb3e8ffb5f6`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fab2e67346874a5a110b04ac9492eaa485b3f410ae4763f9af67b925d8871`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 19.3 MB (19338623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a45666a9990c298a18c6e5ebf63f840b4919a90e12d19efaa5338b4ec6f49`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.2 MB (1225975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6e9fab2c0788c25ff6b4e1a5a9dab7d82ae9bbafe407500caa17f7be8a598e`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 42.8 MB (42790380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf452b9a41ce82c8f4c86c7c0a87c874c392e5f6740ea68bd45abef2372446b`  
		Last Modified: Wed, 28 Oct 2026 09:26:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9474c95fad041ec9ebcb14eec06e0d0fa4f69b4c704b1f598f9109c6577043b4`  
		Last Modified: Wed, 28 Oct 2026 09:26:39 GMT  
		Size: 54.2 MB (54202413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbf56bd2329e75950ec56c75ad8a6d7bb9e37f071184011f5604368046be9a2`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4` - unknown; unknown

```console
$ docker pull cassandra@sha256:26d0905df9bb50de924c4e3eae8ca04afb833a668a74087e2b7def3a2c9c99f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2653a41c01c7782a7112ad0a40b08882a9384aff6f7f5997a8c723b95f3875bf`

```dockerfile
```

-	Layers:
	-	`sha256:f2d3578a249191b65c118e8bcd3cc54b7873a9f7ee0cfb565625b3e8cbfae027`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d63647197065a6ab059625114538bf5136f433dd4d7ded9f5aa48343b93dbdd`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4-bookworm`

```console
$ docker pull cassandra@sha256:b877532a79865d0212c860352bb9c3b0be97db9628a662ea815fb90ea4033158
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
$ docker pull cassandra@sha256:57b251cede6ebb8402c9cfc8ee8931438086ce2640a5657e80ecebc9f4cf3bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149019639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40516ee152ef61655ef539671a2f59d3bb9ae115a2c8dd4992be227b3ae83b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3e28e5d774f0be3d153daed05f9ced683fc6fa880690346626795c628ccead`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858c15b347121edffe2e35851a1308d8be578420af7eb86b9c7d3b846a2cf22b`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 18.0 MB (17974936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6174d3951eeddc94ccad55c53bbe12880040ce9451e06b9114834ec4354099`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.3 MB (1267037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9818e0023872cd50d2ed7a2d93ffd7093cdedd0c128daaec3ceb015af50ce6fa`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 47.3 MB (47325526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c760519817e9d3cbe1f72835aaf10cd3a500cb3af6be1556af04b632639e41`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21a8b0e9b9eb4769f0e3764a4fe603d2a07bdfe4d8d86fbdd4e4d11239765a9`  
		Last Modified: Wed, 28 Oct 2026 02:09:14 GMT  
		Size: 54.2 MB (54202241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf226d0165a6845136ec4b742802396f383abdb61cba69953385fb3389888d9f`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:dd950e806481b2f14ab74cc7a081397ad0fd3c0790860947195386ec50de2e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848b0b867574ec55307070bf25ac3f2b9dda42360286d199f5001d96c277e542`

```dockerfile
```

-	Layers:
	-	`sha256:28a8f6c38a4f86d71b8d80e6da1d0cbf7714b2f1170a3e49411cd83a3acd1c20`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:312c79ed452f8620fa1656fa12598738c8e9afc59919f72a61bfb607860d6ec5`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:9557a0997e04e275b6bf87cd48654bf2488f4ad17d70878335dc5967af5510f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140888224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e09761e042a4b789dbd5b333da9a453f8a937f5c4014a56a814a61ba55ffc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:57:34 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:58:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e40146745860fcdea328173eb2df7b2ccd49c138cabab1b1523b90fcb68fa8`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7eba274dc6da4feb7e51c67226d482bf5ab888e3f8cb4d65659d3dd99f224a`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 16.1 MB (16056073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883af5f0635fadcf5ccba5a689657f2ee0fe38947ae308054aadd7b91255fdd9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.2 MB (1233016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c65d08ecc9479a7344c74a7927780df49ca3765276a7e56f078fec114058d0`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 45.4 MB (45433533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5756f5011497ed2d1d0da86109c3efabe6b9d765ea7f6d80a236538407fbfc`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1fb10f654ec319dca61127a03457a3fa7cda397f3d0d78a2b6422af6b4e4cf`  
		Last Modified: Wed, 28 Oct 2026 02:58:34 GMT  
		Size: 54.2 MB (54202173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13680d31c855a92077389cdc9a3c926d153b76ca7dab9d3b7637cb4351a8819`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:3e2a3451bc6eea175531f32608f1b845ad158c0a3d046e2bf0a5e05c56abfd2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0258b44ee7f6269531745bb7433ec9db89a25a5ae5d3bacc6f8a1ea3e3bd2248`

```dockerfile
```

-	Layers:
	-	`sha256:5d8c7ac1b0a5e810fb4f7cf436f5a3627f2a80cacdc620a269e6c59d2df59aa6`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4daca554306cc08e515134d8f19cb0de7f6961f7d5d88467eefc91463c769064`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8758a2293fa114e96d8b3558c30310b7860fe977e7abc1d290d2dd3769e02aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146927705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed4d6eefb9273eba45601f5060f2d470180bcf7d4e47488dc482a7b7c5f81bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:14:48 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:15:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:15:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:15:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:15:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:15:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d0a37399711ea2c160fc5b3b0c0cc6330bcf7b668573484d4f836c6ec771f`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ad694628fcb7a1704f557a0549cca57d733f67d153ee99b65e6044ae5704c6`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 17.7 MB (17731407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e5a14bbe10da9ce50a422512d9db0fbc7baaa255e791aa205200fdfaf063d1`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.2 MB (1220554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5ca4d32e7963333b0cfb3cbf417205c070cfcbcbb319fe4adccbfb6e1fafd3`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 45.6 MB (45633114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d44be4ab1a0031a3073219d9067b8fc1a2ffcd5ac9f760073837d1b55fadec`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e3e670e63f439bd688e7acff8d21dd49f1474def1a1b7fcb81481e28e080e6`  
		Last Modified: Wed, 28 Oct 2026 02:15:40 GMT  
		Size: 54.2 MB (54202221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503b522f52cc5a289cf681555db202fca0132a06a268532c6bea32790ba83605`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:0c6afebfa7b6dc2937f348f8b1ca911eafcc171e01b95dcdee4e6719ef4605e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587902335f486ea62b0a29dff7e4b07d6c7ee10061bf0ce77b40c2ba4849eaa6`

```dockerfile
```

-	Layers:
	-	`sha256:8b9280d0bcca236637d349132e209b25d5b98a3e404f95259eb22913dc750f1e`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26c70d4003f39245097abc49e202b64d6cf5dda8bc6a77ec5b70f7219fde00ab`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:db3f33dd81a388fb03d96eaf534c423b07ea686a72457bf472568904722a6778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.7 MB (149652691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a6aa68102c73ae6132feeafd124026012a819cd7183736f135dda867c3d179`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:24:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:25:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 09:26:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:26:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:26:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:26:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d942339307e684eeeaaaee3b183a6966ed0fa60b9f619ea7e60ffeb3e8ffb5f6`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fab2e67346874a5a110b04ac9492eaa485b3f410ae4763f9af67b925d8871`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 19.3 MB (19338623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a45666a9990c298a18c6e5ebf63f840b4919a90e12d19efaa5338b4ec6f49`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.2 MB (1225975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6e9fab2c0788c25ff6b4e1a5a9dab7d82ae9bbafe407500caa17f7be8a598e`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 42.8 MB (42790380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf452b9a41ce82c8f4c86c7c0a87c874c392e5f6740ea68bd45abef2372446b`  
		Last Modified: Wed, 28 Oct 2026 09:26:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9474c95fad041ec9ebcb14eec06e0d0fa4f69b4c704b1f598f9109c6577043b4`  
		Last Modified: Wed, 28 Oct 2026 09:26:39 GMT  
		Size: 54.2 MB (54202413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbf56bd2329e75950ec56c75ad8a6d7bb9e37f071184011f5604368046be9a2`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:26d0905df9bb50de924c4e3eae8ca04afb833a668a74087e2b7def3a2c9c99f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2653a41c01c7782a7112ad0a40b08882a9384aff6f7f5997a8c723b95f3875bf`

```dockerfile
```

-	Layers:
	-	`sha256:f2d3578a249191b65c118e8bcd3cc54b7873a9f7ee0cfb565625b3e8cbfae027`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d63647197065a6ab059625114538bf5136f433dd4d7ded9f5aa48343b93dbdd`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0`

```console
$ docker pull cassandra@sha256:8ae82b4f25af2774e52a2a36b010f593fe6cbae8be2bc75396d386c198c628f8
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
$ docker pull cassandra@sha256:ccc4e36fa5609682e31469181419e3992bbe80091c651b101bbfeed333d6f939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146898930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6b9e6f9eaabd8494c032150aa742dd54d3f17ea423ed48c497d9c60954a6a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:56 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:09:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:09:14 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:09:15 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:09:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151311acacbf5260598683b00e9fb87c5f200cf3fd3b4cbbb67670207c3fa64b`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009aa2480bce7a779b1849aa26c3915199c7ba1cfcb4010d901aba1776c6ef0b`  
		Last Modified: Wed, 28 Oct 2026 02:09:27 GMT  
		Size: 18.0 MB (17974855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c63b9eb0ee5bdceb6db9a3b671520a45f63d0e9fbc45aa8fe6940ffd73bca9`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 1.3 MB (1267033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f469702957cdc90bbbd858d93daa4390546f74baab94f08d3ddf00cc44dae4c`  
		Last Modified: Wed, 28 Oct 2026 02:09:28 GMT  
		Size: 47.3 MB (47325534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3438cabe49f5cf5f2e42870257047921cd46d69c0c4e83bc17c1adef573c61`  
		Last Modified: Wed, 28 Oct 2026 02:09:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92415c8be7b9b1343cf223dde38bf6282de94488d1341614670534a7077b2f1`  
		Last Modified: Wed, 28 Oct 2026 02:09:29 GMT  
		Size: 52.1 MB (52081607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971c1193959cd7cf07e5dff814ae2e34a328c7bb9b1f96985d5e60f8bc452217`  
		Last Modified: Wed, 28 Oct 2026 02:09:29 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fe504e9d37f3b4af3caaa4e9fe374ff1fd28e50214851d0c7106cefd422ecfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50db634524444e1dfa5ff4e56b394de7138b964e94f8c8348407898a92e43a50`

```dockerfile
```

-	Layers:
	-	`sha256:cbd94f25373b74ddbd484ef53ff181a6022701a2bd3ce256ff8b9f7ae8b19ac3`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 3.3 MB (3274860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e051bd273dd9f699506073baa00230c5abbde44a24fe348c6089b639347521db`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:8858ea0b2fcf0f40398a11378b38f828fa632c33f937220fd447b241c7073c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138767863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ce4a5961628ea63e9886847b6c65b6af952c504b336f609da05d6010d0c87c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:58:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:58:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:58:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:58:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:58:27 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:58:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:58:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:58:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:48 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03b83a1472629f73b21fde58a572ac9adebe739b2d8102afe4bb0e5bc29f0a9`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7ea4cb9d1249590f97d93d09b100026981f681e65d3a80e0a877e720c243c4`  
		Last Modified: Wed, 28 Oct 2026 02:59:01 GMT  
		Size: 16.1 MB (16056233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abb9b9b06b2a7af9dd0e83dd3a90d5600097b85edbdb00076cf3e5be68050ca`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 1.2 MB (1233031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ef3c93b57beeea26e8923afefbfd9ed35847a71c5d59320fd8eb4f8a805bbf`  
		Last Modified: Wed, 28 Oct 2026 02:59:02 GMT  
		Size: 45.4 MB (45433509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0b4e6fb43fe7416a59b82c978a670b037941bd192a467d6e27318915495766`  
		Last Modified: Wed, 28 Oct 2026 02:59:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3cf521960c34fc1de92266301436e28f69d919fecc7f20ecd60e7148d2fba38`  
		Last Modified: Wed, 28 Oct 2026 02:59:03 GMT  
		Size: 52.1 MB (52081664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0afd0aaf7d2ea2903223b0c85efba0f39a3501d2782496c581a611a1cd87eb31`  
		Last Modified: Wed, 28 Oct 2026 02:59:02 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:7f365fab4781f043c447642a8647e5e5f821bfb40a5a369bc2e37dbca2be0888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46eae7b34537e3a7c59de111d6230e6657095cafe13a0d580691f5e6597be109`

```dockerfile
```

-	Layers:
	-	`sha256:3752f68188127a771139d78e1f41c2377ebe4aa570be430fc349f7346adc5638`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 3.3 MB (3278574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:589e3e9a85877f835ad68201d5e1391a071e268d8f49a20f34de28fbdfd98a16`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:765d324cea23c01aec39988ee88d32b078cb15ad81ea9146e0e67a767df23d14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144807065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597073bca689da61df4fe2a31d8dfa74d24882dc77cf541a822f521bcc522ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:15:16 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:15:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:15:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:35 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:15:35 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:35 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:15:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:15:58 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:15:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:15:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:15:58 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:15:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4959535079314d6423e05fc5045cc66b7d79c1ab39b658959115f767e3d19c91`  
		Last Modified: Wed, 28 Oct 2026 02:16:10 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec79b61653a32a93a5f3b92afb4d5ebaa918e15dc49874158ae50a0aa9887f51`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 17.7 MB (17731231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6dac1002d7c01891385ce7cdecaab93c5a0405f3652285f4ae044f2560d44d`  
		Last Modified: Wed, 28 Oct 2026 02:16:10 GMT  
		Size: 1.2 MB (1220565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b08379eafa9227f76171a27f425c99dcad524d13fc5d392ba0918c2b4194cd7`  
		Last Modified: Wed, 28 Oct 2026 02:16:12 GMT  
		Size: 45.6 MB (45633107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7548910b7f8c62029976f9b4bee48da6512bd9ef35866f673d789549204ecf`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44955f719ed6f33841d1cd9d4699aa43faf4e935cdfa746add76dc2e03f6690a`  
		Last Modified: Wed, 28 Oct 2026 02:16:13 GMT  
		Size: 52.1 MB (52081747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72196579804aac9c77be65dc90742c95ccd496f08f91fcd93be1c5f330dded4`  
		Last Modified: Wed, 28 Oct 2026 02:16:13 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:c3cde20c2cec91105aac190b024e261e87bc2c14bffd699e1eb6455e3627b75d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a292fc808f445bf283d92188cc8a34d58b3fd3ace2b59c1280e0a6fc08bf8770`

```dockerfile
```

-	Layers:
	-	`sha256:ef9b81f279cbaf08690bc94e2401ea3d6392a215ac4b8660bbf904a3ef3b5407`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 3.3 MB (3275195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e1f13e48a2e51751ea6949517e040f33c9b5c8af92d239a957fda3bdafd39e9`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ef6c53b34ec3ffc572f9d618a5e1bac47609d8437566dc5dd8defbd25f5a93c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147532104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4602cb81ede70f3f1570f9a667c55d42d3c28de8c78082797dea647995def324`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:24:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:25:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 09:26:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:26:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:26:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:26:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d942339307e684eeeaaaee3b183a6966ed0fa60b9f619ea7e60ffeb3e8ffb5f6`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fab2e67346874a5a110b04ac9492eaa485b3f410ae4763f9af67b925d8871`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 19.3 MB (19338623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a45666a9990c298a18c6e5ebf63f840b4919a90e12d19efaa5338b4ec6f49`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.2 MB (1225975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6e9fab2c0788c25ff6b4e1a5a9dab7d82ae9bbafe407500caa17f7be8a598e`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 42.8 MB (42790380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf452b9a41ce82c8f4c86c7c0a87c874c392e5f6740ea68bd45abef2372446b`  
		Last Modified: Wed, 28 Oct 2026 09:26:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2010f58396e976c119a29a2dfa6f79f49493f61d5d162f1a236a2a2be27bc754`  
		Last Modified: Wed, 28 Oct 2026 09:26:39 GMT  
		Size: 52.1 MB (52081825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a006e4afeb5b5c6d6dce863af53e9ad3c1d16edf8ac3b5459f15432311b69d`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:53878cf3a5a12cb25ab341747414f61d2b6c34241c418ffccf85fd830c42fcb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df0bd98d9b8623a1469e8ed2d5f5be74bb12cdbb27c7458c1ad0ef4f4a2d893`

```dockerfile
```

-	Layers:
	-	`sha256:ff04abecc158069562a237cbd1680b3dc282d864f0f5e0d02429cd33601c6d51`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 3.3 MB (3279108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2450922639b9c5880466635a57a7e29689b354ebd3492fc53336810dd56da693`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0-bookworm`

```console
$ docker pull cassandra@sha256:8ae82b4f25af2774e52a2a36b010f593fe6cbae8be2bc75396d386c198c628f8
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
$ docker pull cassandra@sha256:ccc4e36fa5609682e31469181419e3992bbe80091c651b101bbfeed333d6f939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146898930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6b9e6f9eaabd8494c032150aa742dd54d3f17ea423ed48c497d9c60954a6a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:56 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:09:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:09:14 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:09:15 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:09:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151311acacbf5260598683b00e9fb87c5f200cf3fd3b4cbbb67670207c3fa64b`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009aa2480bce7a779b1849aa26c3915199c7ba1cfcb4010d901aba1776c6ef0b`  
		Last Modified: Wed, 28 Oct 2026 02:09:27 GMT  
		Size: 18.0 MB (17974855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c63b9eb0ee5bdceb6db9a3b671520a45f63d0e9fbc45aa8fe6940ffd73bca9`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 1.3 MB (1267033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f469702957cdc90bbbd858d93daa4390546f74baab94f08d3ddf00cc44dae4c`  
		Last Modified: Wed, 28 Oct 2026 02:09:28 GMT  
		Size: 47.3 MB (47325534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3438cabe49f5cf5f2e42870257047921cd46d69c0c4e83bc17c1adef573c61`  
		Last Modified: Wed, 28 Oct 2026 02:09:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92415c8be7b9b1343cf223dde38bf6282de94488d1341614670534a7077b2f1`  
		Last Modified: Wed, 28 Oct 2026 02:09:29 GMT  
		Size: 52.1 MB (52081607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971c1193959cd7cf07e5dff814ae2e34a328c7bb9b1f96985d5e60f8bc452217`  
		Last Modified: Wed, 28 Oct 2026 02:09:29 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fe504e9d37f3b4af3caaa4e9fe374ff1fd28e50214851d0c7106cefd422ecfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50db634524444e1dfa5ff4e56b394de7138b964e94f8c8348407898a92e43a50`

```dockerfile
```

-	Layers:
	-	`sha256:cbd94f25373b74ddbd484ef53ff181a6022701a2bd3ce256ff8b9f7ae8b19ac3`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 3.3 MB (3274860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e051bd273dd9f699506073baa00230c5abbde44a24fe348c6089b639347521db`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:8858ea0b2fcf0f40398a11378b38f828fa632c33f937220fd447b241c7073c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138767863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ce4a5961628ea63e9886847b6c65b6af952c504b336f609da05d6010d0c87c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:58:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:58:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:58:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:58:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:58:27 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:58:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:58:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:58:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:48 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03b83a1472629f73b21fde58a572ac9adebe739b2d8102afe4bb0e5bc29f0a9`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7ea4cb9d1249590f97d93d09b100026981f681e65d3a80e0a877e720c243c4`  
		Last Modified: Wed, 28 Oct 2026 02:59:01 GMT  
		Size: 16.1 MB (16056233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abb9b9b06b2a7af9dd0e83dd3a90d5600097b85edbdb00076cf3e5be68050ca`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 1.2 MB (1233031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ef3c93b57beeea26e8923afefbfd9ed35847a71c5d59320fd8eb4f8a805bbf`  
		Last Modified: Wed, 28 Oct 2026 02:59:02 GMT  
		Size: 45.4 MB (45433509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0b4e6fb43fe7416a59b82c978a670b037941bd192a467d6e27318915495766`  
		Last Modified: Wed, 28 Oct 2026 02:59:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3cf521960c34fc1de92266301436e28f69d919fecc7f20ecd60e7148d2fba38`  
		Last Modified: Wed, 28 Oct 2026 02:59:03 GMT  
		Size: 52.1 MB (52081664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0afd0aaf7d2ea2903223b0c85efba0f39a3501d2782496c581a611a1cd87eb31`  
		Last Modified: Wed, 28 Oct 2026 02:59:02 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:7f365fab4781f043c447642a8647e5e5f821bfb40a5a369bc2e37dbca2be0888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46eae7b34537e3a7c59de111d6230e6657095cafe13a0d580691f5e6597be109`

```dockerfile
```

-	Layers:
	-	`sha256:3752f68188127a771139d78e1f41c2377ebe4aa570be430fc349f7346adc5638`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 3.3 MB (3278574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:589e3e9a85877f835ad68201d5e1391a071e268d8f49a20f34de28fbdfd98a16`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:765d324cea23c01aec39988ee88d32b078cb15ad81ea9146e0e67a767df23d14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144807065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597073bca689da61df4fe2a31d8dfa74d24882dc77cf541a822f521bcc522ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:15:16 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:15:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:15:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:35 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:15:35 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:35 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:15:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:15:58 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:15:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:15:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:15:58 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:15:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4959535079314d6423e05fc5045cc66b7d79c1ab39b658959115f767e3d19c91`  
		Last Modified: Wed, 28 Oct 2026 02:16:10 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec79b61653a32a93a5f3b92afb4d5ebaa918e15dc49874158ae50a0aa9887f51`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 17.7 MB (17731231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6dac1002d7c01891385ce7cdecaab93c5a0405f3652285f4ae044f2560d44d`  
		Last Modified: Wed, 28 Oct 2026 02:16:10 GMT  
		Size: 1.2 MB (1220565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b08379eafa9227f76171a27f425c99dcad524d13fc5d392ba0918c2b4194cd7`  
		Last Modified: Wed, 28 Oct 2026 02:16:12 GMT  
		Size: 45.6 MB (45633107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7548910b7f8c62029976f9b4bee48da6512bd9ef35866f673d789549204ecf`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44955f719ed6f33841d1cd9d4699aa43faf4e935cdfa746add76dc2e03f6690a`  
		Last Modified: Wed, 28 Oct 2026 02:16:13 GMT  
		Size: 52.1 MB (52081747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72196579804aac9c77be65dc90742c95ccd496f08f91fcd93be1c5f330dded4`  
		Last Modified: Wed, 28 Oct 2026 02:16:13 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c3cde20c2cec91105aac190b024e261e87bc2c14bffd699e1eb6455e3627b75d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a292fc808f445bf283d92188cc8a34d58b3fd3ace2b59c1280e0a6fc08bf8770`

```dockerfile
```

-	Layers:
	-	`sha256:ef9b81f279cbaf08690bc94e2401ea3d6392a215ac4b8660bbf904a3ef3b5407`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 3.3 MB (3275195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e1f13e48a2e51751ea6949517e040f33c9b5c8af92d239a957fda3bdafd39e9`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ef6c53b34ec3ffc572f9d618a5e1bac47609d8437566dc5dd8defbd25f5a93c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147532104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4602cb81ede70f3f1570f9a667c55d42d3c28de8c78082797dea647995def324`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:24:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:25:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 09:26:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:26:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:26:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:26:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d942339307e684eeeaaaee3b183a6966ed0fa60b9f619ea7e60ffeb3e8ffb5f6`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fab2e67346874a5a110b04ac9492eaa485b3f410ae4763f9af67b925d8871`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 19.3 MB (19338623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a45666a9990c298a18c6e5ebf63f840b4919a90e12d19efaa5338b4ec6f49`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.2 MB (1225975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6e9fab2c0788c25ff6b4e1a5a9dab7d82ae9bbafe407500caa17f7be8a598e`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 42.8 MB (42790380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf452b9a41ce82c8f4c86c7c0a87c874c392e5f6740ea68bd45abef2372446b`  
		Last Modified: Wed, 28 Oct 2026 09:26:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2010f58396e976c119a29a2dfa6f79f49493f61d5d162f1a236a2a2be27bc754`  
		Last Modified: Wed, 28 Oct 2026 09:26:39 GMT  
		Size: 52.1 MB (52081825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a006e4afeb5b5c6d6dce863af53e9ad3c1d16edf8ac3b5459f15432311b69d`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:53878cf3a5a12cb25ab341747414f61d2b6c34241c418ffccf85fd830c42fcb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df0bd98d9b8623a1469e8ed2d5f5be74bb12cdbb27c7458c1ad0ef4f4a2d893`

```dockerfile
```

-	Layers:
	-	`sha256:ff04abecc158069562a237cbd1680b3dc282d864f0f5e0d02429cd33601c6d51`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 3.3 MB (3279108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2450922639b9c5880466635a57a7e29689b354ebd3492fc53336810dd56da693`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.21`

```console
$ docker pull cassandra@sha256:8ae82b4f25af2774e52a2a36b010f593fe6cbae8be2bc75396d386c198c628f8
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
$ docker pull cassandra@sha256:ccc4e36fa5609682e31469181419e3992bbe80091c651b101bbfeed333d6f939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146898930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6b9e6f9eaabd8494c032150aa742dd54d3f17ea423ed48c497d9c60954a6a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:56 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:09:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:09:14 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:09:15 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:09:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151311acacbf5260598683b00e9fb87c5f200cf3fd3b4cbbb67670207c3fa64b`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009aa2480bce7a779b1849aa26c3915199c7ba1cfcb4010d901aba1776c6ef0b`  
		Last Modified: Wed, 28 Oct 2026 02:09:27 GMT  
		Size: 18.0 MB (17974855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c63b9eb0ee5bdceb6db9a3b671520a45f63d0e9fbc45aa8fe6940ffd73bca9`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 1.3 MB (1267033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f469702957cdc90bbbd858d93daa4390546f74baab94f08d3ddf00cc44dae4c`  
		Last Modified: Wed, 28 Oct 2026 02:09:28 GMT  
		Size: 47.3 MB (47325534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3438cabe49f5cf5f2e42870257047921cd46d69c0c4e83bc17c1adef573c61`  
		Last Modified: Wed, 28 Oct 2026 02:09:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92415c8be7b9b1343cf223dde38bf6282de94488d1341614670534a7077b2f1`  
		Last Modified: Wed, 28 Oct 2026 02:09:29 GMT  
		Size: 52.1 MB (52081607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971c1193959cd7cf07e5dff814ae2e34a328c7bb9b1f96985d5e60f8bc452217`  
		Last Modified: Wed, 28 Oct 2026 02:09:29 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fe504e9d37f3b4af3caaa4e9fe374ff1fd28e50214851d0c7106cefd422ecfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50db634524444e1dfa5ff4e56b394de7138b964e94f8c8348407898a92e43a50`

```dockerfile
```

-	Layers:
	-	`sha256:cbd94f25373b74ddbd484ef53ff181a6022701a2bd3ce256ff8b9f7ae8b19ac3`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 3.3 MB (3274860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e051bd273dd9f699506073baa00230c5abbde44a24fe348c6089b639347521db`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:8858ea0b2fcf0f40398a11378b38f828fa632c33f937220fd447b241c7073c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138767863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ce4a5961628ea63e9886847b6c65b6af952c504b336f609da05d6010d0c87c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:58:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:58:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:58:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:58:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:58:27 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:58:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:58:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:58:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:48 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03b83a1472629f73b21fde58a572ac9adebe739b2d8102afe4bb0e5bc29f0a9`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7ea4cb9d1249590f97d93d09b100026981f681e65d3a80e0a877e720c243c4`  
		Last Modified: Wed, 28 Oct 2026 02:59:01 GMT  
		Size: 16.1 MB (16056233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abb9b9b06b2a7af9dd0e83dd3a90d5600097b85edbdb00076cf3e5be68050ca`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 1.2 MB (1233031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ef3c93b57beeea26e8923afefbfd9ed35847a71c5d59320fd8eb4f8a805bbf`  
		Last Modified: Wed, 28 Oct 2026 02:59:02 GMT  
		Size: 45.4 MB (45433509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0b4e6fb43fe7416a59b82c978a670b037941bd192a467d6e27318915495766`  
		Last Modified: Wed, 28 Oct 2026 02:59:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3cf521960c34fc1de92266301436e28f69d919fecc7f20ecd60e7148d2fba38`  
		Last Modified: Wed, 28 Oct 2026 02:59:03 GMT  
		Size: 52.1 MB (52081664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0afd0aaf7d2ea2903223b0c85efba0f39a3501d2782496c581a611a1cd87eb31`  
		Last Modified: Wed, 28 Oct 2026 02:59:02 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:7f365fab4781f043c447642a8647e5e5f821bfb40a5a369bc2e37dbca2be0888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46eae7b34537e3a7c59de111d6230e6657095cafe13a0d580691f5e6597be109`

```dockerfile
```

-	Layers:
	-	`sha256:3752f68188127a771139d78e1f41c2377ebe4aa570be430fc349f7346adc5638`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 3.3 MB (3278574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:589e3e9a85877f835ad68201d5e1391a071e268d8f49a20f34de28fbdfd98a16`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:765d324cea23c01aec39988ee88d32b078cb15ad81ea9146e0e67a767df23d14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144807065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597073bca689da61df4fe2a31d8dfa74d24882dc77cf541a822f521bcc522ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:15:16 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:15:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:15:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:35 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:15:35 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:35 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:15:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:15:58 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:15:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:15:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:15:58 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:15:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4959535079314d6423e05fc5045cc66b7d79c1ab39b658959115f767e3d19c91`  
		Last Modified: Wed, 28 Oct 2026 02:16:10 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec79b61653a32a93a5f3b92afb4d5ebaa918e15dc49874158ae50a0aa9887f51`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 17.7 MB (17731231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6dac1002d7c01891385ce7cdecaab93c5a0405f3652285f4ae044f2560d44d`  
		Last Modified: Wed, 28 Oct 2026 02:16:10 GMT  
		Size: 1.2 MB (1220565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b08379eafa9227f76171a27f425c99dcad524d13fc5d392ba0918c2b4194cd7`  
		Last Modified: Wed, 28 Oct 2026 02:16:12 GMT  
		Size: 45.6 MB (45633107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7548910b7f8c62029976f9b4bee48da6512bd9ef35866f673d789549204ecf`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44955f719ed6f33841d1cd9d4699aa43faf4e935cdfa746add76dc2e03f6690a`  
		Last Modified: Wed, 28 Oct 2026 02:16:13 GMT  
		Size: 52.1 MB (52081747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72196579804aac9c77be65dc90742c95ccd496f08f91fcd93be1c5f330dded4`  
		Last Modified: Wed, 28 Oct 2026 02:16:13 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:c3cde20c2cec91105aac190b024e261e87bc2c14bffd699e1eb6455e3627b75d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a292fc808f445bf283d92188cc8a34d58b3fd3ace2b59c1280e0a6fc08bf8770`

```dockerfile
```

-	Layers:
	-	`sha256:ef9b81f279cbaf08690bc94e2401ea3d6392a215ac4b8660bbf904a3ef3b5407`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 3.3 MB (3275195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e1f13e48a2e51751ea6949517e040f33c9b5c8af92d239a957fda3bdafd39e9`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ef6c53b34ec3ffc572f9d618a5e1bac47609d8437566dc5dd8defbd25f5a93c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147532104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4602cb81ede70f3f1570f9a667c55d42d3c28de8c78082797dea647995def324`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:24:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:25:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 09:26:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:26:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:26:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:26:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d942339307e684eeeaaaee3b183a6966ed0fa60b9f619ea7e60ffeb3e8ffb5f6`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fab2e67346874a5a110b04ac9492eaa485b3f410ae4763f9af67b925d8871`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 19.3 MB (19338623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a45666a9990c298a18c6e5ebf63f840b4919a90e12d19efaa5338b4ec6f49`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.2 MB (1225975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6e9fab2c0788c25ff6b4e1a5a9dab7d82ae9bbafe407500caa17f7be8a598e`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 42.8 MB (42790380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf452b9a41ce82c8f4c86c7c0a87c874c392e5f6740ea68bd45abef2372446b`  
		Last Modified: Wed, 28 Oct 2026 09:26:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2010f58396e976c119a29a2dfa6f79f49493f61d5d162f1a236a2a2be27bc754`  
		Last Modified: Wed, 28 Oct 2026 09:26:39 GMT  
		Size: 52.1 MB (52081825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a006e4afeb5b5c6d6dce863af53e9ad3c1d16edf8ac3b5459f15432311b69d`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21` - unknown; unknown

```console
$ docker pull cassandra@sha256:53878cf3a5a12cb25ab341747414f61d2b6c34241c418ffccf85fd830c42fcb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df0bd98d9b8623a1469e8ed2d5f5be74bb12cdbb27c7458c1ad0ef4f4a2d893`

```dockerfile
```

-	Layers:
	-	`sha256:ff04abecc158069562a237cbd1680b3dc282d864f0f5e0d02429cd33601c6d51`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 3.3 MB (3279108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2450922639b9c5880466635a57a7e29689b354ebd3492fc53336810dd56da693`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.0.21-bookworm`

```console
$ docker pull cassandra@sha256:8ae82b4f25af2774e52a2a36b010f593fe6cbae8be2bc75396d386c198c628f8
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
$ docker pull cassandra@sha256:ccc4e36fa5609682e31469181419e3992bbe80091c651b101bbfeed333d6f939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146898930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6b9e6f9eaabd8494c032150aa742dd54d3f17ea423ed48c497d9c60954a6a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:38 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:56 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:08:56 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:09:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:09:14 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:09:15 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:09:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151311acacbf5260598683b00e9fb87c5f200cf3fd3b4cbbb67670207c3fa64b`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009aa2480bce7a779b1849aa26c3915199c7ba1cfcb4010d901aba1776c6ef0b`  
		Last Modified: Wed, 28 Oct 2026 02:09:27 GMT  
		Size: 18.0 MB (17974855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c63b9eb0ee5bdceb6db9a3b671520a45f63d0e9fbc45aa8fe6940ffd73bca9`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 1.3 MB (1267033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f469702957cdc90bbbd858d93daa4390546f74baab94f08d3ddf00cc44dae4c`  
		Last Modified: Wed, 28 Oct 2026 02:09:28 GMT  
		Size: 47.3 MB (47325534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3438cabe49f5cf5f2e42870257047921cd46d69c0c4e83bc17c1adef573c61`  
		Last Modified: Wed, 28 Oct 2026 02:09:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92415c8be7b9b1343cf223dde38bf6282de94488d1341614670534a7077b2f1`  
		Last Modified: Wed, 28 Oct 2026 02:09:29 GMT  
		Size: 52.1 MB (52081607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971c1193959cd7cf07e5dff814ae2e34a328c7bb9b1f96985d5e60f8bc452217`  
		Last Modified: Wed, 28 Oct 2026 02:09:29 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:4fe504e9d37f3b4af3caaa4e9fe374ff1fd28e50214851d0c7106cefd422ecfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50db634524444e1dfa5ff4e56b394de7138b964e94f8c8348407898a92e43a50`

```dockerfile
```

-	Layers:
	-	`sha256:cbd94f25373b74ddbd484ef53ff181a6022701a2bd3ce256ff8b9f7ae8b19ac3`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 3.3 MB (3274860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e051bd273dd9f699506073baa00230c5abbde44a24fe348c6089b639347521db`  
		Last Modified: Wed, 28 Oct 2026 02:09:26 GMT  
		Size: 35.9 KB (35873 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:8858ea0b2fcf0f40398a11378b38f828fa632c33f937220fd447b241c7073c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138767863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ce4a5961628ea63e9886847b6c65b6af952c504b336f609da05d6010d0c87c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:58:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:58:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:58:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:58:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:58:27 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:58:27 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:58:27 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:58:27 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:58:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:48 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:48 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03b83a1472629f73b21fde58a572ac9adebe739b2d8102afe4bb0e5bc29f0a9`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7ea4cb9d1249590f97d93d09b100026981f681e65d3a80e0a877e720c243c4`  
		Last Modified: Wed, 28 Oct 2026 02:59:01 GMT  
		Size: 16.1 MB (16056233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abb9b9b06b2a7af9dd0e83dd3a90d5600097b85edbdb00076cf3e5be68050ca`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 1.2 MB (1233031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ef3c93b57beeea26e8923afefbfd9ed35847a71c5d59320fd8eb4f8a805bbf`  
		Last Modified: Wed, 28 Oct 2026 02:59:02 GMT  
		Size: 45.4 MB (45433509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0b4e6fb43fe7416a59b82c978a670b037941bd192a467d6e27318915495766`  
		Last Modified: Wed, 28 Oct 2026 02:59:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3cf521960c34fc1de92266301436e28f69d919fecc7f20ecd60e7148d2fba38`  
		Last Modified: Wed, 28 Oct 2026 02:59:03 GMT  
		Size: 52.1 MB (52081664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0afd0aaf7d2ea2903223b0c85efba0f39a3501d2782496c581a611a1cd87eb31`  
		Last Modified: Wed, 28 Oct 2026 02:59:02 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:7f365fab4781f043c447642a8647e5e5f821bfb40a5a369bc2e37dbca2be0888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3314601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46eae7b34537e3a7c59de111d6230e6657095cafe13a0d580691f5e6597be109`

```dockerfile
```

-	Layers:
	-	`sha256:3752f68188127a771139d78e1f41c2377ebe4aa570be430fc349f7346adc5638`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 3.3 MB (3278574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:589e3e9a85877f835ad68201d5e1391a071e268d8f49a20f34de28fbdfd98a16`  
		Last Modified: Wed, 28 Oct 2026 02:59:00 GMT  
		Size: 36.0 KB (36027 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:765d324cea23c01aec39988ee88d32b078cb15ad81ea9146e0e67a767df23d14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144807065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597073bca689da61df4fe2a31d8dfa74d24882dc77cf541a822f521bcc522ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:15:16 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:15:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:15:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:35 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:15:35 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:35 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 02:15:35 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 02:15:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:15:58 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:15:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:15:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:15:58 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:15:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4959535079314d6423e05fc5045cc66b7d79c1ab39b658959115f767e3d19c91`  
		Last Modified: Wed, 28 Oct 2026 02:16:10 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec79b61653a32a93a5f3b92afb4d5ebaa918e15dc49874158ae50a0aa9887f51`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 17.7 MB (17731231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6dac1002d7c01891385ce7cdecaab93c5a0405f3652285f4ae044f2560d44d`  
		Last Modified: Wed, 28 Oct 2026 02:16:10 GMT  
		Size: 1.2 MB (1220565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b08379eafa9227f76171a27f425c99dcad524d13fc5d392ba0918c2b4194cd7`  
		Last Modified: Wed, 28 Oct 2026 02:16:12 GMT  
		Size: 45.6 MB (45633107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7548910b7f8c62029976f9b4bee48da6512bd9ef35866f673d789549204ecf`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44955f719ed6f33841d1cd9d4699aa43faf4e935cdfa746add76dc2e03f6690a`  
		Last Modified: Wed, 28 Oct 2026 02:16:13 GMT  
		Size: 52.1 MB (52081747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72196579804aac9c77be65dc90742c95ccd496f08f91fcd93be1c5f330dded4`  
		Last Modified: Wed, 28 Oct 2026 02:16:13 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:c3cde20c2cec91105aac190b024e261e87bc2c14bffd699e1eb6455e3627b75d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a292fc808f445bf283d92188cc8a34d58b3fd3ace2b59c1280e0a6fc08bf8770`

```dockerfile
```

-	Layers:
	-	`sha256:ef9b81f279cbaf08690bc94e2401ea3d6392a215ac4b8660bbf904a3ef3b5407`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 3.3 MB (3275195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e1f13e48a2e51751ea6949517e040f33c9b5c8af92d239a957fda3bdafd39e9`  
		Last Modified: Wed, 28 Oct 2026 02:16:11 GMT  
		Size: 36.1 KB (36063 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.0.21-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ef6c53b34ec3ffc572f9d618a5e1bac47609d8437566dc5dd8defbd25f5a93c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147532104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4602cb81ede70f3f1570f9a667c55d42d3c28de8c78082797dea647995def324`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:24:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:25:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_VERSION=4.0.21
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_SHA512=4135fe4302fbd84a215b9d70daeca9c2fef1cfb5d5f6f198ecc57e258743c50a526cc6bc9e4a04e93239412483c1ba146e67e161d0037c40ed7740561b1551ef
# Wed, 28 Oct 2026 09:26:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:26:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:26:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:26:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d942339307e684eeeaaaee3b183a6966ed0fa60b9f619ea7e60ffeb3e8ffb5f6`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fab2e67346874a5a110b04ac9492eaa485b3f410ae4763f9af67b925d8871`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 19.3 MB (19338623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a45666a9990c298a18c6e5ebf63f840b4919a90e12d19efaa5338b4ec6f49`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.2 MB (1225975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6e9fab2c0788c25ff6b4e1a5a9dab7d82ae9bbafe407500caa17f7be8a598e`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 42.8 MB (42790380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf452b9a41ce82c8f4c86c7c0a87c874c392e5f6740ea68bd45abef2372446b`  
		Last Modified: Wed, 28 Oct 2026 09:26:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2010f58396e976c119a29a2dfa6f79f49493f61d5d162f1a236a2a2be27bc754`  
		Last Modified: Wed, 28 Oct 2026 09:26:39 GMT  
		Size: 52.1 MB (52081825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a006e4afeb5b5c6d6dce863af53e9ad3c1d16edf8ac3b5459f15432311b69d`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.0.21-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:53878cf3a5a12cb25ab341747414f61d2b6c34241c418ffccf85fd830c42fcb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3315043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df0bd98d9b8623a1469e8ed2d5f5be74bb12cdbb27c7458c1ad0ef4f4a2d893`

```dockerfile
```

-	Layers:
	-	`sha256:ff04abecc158069562a237cbd1680b3dc282d864f0f5e0d02429cd33601c6d51`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 3.3 MB (3279108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2450922639b9c5880466635a57a7e29689b354ebd3492fc53336810dd56da693`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 35.9 KB (35935 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1`

```console
$ docker pull cassandra@sha256:b877532a79865d0212c860352bb9c3b0be97db9628a662ea815fb90ea4033158
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
$ docker pull cassandra@sha256:57b251cede6ebb8402c9cfc8ee8931438086ce2640a5657e80ecebc9f4cf3bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149019639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40516ee152ef61655ef539671a2f59d3bb9ae115a2c8dd4992be227b3ae83b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3e28e5d774f0be3d153daed05f9ced683fc6fa880690346626795c628ccead`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858c15b347121edffe2e35851a1308d8be578420af7eb86b9c7d3b846a2cf22b`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 18.0 MB (17974936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6174d3951eeddc94ccad55c53bbe12880040ce9451e06b9114834ec4354099`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.3 MB (1267037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9818e0023872cd50d2ed7a2d93ffd7093cdedd0c128daaec3ceb015af50ce6fa`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 47.3 MB (47325526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c760519817e9d3cbe1f72835aaf10cd3a500cb3af6be1556af04b632639e41`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21a8b0e9b9eb4769f0e3764a4fe603d2a07bdfe4d8d86fbdd4e4d11239765a9`  
		Last Modified: Wed, 28 Oct 2026 02:09:14 GMT  
		Size: 54.2 MB (54202241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf226d0165a6845136ec4b742802396f383abdb61cba69953385fb3389888d9f`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:dd950e806481b2f14ab74cc7a081397ad0fd3c0790860947195386ec50de2e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848b0b867574ec55307070bf25ac3f2b9dda42360286d199f5001d96c277e542`

```dockerfile
```

-	Layers:
	-	`sha256:28a8f6c38a4f86d71b8d80e6da1d0cbf7714b2f1170a3e49411cd83a3acd1c20`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:312c79ed452f8620fa1656fa12598738c8e9afc59919f72a61bfb607860d6ec5`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:9557a0997e04e275b6bf87cd48654bf2488f4ad17d70878335dc5967af5510f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140888224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e09761e042a4b789dbd5b333da9a453f8a937f5c4014a56a814a61ba55ffc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:57:34 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:58:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e40146745860fcdea328173eb2df7b2ccd49c138cabab1b1523b90fcb68fa8`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7eba274dc6da4feb7e51c67226d482bf5ab888e3f8cb4d65659d3dd99f224a`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 16.1 MB (16056073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883af5f0635fadcf5ccba5a689657f2ee0fe38947ae308054aadd7b91255fdd9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.2 MB (1233016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c65d08ecc9479a7344c74a7927780df49ca3765276a7e56f078fec114058d0`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 45.4 MB (45433533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5756f5011497ed2d1d0da86109c3efabe6b9d765ea7f6d80a236538407fbfc`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1fb10f654ec319dca61127a03457a3fa7cda397f3d0d78a2b6422af6b4e4cf`  
		Last Modified: Wed, 28 Oct 2026 02:58:34 GMT  
		Size: 54.2 MB (54202173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13680d31c855a92077389cdc9a3c926d153b76ca7dab9d3b7637cb4351a8819`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:3e2a3451bc6eea175531f32608f1b845ad158c0a3d046e2bf0a5e05c56abfd2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0258b44ee7f6269531745bb7433ec9db89a25a5ae5d3bacc6f8a1ea3e3bd2248`

```dockerfile
```

-	Layers:
	-	`sha256:5d8c7ac1b0a5e810fb4f7cf436f5a3627f2a80cacdc620a269e6c59d2df59aa6`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4daca554306cc08e515134d8f19cb0de7f6961f7d5d88467eefc91463c769064`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8758a2293fa114e96d8b3558c30310b7860fe977e7abc1d290d2dd3769e02aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146927705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed4d6eefb9273eba45601f5060f2d470180bcf7d4e47488dc482a7b7c5f81bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:14:48 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:15:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:15:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:15:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:15:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:15:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d0a37399711ea2c160fc5b3b0c0cc6330bcf7b668573484d4f836c6ec771f`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ad694628fcb7a1704f557a0549cca57d733f67d153ee99b65e6044ae5704c6`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 17.7 MB (17731407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e5a14bbe10da9ce50a422512d9db0fbc7baaa255e791aa205200fdfaf063d1`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.2 MB (1220554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5ca4d32e7963333b0cfb3cbf417205c070cfcbcbb319fe4adccbfb6e1fafd3`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 45.6 MB (45633114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d44be4ab1a0031a3073219d9067b8fc1a2ffcd5ac9f760073837d1b55fadec`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e3e670e63f439bd688e7acff8d21dd49f1474def1a1b7fcb81481e28e080e6`  
		Last Modified: Wed, 28 Oct 2026 02:15:40 GMT  
		Size: 54.2 MB (54202221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503b522f52cc5a289cf681555db202fca0132a06a268532c6bea32790ba83605`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:0c6afebfa7b6dc2937f348f8b1ca911eafcc171e01b95dcdee4e6719ef4605e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587902335f486ea62b0a29dff7e4b07d6c7ee10061bf0ce77b40c2ba4849eaa6`

```dockerfile
```

-	Layers:
	-	`sha256:8b9280d0bcca236637d349132e209b25d5b98a3e404f95259eb22913dc750f1e`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26c70d4003f39245097abc49e202b64d6cf5dda8bc6a77ec5b70f7219fde00ab`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1` - linux; ppc64le

```console
$ docker pull cassandra@sha256:db3f33dd81a388fb03d96eaf534c423b07ea686a72457bf472568904722a6778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.7 MB (149652691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a6aa68102c73ae6132feeafd124026012a819cd7183736f135dda867c3d179`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:24:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:25:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 09:26:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:26:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:26:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:26:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d942339307e684eeeaaaee3b183a6966ed0fa60b9f619ea7e60ffeb3e8ffb5f6`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fab2e67346874a5a110b04ac9492eaa485b3f410ae4763f9af67b925d8871`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 19.3 MB (19338623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a45666a9990c298a18c6e5ebf63f840b4919a90e12d19efaa5338b4ec6f49`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.2 MB (1225975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6e9fab2c0788c25ff6b4e1a5a9dab7d82ae9bbafe407500caa17f7be8a598e`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 42.8 MB (42790380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf452b9a41ce82c8f4c86c7c0a87c874c392e5f6740ea68bd45abef2372446b`  
		Last Modified: Wed, 28 Oct 2026 09:26:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9474c95fad041ec9ebcb14eec06e0d0fa4f69b4c704b1f598f9109c6577043b4`  
		Last Modified: Wed, 28 Oct 2026 09:26:39 GMT  
		Size: 54.2 MB (54202413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbf56bd2329e75950ec56c75ad8a6d7bb9e37f071184011f5604368046be9a2`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1` - unknown; unknown

```console
$ docker pull cassandra@sha256:26d0905df9bb50de924c4e3eae8ca04afb833a668a74087e2b7def3a2c9c99f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2653a41c01c7782a7112ad0a40b08882a9384aff6f7f5997a8c723b95f3875bf`

```dockerfile
```

-	Layers:
	-	`sha256:f2d3578a249191b65c118e8bcd3cc54b7873a9f7ee0cfb565625b3e8cbfae027`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d63647197065a6ab059625114538bf5136f433dd4d7ded9f5aa48343b93dbdd`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1-bookworm`

```console
$ docker pull cassandra@sha256:b877532a79865d0212c860352bb9c3b0be97db9628a662ea815fb90ea4033158
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
$ docker pull cassandra@sha256:57b251cede6ebb8402c9cfc8ee8931438086ce2640a5657e80ecebc9f4cf3bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149019639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40516ee152ef61655ef539671a2f59d3bb9ae115a2c8dd4992be227b3ae83b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3e28e5d774f0be3d153daed05f9ced683fc6fa880690346626795c628ccead`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858c15b347121edffe2e35851a1308d8be578420af7eb86b9c7d3b846a2cf22b`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 18.0 MB (17974936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6174d3951eeddc94ccad55c53bbe12880040ce9451e06b9114834ec4354099`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.3 MB (1267037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9818e0023872cd50d2ed7a2d93ffd7093cdedd0c128daaec3ceb015af50ce6fa`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 47.3 MB (47325526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c760519817e9d3cbe1f72835aaf10cd3a500cb3af6be1556af04b632639e41`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21a8b0e9b9eb4769f0e3764a4fe603d2a07bdfe4d8d86fbdd4e4d11239765a9`  
		Last Modified: Wed, 28 Oct 2026 02:09:14 GMT  
		Size: 54.2 MB (54202241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf226d0165a6845136ec4b742802396f383abdb61cba69953385fb3389888d9f`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:dd950e806481b2f14ab74cc7a081397ad0fd3c0790860947195386ec50de2e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848b0b867574ec55307070bf25ac3f2b9dda42360286d199f5001d96c277e542`

```dockerfile
```

-	Layers:
	-	`sha256:28a8f6c38a4f86d71b8d80e6da1d0cbf7714b2f1170a3e49411cd83a3acd1c20`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:312c79ed452f8620fa1656fa12598738c8e9afc59919f72a61bfb607860d6ec5`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:9557a0997e04e275b6bf87cd48654bf2488f4ad17d70878335dc5967af5510f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140888224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e09761e042a4b789dbd5b333da9a453f8a937f5c4014a56a814a61ba55ffc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:57:34 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:58:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e40146745860fcdea328173eb2df7b2ccd49c138cabab1b1523b90fcb68fa8`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7eba274dc6da4feb7e51c67226d482bf5ab888e3f8cb4d65659d3dd99f224a`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 16.1 MB (16056073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883af5f0635fadcf5ccba5a689657f2ee0fe38947ae308054aadd7b91255fdd9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.2 MB (1233016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c65d08ecc9479a7344c74a7927780df49ca3765276a7e56f078fec114058d0`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 45.4 MB (45433533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5756f5011497ed2d1d0da86109c3efabe6b9d765ea7f6d80a236538407fbfc`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1fb10f654ec319dca61127a03457a3fa7cda397f3d0d78a2b6422af6b4e4cf`  
		Last Modified: Wed, 28 Oct 2026 02:58:34 GMT  
		Size: 54.2 MB (54202173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13680d31c855a92077389cdc9a3c926d153b76ca7dab9d3b7637cb4351a8819`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:3e2a3451bc6eea175531f32608f1b845ad158c0a3d046e2bf0a5e05c56abfd2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0258b44ee7f6269531745bb7433ec9db89a25a5ae5d3bacc6f8a1ea3e3bd2248`

```dockerfile
```

-	Layers:
	-	`sha256:5d8c7ac1b0a5e810fb4f7cf436f5a3627f2a80cacdc620a269e6c59d2df59aa6`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4daca554306cc08e515134d8f19cb0de7f6961f7d5d88467eefc91463c769064`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8758a2293fa114e96d8b3558c30310b7860fe977e7abc1d290d2dd3769e02aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146927705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed4d6eefb9273eba45601f5060f2d470180bcf7d4e47488dc482a7b7c5f81bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:14:48 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:15:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:15:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:15:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:15:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:15:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d0a37399711ea2c160fc5b3b0c0cc6330bcf7b668573484d4f836c6ec771f`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ad694628fcb7a1704f557a0549cca57d733f67d153ee99b65e6044ae5704c6`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 17.7 MB (17731407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e5a14bbe10da9ce50a422512d9db0fbc7baaa255e791aa205200fdfaf063d1`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.2 MB (1220554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5ca4d32e7963333b0cfb3cbf417205c070cfcbcbb319fe4adccbfb6e1fafd3`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 45.6 MB (45633114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d44be4ab1a0031a3073219d9067b8fc1a2ffcd5ac9f760073837d1b55fadec`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e3e670e63f439bd688e7acff8d21dd49f1474def1a1b7fcb81481e28e080e6`  
		Last Modified: Wed, 28 Oct 2026 02:15:40 GMT  
		Size: 54.2 MB (54202221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503b522f52cc5a289cf681555db202fca0132a06a268532c6bea32790ba83605`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:0c6afebfa7b6dc2937f348f8b1ca911eafcc171e01b95dcdee4e6719ef4605e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587902335f486ea62b0a29dff7e4b07d6c7ee10061bf0ce77b40c2ba4849eaa6`

```dockerfile
```

-	Layers:
	-	`sha256:8b9280d0bcca236637d349132e209b25d5b98a3e404f95259eb22913dc750f1e`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26c70d4003f39245097abc49e202b64d6cf5dda8bc6a77ec5b70f7219fde00ab`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:db3f33dd81a388fb03d96eaf534c423b07ea686a72457bf472568904722a6778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.7 MB (149652691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a6aa68102c73ae6132feeafd124026012a819cd7183736f135dda867c3d179`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:24:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:25:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 09:26:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:26:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:26:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:26:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d942339307e684eeeaaaee3b183a6966ed0fa60b9f619ea7e60ffeb3e8ffb5f6`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fab2e67346874a5a110b04ac9492eaa485b3f410ae4763f9af67b925d8871`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 19.3 MB (19338623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a45666a9990c298a18c6e5ebf63f840b4919a90e12d19efaa5338b4ec6f49`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.2 MB (1225975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6e9fab2c0788c25ff6b4e1a5a9dab7d82ae9bbafe407500caa17f7be8a598e`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 42.8 MB (42790380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf452b9a41ce82c8f4c86c7c0a87c874c392e5f6740ea68bd45abef2372446b`  
		Last Modified: Wed, 28 Oct 2026 09:26:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9474c95fad041ec9ebcb14eec06e0d0fa4f69b4c704b1f598f9109c6577043b4`  
		Last Modified: Wed, 28 Oct 2026 09:26:39 GMT  
		Size: 54.2 MB (54202413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbf56bd2329e75950ec56c75ad8a6d7bb9e37f071184011f5604368046be9a2`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:26d0905df9bb50de924c4e3eae8ca04afb833a668a74087e2b7def3a2c9c99f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2653a41c01c7782a7112ad0a40b08882a9384aff6f7f5997a8c723b95f3875bf`

```dockerfile
```

-	Layers:
	-	`sha256:f2d3578a249191b65c118e8bcd3cc54b7873a9f7ee0cfb565625b3e8cbfae027`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d63647197065a6ab059625114538bf5136f433dd4d7ded9f5aa48343b93dbdd`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.12`

```console
$ docker pull cassandra@sha256:b877532a79865d0212c860352bb9c3b0be97db9628a662ea815fb90ea4033158
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
$ docker pull cassandra@sha256:57b251cede6ebb8402c9cfc8ee8931438086ce2640a5657e80ecebc9f4cf3bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149019639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40516ee152ef61655ef539671a2f59d3bb9ae115a2c8dd4992be227b3ae83b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3e28e5d774f0be3d153daed05f9ced683fc6fa880690346626795c628ccead`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858c15b347121edffe2e35851a1308d8be578420af7eb86b9c7d3b846a2cf22b`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 18.0 MB (17974936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6174d3951eeddc94ccad55c53bbe12880040ce9451e06b9114834ec4354099`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.3 MB (1267037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9818e0023872cd50d2ed7a2d93ffd7093cdedd0c128daaec3ceb015af50ce6fa`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 47.3 MB (47325526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c760519817e9d3cbe1f72835aaf10cd3a500cb3af6be1556af04b632639e41`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21a8b0e9b9eb4769f0e3764a4fe603d2a07bdfe4d8d86fbdd4e4d11239765a9`  
		Last Modified: Wed, 28 Oct 2026 02:09:14 GMT  
		Size: 54.2 MB (54202241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf226d0165a6845136ec4b742802396f383abdb61cba69953385fb3389888d9f`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:dd950e806481b2f14ab74cc7a081397ad0fd3c0790860947195386ec50de2e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848b0b867574ec55307070bf25ac3f2b9dda42360286d199f5001d96c277e542`

```dockerfile
```

-	Layers:
	-	`sha256:28a8f6c38a4f86d71b8d80e6da1d0cbf7714b2f1170a3e49411cd83a3acd1c20`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:312c79ed452f8620fa1656fa12598738c8e9afc59919f72a61bfb607860d6ec5`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:9557a0997e04e275b6bf87cd48654bf2488f4ad17d70878335dc5967af5510f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140888224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e09761e042a4b789dbd5b333da9a453f8a937f5c4014a56a814a61ba55ffc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:57:34 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:58:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e40146745860fcdea328173eb2df7b2ccd49c138cabab1b1523b90fcb68fa8`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7eba274dc6da4feb7e51c67226d482bf5ab888e3f8cb4d65659d3dd99f224a`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 16.1 MB (16056073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883af5f0635fadcf5ccba5a689657f2ee0fe38947ae308054aadd7b91255fdd9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.2 MB (1233016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c65d08ecc9479a7344c74a7927780df49ca3765276a7e56f078fec114058d0`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 45.4 MB (45433533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5756f5011497ed2d1d0da86109c3efabe6b9d765ea7f6d80a236538407fbfc`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1fb10f654ec319dca61127a03457a3fa7cda397f3d0d78a2b6422af6b4e4cf`  
		Last Modified: Wed, 28 Oct 2026 02:58:34 GMT  
		Size: 54.2 MB (54202173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13680d31c855a92077389cdc9a3c926d153b76ca7dab9d3b7637cb4351a8819`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:3e2a3451bc6eea175531f32608f1b845ad158c0a3d046e2bf0a5e05c56abfd2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0258b44ee7f6269531745bb7433ec9db89a25a5ae5d3bacc6f8a1ea3e3bd2248`

```dockerfile
```

-	Layers:
	-	`sha256:5d8c7ac1b0a5e810fb4f7cf436f5a3627f2a80cacdc620a269e6c59d2df59aa6`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4daca554306cc08e515134d8f19cb0de7f6961f7d5d88467eefc91463c769064`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8758a2293fa114e96d8b3558c30310b7860fe977e7abc1d290d2dd3769e02aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146927705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed4d6eefb9273eba45601f5060f2d470180bcf7d4e47488dc482a7b7c5f81bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:14:48 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:15:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:15:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:15:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:15:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:15:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d0a37399711ea2c160fc5b3b0c0cc6330bcf7b668573484d4f836c6ec771f`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ad694628fcb7a1704f557a0549cca57d733f67d153ee99b65e6044ae5704c6`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 17.7 MB (17731407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e5a14bbe10da9ce50a422512d9db0fbc7baaa255e791aa205200fdfaf063d1`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.2 MB (1220554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5ca4d32e7963333b0cfb3cbf417205c070cfcbcbb319fe4adccbfb6e1fafd3`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 45.6 MB (45633114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d44be4ab1a0031a3073219d9067b8fc1a2ffcd5ac9f760073837d1b55fadec`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e3e670e63f439bd688e7acff8d21dd49f1474def1a1b7fcb81481e28e080e6`  
		Last Modified: Wed, 28 Oct 2026 02:15:40 GMT  
		Size: 54.2 MB (54202221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503b522f52cc5a289cf681555db202fca0132a06a268532c6bea32790ba83605`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:0c6afebfa7b6dc2937f348f8b1ca911eafcc171e01b95dcdee4e6719ef4605e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587902335f486ea62b0a29dff7e4b07d6c7ee10061bf0ce77b40c2ba4849eaa6`

```dockerfile
```

-	Layers:
	-	`sha256:8b9280d0bcca236637d349132e209b25d5b98a3e404f95259eb22913dc750f1e`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26c70d4003f39245097abc49e202b64d6cf5dda8bc6a77ec5b70f7219fde00ab`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12` - linux; ppc64le

```console
$ docker pull cassandra@sha256:db3f33dd81a388fb03d96eaf534c423b07ea686a72457bf472568904722a6778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.7 MB (149652691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a6aa68102c73ae6132feeafd124026012a819cd7183736f135dda867c3d179`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:24:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:25:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 09:26:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:26:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:26:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:26:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d942339307e684eeeaaaee3b183a6966ed0fa60b9f619ea7e60ffeb3e8ffb5f6`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fab2e67346874a5a110b04ac9492eaa485b3f410ae4763f9af67b925d8871`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 19.3 MB (19338623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a45666a9990c298a18c6e5ebf63f840b4919a90e12d19efaa5338b4ec6f49`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.2 MB (1225975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6e9fab2c0788c25ff6b4e1a5a9dab7d82ae9bbafe407500caa17f7be8a598e`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 42.8 MB (42790380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf452b9a41ce82c8f4c86c7c0a87c874c392e5f6740ea68bd45abef2372446b`  
		Last Modified: Wed, 28 Oct 2026 09:26:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9474c95fad041ec9ebcb14eec06e0d0fa4f69b4c704b1f598f9109c6577043b4`  
		Last Modified: Wed, 28 Oct 2026 09:26:39 GMT  
		Size: 54.2 MB (54202413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbf56bd2329e75950ec56c75ad8a6d7bb9e37f071184011f5604368046be9a2`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12` - unknown; unknown

```console
$ docker pull cassandra@sha256:26d0905df9bb50de924c4e3eae8ca04afb833a668a74087e2b7def3a2c9c99f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2653a41c01c7782a7112ad0a40b08882a9384aff6f7f5997a8c723b95f3875bf`

```dockerfile
```

-	Layers:
	-	`sha256:f2d3578a249191b65c118e8bcd3cc54b7873a9f7ee0cfb565625b3e8cbfae027`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d63647197065a6ab059625114538bf5136f433dd4d7ded9f5aa48343b93dbdd`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:4.1.12-bookworm`

```console
$ docker pull cassandra@sha256:b877532a79865d0212c860352bb9c3b0be97db9628a662ea815fb90ea4033158
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
$ docker pull cassandra@sha256:57b251cede6ebb8402c9cfc8ee8931438086ce2640a5657e80ecebc9f4cf3bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149019639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40516ee152ef61655ef539671a2f59d3bb9ae115a2c8dd4992be227b3ae83b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:41 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:41 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:08:41 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:08:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:59 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3e28e5d774f0be3d153daed05f9ced683fc6fa880690346626795c628ccead`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858c15b347121edffe2e35851a1308d8be578420af7eb86b9c7d3b846a2cf22b`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 18.0 MB (17974936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6174d3951eeddc94ccad55c53bbe12880040ce9451e06b9114834ec4354099`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 1.3 MB (1267037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9818e0023872cd50d2ed7a2d93ffd7093cdedd0c128daaec3ceb015af50ce6fa`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 47.3 MB (47325526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c760519817e9d3cbe1f72835aaf10cd3a500cb3af6be1556af04b632639e41`  
		Last Modified: Wed, 28 Oct 2026 02:09:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21a8b0e9b9eb4769f0e3764a4fe603d2a07bdfe4d8d86fbdd4e4d11239765a9`  
		Last Modified: Wed, 28 Oct 2026 02:09:14 GMT  
		Size: 54.2 MB (54202241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf226d0165a6845136ec4b742802396f383abdb61cba69953385fb3389888d9f`  
		Last Modified: Wed, 28 Oct 2026 02:09:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:dd950e806481b2f14ab74cc7a081397ad0fd3c0790860947195386ec50de2e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848b0b867574ec55307070bf25ac3f2b9dda42360286d199f5001d96c277e542`

```dockerfile
```

-	Layers:
	-	`sha256:28a8f6c38a4f86d71b8d80e6da1d0cbf7714b2f1170a3e49411cd83a3acd1c20`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 3.3 MB (3281927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:312c79ed452f8620fa1656fa12598738c8e9afc59919f72a61bfb607860d6ec5`  
		Last Modified: Wed, 28 Oct 2026 02:09:11 GMT  
		Size: 36.5 KB (36479 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12-bookworm` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:9557a0997e04e275b6bf87cd48654bf2488f4ad17d70878335dc5967af5510f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140888224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e09761e042a4b789dbd5b333da9a453f8a937f5c4014a56a814a61ba55ffc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:57:34 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:54 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:54 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:57:54 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:58:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:19 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e40146745860fcdea328173eb2df7b2ccd49c138cabab1b1523b90fcb68fa8`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7eba274dc6da4feb7e51c67226d482bf5ab888e3f8cb4d65659d3dd99f224a`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 16.1 MB (16056073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883af5f0635fadcf5ccba5a689657f2ee0fe38947ae308054aadd7b91255fdd9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 1.2 MB (1233016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c65d08ecc9479a7344c74a7927780df49ca3765276a7e56f078fec114058d0`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 45.4 MB (45433533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5756f5011497ed2d1d0da86109c3efabe6b9d765ea7f6d80a236538407fbfc`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1fb10f654ec319dca61127a03457a3fa7cda397f3d0d78a2b6422af6b4e4cf`  
		Last Modified: Wed, 28 Oct 2026 02:58:34 GMT  
		Size: 54.2 MB (54202173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13680d31c855a92077389cdc9a3c926d153b76ca7dab9d3b7637cb4351a8819`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:3e2a3451bc6eea175531f32608f1b845ad158c0a3d046e2bf0a5e05c56abfd2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0258b44ee7f6269531745bb7433ec9db89a25a5ae5d3bacc6f8a1ea3e3bd2248`

```dockerfile
```

-	Layers:
	-	`sha256:5d8c7ac1b0a5e810fb4f7cf436f5a3627f2a80cacdc620a269e6c59d2df59aa6`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 3.3 MB (3285657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4daca554306cc08e515134d8f19cb0de7f6961f7d5d88467eefc91463c769064`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 36.6 KB (36649 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12-bookworm` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8758a2293fa114e96d8b3558c30310b7860fe977e7abc1d290d2dd3769e02aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146927705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed4d6eefb9273eba45601f5060f2d470180bcf7d4e47488dc482a7b7c5f81bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:14:48 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:15:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:15:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 02:15:04 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 02:15:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:15:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:15:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:15:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:15:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d0a37399711ea2c160fc5b3b0c0cc6330bcf7b668573484d4f836c6ec771f`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ad694628fcb7a1704f557a0549cca57d733f67d153ee99b65e6044ae5704c6`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 17.7 MB (17731407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e5a14bbe10da9ce50a422512d9db0fbc7baaa255e791aa205200fdfaf063d1`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 1.2 MB (1220554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5ca4d32e7963333b0cfb3cbf417205c070cfcbcbb319fe4adccbfb6e1fafd3`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 45.6 MB (45633114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d44be4ab1a0031a3073219d9067b8fc1a2ffcd5ac9f760073837d1b55fadec`  
		Last Modified: Wed, 28 Oct 2026 02:15:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e3e670e63f439bd688e7acff8d21dd49f1474def1a1b7fcb81481e28e080e6`  
		Last Modified: Wed, 28 Oct 2026 02:15:40 GMT  
		Size: 54.2 MB (54202221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503b522f52cc5a289cf681555db202fca0132a06a268532c6bea32790ba83605`  
		Last Modified: Wed, 28 Oct 2026 02:15:39 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:0c6afebfa7b6dc2937f348f8b1ca911eafcc171e01b95dcdee4e6719ef4605e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3318978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587902335f486ea62b0a29dff7e4b07d6c7ee10061bf0ce77b40c2ba4849eaa6`

```dockerfile
```

-	Layers:
	-	`sha256:8b9280d0bcca236637d349132e209b25d5b98a3e404f95259eb22913dc750f1e`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 3.3 MB (3282286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26c70d4003f39245097abc49e202b64d6cf5dda8bc6a77ec5b70f7219fde00ab`  
		Last Modified: Wed, 28 Oct 2026 02:15:37 GMT  
		Size: 36.7 KB (36692 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:4.1.12-bookworm` - linux; ppc64le

```console
$ docker pull cassandra@sha256:db3f33dd81a388fb03d96eaf534c423b07ea686a72457bf472568904722a6778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.7 MB (149652691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a6aa68102c73ae6132feeafd124026012a819cd7183736f135dda867c3d179`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:24:37 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:25:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:25:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:25:24 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:25:24 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_VERSION=4.1.12
# Wed, 28 Oct 2026 09:25:24 GMT
ENV CASSANDRA_SHA512=cea0acc8aa52b44798dc45ff5edc26f910f5e4025f40d5f4a3b6728ac8d2aaacf9da0aebeb997c0d0039e7034a9478b9af57e1546b45428d7a7638fc61e75dc8
# Wed, 28 Oct 2026 09:26:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:26:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:26:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:26:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:26:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d942339307e684eeeaaaee3b183a6966ed0fa60b9f619ea7e60ffeb3e8ffb5f6`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280fab2e67346874a5a110b04ac9492eaa485b3f410ae4763f9af67b925d8871`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 19.3 MB (19338623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a45666a9990c298a18c6e5ebf63f840b4919a90e12d19efaa5338b4ec6f49`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 1.2 MB (1225975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6e9fab2c0788c25ff6b4e1a5a9dab7d82ae9bbafe407500caa17f7be8a598e`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 42.8 MB (42790380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf452b9a41ce82c8f4c86c7c0a87c874c392e5f6740ea68bd45abef2372446b`  
		Last Modified: Wed, 28 Oct 2026 09:26:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9474c95fad041ec9ebcb14eec06e0d0fa4f69b4c704b1f598f9109c6577043b4`  
		Last Modified: Wed, 28 Oct 2026 09:26:39 GMT  
		Size: 54.2 MB (54202413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbf56bd2329e75950ec56c75ad8a6d7bb9e37f071184011f5604368046be9a2`  
		Last Modified: Wed, 28 Oct 2026 09:26:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:4.1.12-bookworm` - unknown; unknown

```console
$ docker pull cassandra@sha256:26d0905df9bb50de924c4e3eae8ca04afb833a668a74087e2b7def3a2c9c99f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2653a41c01c7782a7112ad0a40b08882a9384aff6f7f5997a8c723b95f3875bf`

```dockerfile
```

-	Layers:
	-	`sha256:f2d3578a249191b65c118e8bcd3cc54b7873a9f7ee0cfb565625b3e8cbfae027`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 3.3 MB (3286187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d63647197065a6ab059625114538bf5136f433dd4d7ded9f5aa48343b93dbdd`  
		Last Modified: Wed, 28 Oct 2026 09:26:36 GMT  
		Size: 36.6 KB (36553 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5`

```console
$ docker pull cassandra@sha256:ae4cc2e4b62a5b2a2dd1645ba827cb50c589cc7531bcffe8b8b60ac3b1adc79d
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
$ docker pull cassandra@sha256:b85d75da9e1069317540e64b70a7376e633917c40288c93e2514eeadf8b7020b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168277802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc06f68aeda10243280761b99da9ec3e50cf96feed5395f5174dfabfb582a4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:07:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:08:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe9a0916b35845a1baf84968e3f8cc2db8a14b1dcb4d7096d4ddf41e64815c5`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75692ebe810f9e2db733af0606c1cd3dbc9d456228335381c07429966e4ed9a`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 15.7 MB (15652764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bdde260d91a2683389ee0e0c285a28913c3f772e7a769784cf0acd0c4824ae`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.3 MB (1310354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12029290fb828bafd3371362d165101048ca7bea528e5baca7662ef58f92e80`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 47.5 MB (47510273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc90555bc88141ab6217610243bbfc3b8b29ddeb44b28e755a8182d169f27af`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708829c65612b5ed51f6925248ed94f5f88c51919ad5fb23c7c09feabb9dce55`  
		Last Modified: Wed, 28 Oct 2026 02:08:52 GMT  
		Size: 73.9 MB (73946713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae994cbad04632cb53fb9cf324d7888bdedde5673008cb3128d0157766a81ca6`  
		Last Modified: Wed, 28 Oct 2026 02:08:51 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:97f71933cf8c7c2e6b0272cd17a896b660506f7525040bb23d7b67ce6dd5c6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cb035435b9c6708ced38f06f9e6921bc6b7ee3f6c1d6a321915633c02b6aff`

```dockerfile
```

-	Layers:
	-	`sha256:a141bdcba853eeab36704da5c4b8b89f0ec66d51039e4c699f1e6a106ce9164f`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b301670d807282d2e02e9660a824c0d89d3da5fc7b3d10026125803b23dc634`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ad1be4557562a88d95020d1e26a1f3350d20c677bdb80babd79219e71201bb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160992227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00d7a0fbe8767cdfcaa68f56dea63a210410db730eefb8ff4bf6666a67c1929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:57:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:58:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad70a5314a80785fb98edbb058e0901842aefeae6a5b74b22dccbda68c70fe9`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf95458dce983adb3d879fdeac78a04c1508b97be973a7b598609cee7b8e8a9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 14.4 MB (14402338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22038e546bdbade60f8bc6cba389da029fc75ba776ef3c6949c3613c430ad88`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.3 MB (1275120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8541d41af6beb679398b27f8ab028d8acc96ccc4523158a5566bf6d7b4d1c1`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 45.1 MB (45093435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b21c4e39762be3d917a2b4f88230251e372b4c3711c20a0b0a888e28bbbc533`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04e925d5a0c2c1150997c8b85f4f7d42f55b0d4c7cc462b21f4a9ea1c8bea80`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 73.9 MB (73946703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98ce2d7f31062b457aa814106248114081df4f265c01cadfa9391368ac631f`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:834f9dc2ba32b25bc4afc6991e2d36d290d84d559c11ce853a828db364889ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f62ac5eae2adc17ae8bef058c8a82cce79c9e03bf420bf0b2cea0ad445b7764`

```dockerfile
```

-	Layers:
	-	`sha256:f384182381eb55a7b2ac5f48adab23edcb5fc0a52bfacc30fc06161583f3f06c`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e8d754239bf3ba90faac757f6d9cb47b135cf2d3b9c351441ca1016cd7f1f2f`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:9e5e347403d3ae9558b8b801b8a3a79ba2fe646738a2b1fb37ca1bf3cc5a1902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167963690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7656d6589457a2ec96e8fee1576f99de5babfa1d21dc5d10c176d1a506d9bd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:14:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:14:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:14:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:14:54 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:14:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e111b107e656c4a9d72ab57d9c542e12d2d90dbb854b20fe7ff08d09d60ef8`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f002cc8f70f330d7f6886238e1b077ebd3725c588c339f7faa4f56116d66bb`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 15.5 MB (15542063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b1ca0ee9b5a77626cf85688b53a8920fc1129ea860b0273b6c4441a37c287`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.3 MB (1262311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d4eb46168b163c28c4841e4a439f9101faada48d0139534f0abf178bfdec49`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 47.0 MB (46996586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a42a5fbe7fee540e71df5325f3819efedcf60ede56002e1347631264c6d3f7`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aada46ab6b7cb9c6fdaec8d6bb0d0e2824caa9479871d8f41372a0cfd806fc3`  
		Last Modified: Wed, 28 Oct 2026 02:15:11 GMT  
		Size: 73.9 MB (73946775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da986d836f19f8d9b3324a5ad7f79d734d28a3f220534654f83ceab5c53439f0`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:7282fe86e62c202b76c1a25c9d6a07a9856c2798b9450c79ef3bbbf30e69ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034fe404158c11e547206c1a321f133cfcbe043f73d325a79f420efe7b760f41`

```dockerfile
```

-	Layers:
	-	`sha256:1421d1f678e6175576d294bead88459844ad25a48f41fd7c6e413753549e957a`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28455c561e453e67d54b0ede238b926ed577e7db4b64f4dd4fed2d5d209b837`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b75d2f96f285499f6644f187e4d1eb4223d207ddd7c8f602c5a51951d62be1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172966789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adfd11f87144bc6478351f474b96bb6825b4e25ecacd7c49fa4d3ad8c98b546`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb63e0c97dfe3db21dcec6e13e51c2411d81adc278b2d15646ab0834b338791`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 47.4 MB (47421928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2164af09dbcbad966530cf0ec59704f1cd9ee7d5b5c65a86bba4ed267ea1f`  
		Last Modified: Wed, 28 Oct 2026 09:24:04 GMT  
		Size: 73.9 MB (73946902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb195d30efbfa5be04bf536cfaeea27b117cfdb75a77a550bae91f8bf420c8`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:910c6e65b55ba20639ada345b327e1e51fc0666b96bc1b88ee3a318e1c3ba65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea3543248abd3f78032c6055f7b1a4b30a88d29f97cbd0a1c1628c6f3dfd138`

```dockerfile
```

-	Layers:
	-	`sha256:d1ae8289684d8ecd7ac6811e6fdbfd5e606d1e7eb44ffaed790a9b47e33cc627`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a71a14576d658d5eb9809af36e925cc4a11781605b5e0dcf638ef2ae0e3f3deb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5` - linux; s390x

```console
$ docker pull cassandra@sha256:8fb34573750d3918d4938973ceb11699958eeed61b998a99be91dac7d84188e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165285030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed2587e406d659eff3b992538b916a6e74a8cb3330ecc53930fd71ac53d781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:52:50 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 03:52:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:53:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 03:53:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 03:54:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 03:54:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 03:54:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:54:05 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 03:54:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251435a245b9d322832a6c7d86d0a2711691236fa740e1cd7fbee4b2dc2076d2`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6814fdea72b2928d44ea44958dbc1eb1ba21a08241cbb5c97583ea9ba943c897`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 15.6 MB (15626451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65209e9f2050b60023d140d64257a26e6faf3a6067b37c36d1acc69ab65c5d29`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.3 MB (1283914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9282fe9f826f367e9b7f6ba1da89554fdde62b834d6301f0dd493e82a70491`  
		Last Modified: Wed, 28 Oct 2026 03:54:23 GMT  
		Size: 44.5 MB (44502328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3086affe6378100129cb8d47d0e000c09558ad608ab5dc0d2c91405bda0c9d44`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973262ef9a3a27facd5aad1d1072c43492dfe6bd9dc770ec83f4fed458db721d`  
		Last Modified: Wed, 28 Oct 2026 03:54:24 GMT  
		Size: 73.9 MB (73946953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ce7039722608d458a2505af5faf7c8ab9b172e8dfd7dd54662c46c924ebd5`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5` - unknown; unknown

```console
$ docker pull cassandra@sha256:90f01f9eccdd8fa7e4e5a5ec9e88bfe060e4699f1fbada331f819765ddd11ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a778ac0b8dcc0e6d6e5e82fd59f3e0e5be57bcc45e2b113d93115622550cf424`

```dockerfile
```

-	Layers:
	-	`sha256:4e93526b9ed08a3a4c96f00c372732575a6120620be0060b5e264d8298a030d0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca3aa587a7c42f4b1381e33a6fffc38716f1c58a623f86ffcbe730b9dbf7dca0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5-trixie`

```console
$ docker pull cassandra@sha256:ae4cc2e4b62a5b2a2dd1645ba827cb50c589cc7531bcffe8b8b60ac3b1adc79d
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
$ docker pull cassandra@sha256:b85d75da9e1069317540e64b70a7376e633917c40288c93e2514eeadf8b7020b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168277802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc06f68aeda10243280761b99da9ec3e50cf96feed5395f5174dfabfb582a4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:07:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:08:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe9a0916b35845a1baf84968e3f8cc2db8a14b1dcb4d7096d4ddf41e64815c5`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75692ebe810f9e2db733af0606c1cd3dbc9d456228335381c07429966e4ed9a`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 15.7 MB (15652764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bdde260d91a2683389ee0e0c285a28913c3f772e7a769784cf0acd0c4824ae`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.3 MB (1310354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12029290fb828bafd3371362d165101048ca7bea528e5baca7662ef58f92e80`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 47.5 MB (47510273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc90555bc88141ab6217610243bbfc3b8b29ddeb44b28e755a8182d169f27af`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708829c65612b5ed51f6925248ed94f5f88c51919ad5fb23c7c09feabb9dce55`  
		Last Modified: Wed, 28 Oct 2026 02:08:52 GMT  
		Size: 73.9 MB (73946713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae994cbad04632cb53fb9cf324d7888bdedde5673008cb3128d0157766a81ca6`  
		Last Modified: Wed, 28 Oct 2026 02:08:51 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:97f71933cf8c7c2e6b0272cd17a896b660506f7525040bb23d7b67ce6dd5c6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cb035435b9c6708ced38f06f9e6921bc6b7ee3f6c1d6a321915633c02b6aff`

```dockerfile
```

-	Layers:
	-	`sha256:a141bdcba853eeab36704da5c4b8b89f0ec66d51039e4c699f1e6a106ce9164f`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b301670d807282d2e02e9660a824c0d89d3da5fc7b3d10026125803b23dc634`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ad1be4557562a88d95020d1e26a1f3350d20c677bdb80babd79219e71201bb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160992227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00d7a0fbe8767cdfcaa68f56dea63a210410db730eefb8ff4bf6666a67c1929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:57:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:58:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad70a5314a80785fb98edbb058e0901842aefeae6a5b74b22dccbda68c70fe9`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf95458dce983adb3d879fdeac78a04c1508b97be973a7b598609cee7b8e8a9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 14.4 MB (14402338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22038e546bdbade60f8bc6cba389da029fc75ba776ef3c6949c3613c430ad88`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.3 MB (1275120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8541d41af6beb679398b27f8ab028d8acc96ccc4523158a5566bf6d7b4d1c1`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 45.1 MB (45093435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b21c4e39762be3d917a2b4f88230251e372b4c3711c20a0b0a888e28bbbc533`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04e925d5a0c2c1150997c8b85f4f7d42f55b0d4c7cc462b21f4a9ea1c8bea80`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 73.9 MB (73946703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98ce2d7f31062b457aa814106248114081df4f265c01cadfa9391368ac631f`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:834f9dc2ba32b25bc4afc6991e2d36d290d84d559c11ce853a828db364889ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f62ac5eae2adc17ae8bef058c8a82cce79c9e03bf420bf0b2cea0ad445b7764`

```dockerfile
```

-	Layers:
	-	`sha256:f384182381eb55a7b2ac5f48adab23edcb5fc0a52bfacc30fc06161583f3f06c`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e8d754239bf3ba90faac757f6d9cb47b135cf2d3b9c351441ca1016cd7f1f2f`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:9e5e347403d3ae9558b8b801b8a3a79ba2fe646738a2b1fb37ca1bf3cc5a1902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167963690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7656d6589457a2ec96e8fee1576f99de5babfa1d21dc5d10c176d1a506d9bd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:14:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:14:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:14:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:14:54 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:14:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e111b107e656c4a9d72ab57d9c542e12d2d90dbb854b20fe7ff08d09d60ef8`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f002cc8f70f330d7f6886238e1b077ebd3725c588c339f7faa4f56116d66bb`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 15.5 MB (15542063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b1ca0ee9b5a77626cf85688b53a8920fc1129ea860b0273b6c4441a37c287`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.3 MB (1262311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d4eb46168b163c28c4841e4a439f9101faada48d0139534f0abf178bfdec49`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 47.0 MB (46996586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a42a5fbe7fee540e71df5325f3819efedcf60ede56002e1347631264c6d3f7`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aada46ab6b7cb9c6fdaec8d6bb0d0e2824caa9479871d8f41372a0cfd806fc3`  
		Last Modified: Wed, 28 Oct 2026 02:15:11 GMT  
		Size: 73.9 MB (73946775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da986d836f19f8d9b3324a5ad7f79d734d28a3f220534654f83ceab5c53439f0`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7282fe86e62c202b76c1a25c9d6a07a9856c2798b9450c79ef3bbbf30e69ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034fe404158c11e547206c1a321f133cfcbe043f73d325a79f420efe7b760f41`

```dockerfile
```

-	Layers:
	-	`sha256:1421d1f678e6175576d294bead88459844ad25a48f41fd7c6e413753549e957a`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28455c561e453e67d54b0ede238b926ed577e7db4b64f4dd4fed2d5d209b837`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b75d2f96f285499f6644f187e4d1eb4223d207ddd7c8f602c5a51951d62be1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172966789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adfd11f87144bc6478351f474b96bb6825b4e25ecacd7c49fa4d3ad8c98b546`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb63e0c97dfe3db21dcec6e13e51c2411d81adc278b2d15646ab0834b338791`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 47.4 MB (47421928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2164af09dbcbad966530cf0ec59704f1cd9ee7d5b5c65a86bba4ed267ea1f`  
		Last Modified: Wed, 28 Oct 2026 09:24:04 GMT  
		Size: 73.9 MB (73946902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb195d30efbfa5be04bf536cfaeea27b117cfdb75a77a550bae91f8bf420c8`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:910c6e65b55ba20639ada345b327e1e51fc0666b96bc1b88ee3a318e1c3ba65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea3543248abd3f78032c6055f7b1a4b30a88d29f97cbd0a1c1628c6f3dfd138`

```dockerfile
```

-	Layers:
	-	`sha256:d1ae8289684d8ecd7ac6811e6fdbfd5e606d1e7eb44ffaed790a9b47e33cc627`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a71a14576d658d5eb9809af36e925cc4a11781605b5e0dcf638ef2ae0e3f3deb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:8fb34573750d3918d4938973ceb11699958eeed61b998a99be91dac7d84188e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165285030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed2587e406d659eff3b992538b916a6e74a8cb3330ecc53930fd71ac53d781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:52:50 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 03:52:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:53:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 03:53:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 03:54:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 03:54:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 03:54:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:54:05 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 03:54:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251435a245b9d322832a6c7d86d0a2711691236fa740e1cd7fbee4b2dc2076d2`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6814fdea72b2928d44ea44958dbc1eb1ba21a08241cbb5c97583ea9ba943c897`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 15.6 MB (15626451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65209e9f2050b60023d140d64257a26e6faf3a6067b37c36d1acc69ab65c5d29`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.3 MB (1283914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9282fe9f826f367e9b7f6ba1da89554fdde62b834d6301f0dd493e82a70491`  
		Last Modified: Wed, 28 Oct 2026 03:54:23 GMT  
		Size: 44.5 MB (44502328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3086affe6378100129cb8d47d0e000c09558ad608ab5dc0d2c91405bda0c9d44`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973262ef9a3a27facd5aad1d1072c43492dfe6bd9dc770ec83f4fed458db721d`  
		Last Modified: Wed, 28 Oct 2026 03:54:24 GMT  
		Size: 73.9 MB (73946953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ce7039722608d458a2505af5faf7c8ab9b172e8dfd7dd54662c46c924ebd5`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:90f01f9eccdd8fa7e4e5a5ec9e88bfe060e4699f1fbada331f819765ddd11ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a778ac0b8dcc0e6d6e5e82fd59f3e0e5be57bcc45e2b113d93115622550cf424`

```dockerfile
```

-	Layers:
	-	`sha256:4e93526b9ed08a3a4c96f00c372732575a6120620be0060b5e264d8298a030d0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca3aa587a7c42f4b1381e33a6fffc38716f1c58a623f86ffcbe730b9dbf7dca0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0`

```console
$ docker pull cassandra@sha256:ae4cc2e4b62a5b2a2dd1645ba827cb50c589cc7531bcffe8b8b60ac3b1adc79d
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
$ docker pull cassandra@sha256:b85d75da9e1069317540e64b70a7376e633917c40288c93e2514eeadf8b7020b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168277802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc06f68aeda10243280761b99da9ec3e50cf96feed5395f5174dfabfb582a4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:07:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:08:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe9a0916b35845a1baf84968e3f8cc2db8a14b1dcb4d7096d4ddf41e64815c5`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75692ebe810f9e2db733af0606c1cd3dbc9d456228335381c07429966e4ed9a`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 15.7 MB (15652764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bdde260d91a2683389ee0e0c285a28913c3f772e7a769784cf0acd0c4824ae`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.3 MB (1310354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12029290fb828bafd3371362d165101048ca7bea528e5baca7662ef58f92e80`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 47.5 MB (47510273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc90555bc88141ab6217610243bbfc3b8b29ddeb44b28e755a8182d169f27af`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708829c65612b5ed51f6925248ed94f5f88c51919ad5fb23c7c09feabb9dce55`  
		Last Modified: Wed, 28 Oct 2026 02:08:52 GMT  
		Size: 73.9 MB (73946713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae994cbad04632cb53fb9cf324d7888bdedde5673008cb3128d0157766a81ca6`  
		Last Modified: Wed, 28 Oct 2026 02:08:51 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:97f71933cf8c7c2e6b0272cd17a896b660506f7525040bb23d7b67ce6dd5c6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cb035435b9c6708ced38f06f9e6921bc6b7ee3f6c1d6a321915633c02b6aff`

```dockerfile
```

-	Layers:
	-	`sha256:a141bdcba853eeab36704da5c4b8b89f0ec66d51039e4c699f1e6a106ce9164f`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b301670d807282d2e02e9660a824c0d89d3da5fc7b3d10026125803b23dc634`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ad1be4557562a88d95020d1e26a1f3350d20c677bdb80babd79219e71201bb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160992227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00d7a0fbe8767cdfcaa68f56dea63a210410db730eefb8ff4bf6666a67c1929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:57:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:58:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad70a5314a80785fb98edbb058e0901842aefeae6a5b74b22dccbda68c70fe9`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf95458dce983adb3d879fdeac78a04c1508b97be973a7b598609cee7b8e8a9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 14.4 MB (14402338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22038e546bdbade60f8bc6cba389da029fc75ba776ef3c6949c3613c430ad88`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.3 MB (1275120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8541d41af6beb679398b27f8ab028d8acc96ccc4523158a5566bf6d7b4d1c1`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 45.1 MB (45093435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b21c4e39762be3d917a2b4f88230251e372b4c3711c20a0b0a888e28bbbc533`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04e925d5a0c2c1150997c8b85f4f7d42f55b0d4c7cc462b21f4a9ea1c8bea80`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 73.9 MB (73946703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98ce2d7f31062b457aa814106248114081df4f265c01cadfa9391368ac631f`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:834f9dc2ba32b25bc4afc6991e2d36d290d84d559c11ce853a828db364889ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f62ac5eae2adc17ae8bef058c8a82cce79c9e03bf420bf0b2cea0ad445b7764`

```dockerfile
```

-	Layers:
	-	`sha256:f384182381eb55a7b2ac5f48adab23edcb5fc0a52bfacc30fc06161583f3f06c`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e8d754239bf3ba90faac757f6d9cb47b135cf2d3b9c351441ca1016cd7f1f2f`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:9e5e347403d3ae9558b8b801b8a3a79ba2fe646738a2b1fb37ca1bf3cc5a1902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167963690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7656d6589457a2ec96e8fee1576f99de5babfa1d21dc5d10c176d1a506d9bd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:14:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:14:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:14:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:14:54 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:14:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e111b107e656c4a9d72ab57d9c542e12d2d90dbb854b20fe7ff08d09d60ef8`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f002cc8f70f330d7f6886238e1b077ebd3725c588c339f7faa4f56116d66bb`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 15.5 MB (15542063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b1ca0ee9b5a77626cf85688b53a8920fc1129ea860b0273b6c4441a37c287`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.3 MB (1262311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d4eb46168b163c28c4841e4a439f9101faada48d0139534f0abf178bfdec49`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 47.0 MB (46996586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a42a5fbe7fee540e71df5325f3819efedcf60ede56002e1347631264c6d3f7`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aada46ab6b7cb9c6fdaec8d6bb0d0e2824caa9479871d8f41372a0cfd806fc3`  
		Last Modified: Wed, 28 Oct 2026 02:15:11 GMT  
		Size: 73.9 MB (73946775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da986d836f19f8d9b3324a5ad7f79d734d28a3f220534654f83ceab5c53439f0`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:7282fe86e62c202b76c1a25c9d6a07a9856c2798b9450c79ef3bbbf30e69ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034fe404158c11e547206c1a321f133cfcbe043f73d325a79f420efe7b760f41`

```dockerfile
```

-	Layers:
	-	`sha256:1421d1f678e6175576d294bead88459844ad25a48f41fd7c6e413753549e957a`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28455c561e453e67d54b0ede238b926ed577e7db4b64f4dd4fed2d5d209b837`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b75d2f96f285499f6644f187e4d1eb4223d207ddd7c8f602c5a51951d62be1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172966789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adfd11f87144bc6478351f474b96bb6825b4e25ecacd7c49fa4d3ad8c98b546`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb63e0c97dfe3db21dcec6e13e51c2411d81adc278b2d15646ab0834b338791`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 47.4 MB (47421928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2164af09dbcbad966530cf0ec59704f1cd9ee7d5b5c65a86bba4ed267ea1f`  
		Last Modified: Wed, 28 Oct 2026 09:24:04 GMT  
		Size: 73.9 MB (73946902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb195d30efbfa5be04bf536cfaeea27b117cfdb75a77a550bae91f8bf420c8`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:910c6e65b55ba20639ada345b327e1e51fc0666b96bc1b88ee3a318e1c3ba65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea3543248abd3f78032c6055f7b1a4b30a88d29f97cbd0a1c1628c6f3dfd138`

```dockerfile
```

-	Layers:
	-	`sha256:d1ae8289684d8ecd7ac6811e6fdbfd5e606d1e7eb44ffaed790a9b47e33cc627`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a71a14576d658d5eb9809af36e925cc4a11781605b5e0dcf638ef2ae0e3f3deb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0` - linux; s390x

```console
$ docker pull cassandra@sha256:8fb34573750d3918d4938973ceb11699958eeed61b998a99be91dac7d84188e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165285030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed2587e406d659eff3b992538b916a6e74a8cb3330ecc53930fd71ac53d781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:52:50 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 03:52:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:53:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 03:53:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 03:54:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 03:54:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 03:54:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:54:05 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 03:54:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251435a245b9d322832a6c7d86d0a2711691236fa740e1cd7fbee4b2dc2076d2`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6814fdea72b2928d44ea44958dbc1eb1ba21a08241cbb5c97583ea9ba943c897`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 15.6 MB (15626451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65209e9f2050b60023d140d64257a26e6faf3a6067b37c36d1acc69ab65c5d29`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.3 MB (1283914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9282fe9f826f367e9b7f6ba1da89554fdde62b834d6301f0dd493e82a70491`  
		Last Modified: Wed, 28 Oct 2026 03:54:23 GMT  
		Size: 44.5 MB (44502328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3086affe6378100129cb8d47d0e000c09558ad608ab5dc0d2c91405bda0c9d44`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973262ef9a3a27facd5aad1d1072c43492dfe6bd9dc770ec83f4fed458db721d`  
		Last Modified: Wed, 28 Oct 2026 03:54:24 GMT  
		Size: 73.9 MB (73946953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ce7039722608d458a2505af5faf7c8ab9b172e8dfd7dd54662c46c924ebd5`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:90f01f9eccdd8fa7e4e5a5ec9e88bfe060e4699f1fbada331f819765ddd11ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a778ac0b8dcc0e6d6e5e82fd59f3e0e5be57bcc45e2b113d93115622550cf424`

```dockerfile
```

-	Layers:
	-	`sha256:4e93526b9ed08a3a4c96f00c372732575a6120620be0060b5e264d8298a030d0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca3aa587a7c42f4b1381e33a6fffc38716f1c58a623f86ffcbe730b9dbf7dca0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0-trixie`

```console
$ docker pull cassandra@sha256:ae4cc2e4b62a5b2a2dd1645ba827cb50c589cc7531bcffe8b8b60ac3b1adc79d
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
$ docker pull cassandra@sha256:b85d75da9e1069317540e64b70a7376e633917c40288c93e2514eeadf8b7020b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168277802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc06f68aeda10243280761b99da9ec3e50cf96feed5395f5174dfabfb582a4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:07:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:08:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe9a0916b35845a1baf84968e3f8cc2db8a14b1dcb4d7096d4ddf41e64815c5`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75692ebe810f9e2db733af0606c1cd3dbc9d456228335381c07429966e4ed9a`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 15.7 MB (15652764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bdde260d91a2683389ee0e0c285a28913c3f772e7a769784cf0acd0c4824ae`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.3 MB (1310354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12029290fb828bafd3371362d165101048ca7bea528e5baca7662ef58f92e80`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 47.5 MB (47510273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc90555bc88141ab6217610243bbfc3b8b29ddeb44b28e755a8182d169f27af`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708829c65612b5ed51f6925248ed94f5f88c51919ad5fb23c7c09feabb9dce55`  
		Last Modified: Wed, 28 Oct 2026 02:08:52 GMT  
		Size: 73.9 MB (73946713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae994cbad04632cb53fb9cf324d7888bdedde5673008cb3128d0157766a81ca6`  
		Last Modified: Wed, 28 Oct 2026 02:08:51 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:97f71933cf8c7c2e6b0272cd17a896b660506f7525040bb23d7b67ce6dd5c6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cb035435b9c6708ced38f06f9e6921bc6b7ee3f6c1d6a321915633c02b6aff`

```dockerfile
```

-	Layers:
	-	`sha256:a141bdcba853eeab36704da5c4b8b89f0ec66d51039e4c699f1e6a106ce9164f`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b301670d807282d2e02e9660a824c0d89d3da5fc7b3d10026125803b23dc634`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ad1be4557562a88d95020d1e26a1f3350d20c677bdb80babd79219e71201bb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160992227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00d7a0fbe8767cdfcaa68f56dea63a210410db730eefb8ff4bf6666a67c1929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:57:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:58:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad70a5314a80785fb98edbb058e0901842aefeae6a5b74b22dccbda68c70fe9`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf95458dce983adb3d879fdeac78a04c1508b97be973a7b598609cee7b8e8a9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 14.4 MB (14402338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22038e546bdbade60f8bc6cba389da029fc75ba776ef3c6949c3613c430ad88`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.3 MB (1275120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8541d41af6beb679398b27f8ab028d8acc96ccc4523158a5566bf6d7b4d1c1`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 45.1 MB (45093435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b21c4e39762be3d917a2b4f88230251e372b4c3711c20a0b0a888e28bbbc533`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04e925d5a0c2c1150997c8b85f4f7d42f55b0d4c7cc462b21f4a9ea1c8bea80`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 73.9 MB (73946703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98ce2d7f31062b457aa814106248114081df4f265c01cadfa9391368ac631f`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:834f9dc2ba32b25bc4afc6991e2d36d290d84d559c11ce853a828db364889ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f62ac5eae2adc17ae8bef058c8a82cce79c9e03bf420bf0b2cea0ad445b7764`

```dockerfile
```

-	Layers:
	-	`sha256:f384182381eb55a7b2ac5f48adab23edcb5fc0a52bfacc30fc06161583f3f06c`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e8d754239bf3ba90faac757f6d9cb47b135cf2d3b9c351441ca1016cd7f1f2f`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:9e5e347403d3ae9558b8b801b8a3a79ba2fe646738a2b1fb37ca1bf3cc5a1902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167963690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7656d6589457a2ec96e8fee1576f99de5babfa1d21dc5d10c176d1a506d9bd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:14:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:14:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:14:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:14:54 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:14:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e111b107e656c4a9d72ab57d9c542e12d2d90dbb854b20fe7ff08d09d60ef8`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f002cc8f70f330d7f6886238e1b077ebd3725c588c339f7faa4f56116d66bb`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 15.5 MB (15542063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b1ca0ee9b5a77626cf85688b53a8920fc1129ea860b0273b6c4441a37c287`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.3 MB (1262311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d4eb46168b163c28c4841e4a439f9101faada48d0139534f0abf178bfdec49`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 47.0 MB (46996586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a42a5fbe7fee540e71df5325f3819efedcf60ede56002e1347631264c6d3f7`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aada46ab6b7cb9c6fdaec8d6bb0d0e2824caa9479871d8f41372a0cfd806fc3`  
		Last Modified: Wed, 28 Oct 2026 02:15:11 GMT  
		Size: 73.9 MB (73946775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da986d836f19f8d9b3324a5ad7f79d734d28a3f220534654f83ceab5c53439f0`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7282fe86e62c202b76c1a25c9d6a07a9856c2798b9450c79ef3bbbf30e69ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034fe404158c11e547206c1a321f133cfcbe043f73d325a79f420efe7b760f41`

```dockerfile
```

-	Layers:
	-	`sha256:1421d1f678e6175576d294bead88459844ad25a48f41fd7c6e413753549e957a`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28455c561e453e67d54b0ede238b926ed577e7db4b64f4dd4fed2d5d209b837`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b75d2f96f285499f6644f187e4d1eb4223d207ddd7c8f602c5a51951d62be1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172966789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adfd11f87144bc6478351f474b96bb6825b4e25ecacd7c49fa4d3ad8c98b546`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb63e0c97dfe3db21dcec6e13e51c2411d81adc278b2d15646ab0834b338791`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 47.4 MB (47421928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2164af09dbcbad966530cf0ec59704f1cd9ee7d5b5c65a86bba4ed267ea1f`  
		Last Modified: Wed, 28 Oct 2026 09:24:04 GMT  
		Size: 73.9 MB (73946902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb195d30efbfa5be04bf536cfaeea27b117cfdb75a77a550bae91f8bf420c8`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:910c6e65b55ba20639ada345b327e1e51fc0666b96bc1b88ee3a318e1c3ba65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea3543248abd3f78032c6055f7b1a4b30a88d29f97cbd0a1c1628c6f3dfd138`

```dockerfile
```

-	Layers:
	-	`sha256:d1ae8289684d8ecd7ac6811e6fdbfd5e606d1e7eb44ffaed790a9b47e33cc627`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a71a14576d658d5eb9809af36e925cc4a11781605b5e0dcf638ef2ae0e3f3deb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:8fb34573750d3918d4938973ceb11699958eeed61b998a99be91dac7d84188e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165285030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed2587e406d659eff3b992538b916a6e74a8cb3330ecc53930fd71ac53d781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:52:50 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 03:52:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:53:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 03:53:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 03:54:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 03:54:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 03:54:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:54:05 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 03:54:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251435a245b9d322832a6c7d86d0a2711691236fa740e1cd7fbee4b2dc2076d2`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6814fdea72b2928d44ea44958dbc1eb1ba21a08241cbb5c97583ea9ba943c897`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 15.6 MB (15626451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65209e9f2050b60023d140d64257a26e6faf3a6067b37c36d1acc69ab65c5d29`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.3 MB (1283914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9282fe9f826f367e9b7f6ba1da89554fdde62b834d6301f0dd493e82a70491`  
		Last Modified: Wed, 28 Oct 2026 03:54:23 GMT  
		Size: 44.5 MB (44502328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3086affe6378100129cb8d47d0e000c09558ad608ab5dc0d2c91405bda0c9d44`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973262ef9a3a27facd5aad1d1072c43492dfe6bd9dc770ec83f4fed458db721d`  
		Last Modified: Wed, 28 Oct 2026 03:54:24 GMT  
		Size: 73.9 MB (73946953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ce7039722608d458a2505af5faf7c8ab9b172e8dfd7dd54662c46c924ebd5`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:90f01f9eccdd8fa7e4e5a5ec9e88bfe060e4699f1fbada331f819765ddd11ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a778ac0b8dcc0e6d6e5e82fd59f3e0e5be57bcc45e2b113d93115622550cf424`

```dockerfile
```

-	Layers:
	-	`sha256:4e93526b9ed08a3a4c96f00c372732575a6120620be0060b5e264d8298a030d0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca3aa587a7c42f4b1381e33a6fffc38716f1c58a623f86ffcbe730b9dbf7dca0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.9`

```console
$ docker pull cassandra@sha256:ae4cc2e4b62a5b2a2dd1645ba827cb50c589cc7531bcffe8b8b60ac3b1adc79d
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
$ docker pull cassandra@sha256:b85d75da9e1069317540e64b70a7376e633917c40288c93e2514eeadf8b7020b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168277802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc06f68aeda10243280761b99da9ec3e50cf96feed5395f5174dfabfb582a4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:07:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:08:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe9a0916b35845a1baf84968e3f8cc2db8a14b1dcb4d7096d4ddf41e64815c5`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75692ebe810f9e2db733af0606c1cd3dbc9d456228335381c07429966e4ed9a`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 15.7 MB (15652764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bdde260d91a2683389ee0e0c285a28913c3f772e7a769784cf0acd0c4824ae`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.3 MB (1310354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12029290fb828bafd3371362d165101048ca7bea528e5baca7662ef58f92e80`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 47.5 MB (47510273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc90555bc88141ab6217610243bbfc3b8b29ddeb44b28e755a8182d169f27af`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708829c65612b5ed51f6925248ed94f5f88c51919ad5fb23c7c09feabb9dce55`  
		Last Modified: Wed, 28 Oct 2026 02:08:52 GMT  
		Size: 73.9 MB (73946713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae994cbad04632cb53fb9cf324d7888bdedde5673008cb3128d0157766a81ca6`  
		Last Modified: Wed, 28 Oct 2026 02:08:51 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:97f71933cf8c7c2e6b0272cd17a896b660506f7525040bb23d7b67ce6dd5c6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cb035435b9c6708ced38f06f9e6921bc6b7ee3f6c1d6a321915633c02b6aff`

```dockerfile
```

-	Layers:
	-	`sha256:a141bdcba853eeab36704da5c4b8b89f0ec66d51039e4c699f1e6a106ce9164f`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b301670d807282d2e02e9660a824c0d89d3da5fc7b3d10026125803b23dc634`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ad1be4557562a88d95020d1e26a1f3350d20c677bdb80babd79219e71201bb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160992227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00d7a0fbe8767cdfcaa68f56dea63a210410db730eefb8ff4bf6666a67c1929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:57:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:58:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad70a5314a80785fb98edbb058e0901842aefeae6a5b74b22dccbda68c70fe9`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf95458dce983adb3d879fdeac78a04c1508b97be973a7b598609cee7b8e8a9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 14.4 MB (14402338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22038e546bdbade60f8bc6cba389da029fc75ba776ef3c6949c3613c430ad88`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.3 MB (1275120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8541d41af6beb679398b27f8ab028d8acc96ccc4523158a5566bf6d7b4d1c1`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 45.1 MB (45093435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b21c4e39762be3d917a2b4f88230251e372b4c3711c20a0b0a888e28bbbc533`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04e925d5a0c2c1150997c8b85f4f7d42f55b0d4c7cc462b21f4a9ea1c8bea80`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 73.9 MB (73946703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98ce2d7f31062b457aa814106248114081df4f265c01cadfa9391368ac631f`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:834f9dc2ba32b25bc4afc6991e2d36d290d84d559c11ce853a828db364889ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f62ac5eae2adc17ae8bef058c8a82cce79c9e03bf420bf0b2cea0ad445b7764`

```dockerfile
```

-	Layers:
	-	`sha256:f384182381eb55a7b2ac5f48adab23edcb5fc0a52bfacc30fc06161583f3f06c`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e8d754239bf3ba90faac757f6d9cb47b135cf2d3b9c351441ca1016cd7f1f2f`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:9e5e347403d3ae9558b8b801b8a3a79ba2fe646738a2b1fb37ca1bf3cc5a1902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167963690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7656d6589457a2ec96e8fee1576f99de5babfa1d21dc5d10c176d1a506d9bd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:14:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:14:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:14:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:14:54 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:14:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e111b107e656c4a9d72ab57d9c542e12d2d90dbb854b20fe7ff08d09d60ef8`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f002cc8f70f330d7f6886238e1b077ebd3725c588c339f7faa4f56116d66bb`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 15.5 MB (15542063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b1ca0ee9b5a77626cf85688b53a8920fc1129ea860b0273b6c4441a37c287`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.3 MB (1262311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d4eb46168b163c28c4841e4a439f9101faada48d0139534f0abf178bfdec49`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 47.0 MB (46996586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a42a5fbe7fee540e71df5325f3819efedcf60ede56002e1347631264c6d3f7`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aada46ab6b7cb9c6fdaec8d6bb0d0e2824caa9479871d8f41372a0cfd806fc3`  
		Last Modified: Wed, 28 Oct 2026 02:15:11 GMT  
		Size: 73.9 MB (73946775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da986d836f19f8d9b3324a5ad7f79d734d28a3f220534654f83ceab5c53439f0`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:7282fe86e62c202b76c1a25c9d6a07a9856c2798b9450c79ef3bbbf30e69ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034fe404158c11e547206c1a321f133cfcbe043f73d325a79f420efe7b760f41`

```dockerfile
```

-	Layers:
	-	`sha256:1421d1f678e6175576d294bead88459844ad25a48f41fd7c6e413753549e957a`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28455c561e453e67d54b0ede238b926ed577e7db4b64f4dd4fed2d5d209b837`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b75d2f96f285499f6644f187e4d1eb4223d207ddd7c8f602c5a51951d62be1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172966789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adfd11f87144bc6478351f474b96bb6825b4e25ecacd7c49fa4d3ad8c98b546`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb63e0c97dfe3db21dcec6e13e51c2411d81adc278b2d15646ab0834b338791`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 47.4 MB (47421928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2164af09dbcbad966530cf0ec59704f1cd9ee7d5b5c65a86bba4ed267ea1f`  
		Last Modified: Wed, 28 Oct 2026 09:24:04 GMT  
		Size: 73.9 MB (73946902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb195d30efbfa5be04bf536cfaeea27b117cfdb75a77a550bae91f8bf420c8`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:910c6e65b55ba20639ada345b327e1e51fc0666b96bc1b88ee3a318e1c3ba65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea3543248abd3f78032c6055f7b1a4b30a88d29f97cbd0a1c1628c6f3dfd138`

```dockerfile
```

-	Layers:
	-	`sha256:d1ae8289684d8ecd7ac6811e6fdbfd5e606d1e7eb44ffaed790a9b47e33cc627`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a71a14576d658d5eb9809af36e925cc4a11781605b5e0dcf638ef2ae0e3f3deb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9` - linux; s390x

```console
$ docker pull cassandra@sha256:8fb34573750d3918d4938973ceb11699958eeed61b998a99be91dac7d84188e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165285030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed2587e406d659eff3b992538b916a6e74a8cb3330ecc53930fd71ac53d781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:52:50 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 03:52:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:53:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 03:53:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 03:54:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 03:54:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 03:54:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:54:05 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 03:54:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251435a245b9d322832a6c7d86d0a2711691236fa740e1cd7fbee4b2dc2076d2`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6814fdea72b2928d44ea44958dbc1eb1ba21a08241cbb5c97583ea9ba943c897`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 15.6 MB (15626451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65209e9f2050b60023d140d64257a26e6faf3a6067b37c36d1acc69ab65c5d29`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.3 MB (1283914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9282fe9f826f367e9b7f6ba1da89554fdde62b834d6301f0dd493e82a70491`  
		Last Modified: Wed, 28 Oct 2026 03:54:23 GMT  
		Size: 44.5 MB (44502328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3086affe6378100129cb8d47d0e000c09558ad608ab5dc0d2c91405bda0c9d44`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973262ef9a3a27facd5aad1d1072c43492dfe6bd9dc770ec83f4fed458db721d`  
		Last Modified: Wed, 28 Oct 2026 03:54:24 GMT  
		Size: 73.9 MB (73946953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ce7039722608d458a2505af5faf7c8ab9b172e8dfd7dd54662c46c924ebd5`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9` - unknown; unknown

```console
$ docker pull cassandra@sha256:90f01f9eccdd8fa7e4e5a5ec9e88bfe060e4699f1fbada331f819765ddd11ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a778ac0b8dcc0e6d6e5e82fd59f3e0e5be57bcc45e2b113d93115622550cf424`

```dockerfile
```

-	Layers:
	-	`sha256:4e93526b9ed08a3a4c96f00c372732575a6120620be0060b5e264d8298a030d0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca3aa587a7c42f4b1381e33a6fffc38716f1c58a623f86ffcbe730b9dbf7dca0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:5.0.9-trixie`

```console
$ docker pull cassandra@sha256:ae4cc2e4b62a5b2a2dd1645ba827cb50c589cc7531bcffe8b8b60ac3b1adc79d
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
$ docker pull cassandra@sha256:b85d75da9e1069317540e64b70a7376e633917c40288c93e2514eeadf8b7020b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168277802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc06f68aeda10243280761b99da9ec3e50cf96feed5395f5174dfabfb582a4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:07:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:08:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe9a0916b35845a1baf84968e3f8cc2db8a14b1dcb4d7096d4ddf41e64815c5`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75692ebe810f9e2db733af0606c1cd3dbc9d456228335381c07429966e4ed9a`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 15.7 MB (15652764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bdde260d91a2683389ee0e0c285a28913c3f772e7a769784cf0acd0c4824ae`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.3 MB (1310354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12029290fb828bafd3371362d165101048ca7bea528e5baca7662ef58f92e80`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 47.5 MB (47510273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc90555bc88141ab6217610243bbfc3b8b29ddeb44b28e755a8182d169f27af`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708829c65612b5ed51f6925248ed94f5f88c51919ad5fb23c7c09feabb9dce55`  
		Last Modified: Wed, 28 Oct 2026 02:08:52 GMT  
		Size: 73.9 MB (73946713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae994cbad04632cb53fb9cf324d7888bdedde5673008cb3128d0157766a81ca6`  
		Last Modified: Wed, 28 Oct 2026 02:08:51 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:97f71933cf8c7c2e6b0272cd17a896b660506f7525040bb23d7b67ce6dd5c6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cb035435b9c6708ced38f06f9e6921bc6b7ee3f6c1d6a321915633c02b6aff`

```dockerfile
```

-	Layers:
	-	`sha256:a141bdcba853eeab36704da5c4b8b89f0ec66d51039e4c699f1e6a106ce9164f`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b301670d807282d2e02e9660a824c0d89d3da5fc7b3d10026125803b23dc634`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ad1be4557562a88d95020d1e26a1f3350d20c677bdb80babd79219e71201bb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160992227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00d7a0fbe8767cdfcaa68f56dea63a210410db730eefb8ff4bf6666a67c1929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:57:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:58:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad70a5314a80785fb98edbb058e0901842aefeae6a5b74b22dccbda68c70fe9`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf95458dce983adb3d879fdeac78a04c1508b97be973a7b598609cee7b8e8a9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 14.4 MB (14402338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22038e546bdbade60f8bc6cba389da029fc75ba776ef3c6949c3613c430ad88`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.3 MB (1275120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8541d41af6beb679398b27f8ab028d8acc96ccc4523158a5566bf6d7b4d1c1`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 45.1 MB (45093435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b21c4e39762be3d917a2b4f88230251e372b4c3711c20a0b0a888e28bbbc533`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04e925d5a0c2c1150997c8b85f4f7d42f55b0d4c7cc462b21f4a9ea1c8bea80`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 73.9 MB (73946703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98ce2d7f31062b457aa814106248114081df4f265c01cadfa9391368ac631f`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:834f9dc2ba32b25bc4afc6991e2d36d290d84d559c11ce853a828db364889ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f62ac5eae2adc17ae8bef058c8a82cce79c9e03bf420bf0b2cea0ad445b7764`

```dockerfile
```

-	Layers:
	-	`sha256:f384182381eb55a7b2ac5f48adab23edcb5fc0a52bfacc30fc06161583f3f06c`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e8d754239bf3ba90faac757f6d9cb47b135cf2d3b9c351441ca1016cd7f1f2f`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:9e5e347403d3ae9558b8b801b8a3a79ba2fe646738a2b1fb37ca1bf3cc5a1902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167963690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7656d6589457a2ec96e8fee1576f99de5babfa1d21dc5d10c176d1a506d9bd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:14:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:14:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:14:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:14:54 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:14:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e111b107e656c4a9d72ab57d9c542e12d2d90dbb854b20fe7ff08d09d60ef8`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f002cc8f70f330d7f6886238e1b077ebd3725c588c339f7faa4f56116d66bb`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 15.5 MB (15542063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b1ca0ee9b5a77626cf85688b53a8920fc1129ea860b0273b6c4441a37c287`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.3 MB (1262311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d4eb46168b163c28c4841e4a439f9101faada48d0139534f0abf178bfdec49`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 47.0 MB (46996586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a42a5fbe7fee540e71df5325f3819efedcf60ede56002e1347631264c6d3f7`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aada46ab6b7cb9c6fdaec8d6bb0d0e2824caa9479871d8f41372a0cfd806fc3`  
		Last Modified: Wed, 28 Oct 2026 02:15:11 GMT  
		Size: 73.9 MB (73946775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da986d836f19f8d9b3324a5ad7f79d734d28a3f220534654f83ceab5c53439f0`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7282fe86e62c202b76c1a25c9d6a07a9856c2798b9450c79ef3bbbf30e69ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034fe404158c11e547206c1a321f133cfcbe043f73d325a79f420efe7b760f41`

```dockerfile
```

-	Layers:
	-	`sha256:1421d1f678e6175576d294bead88459844ad25a48f41fd7c6e413753549e957a`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28455c561e453e67d54b0ede238b926ed577e7db4b64f4dd4fed2d5d209b837`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b75d2f96f285499f6644f187e4d1eb4223d207ddd7c8f602c5a51951d62be1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172966789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adfd11f87144bc6478351f474b96bb6825b4e25ecacd7c49fa4d3ad8c98b546`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb63e0c97dfe3db21dcec6e13e51c2411d81adc278b2d15646ab0834b338791`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 47.4 MB (47421928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2164af09dbcbad966530cf0ec59704f1cd9ee7d5b5c65a86bba4ed267ea1f`  
		Last Modified: Wed, 28 Oct 2026 09:24:04 GMT  
		Size: 73.9 MB (73946902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb195d30efbfa5be04bf536cfaeea27b117cfdb75a77a550bae91f8bf420c8`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:910c6e65b55ba20639ada345b327e1e51fc0666b96bc1b88ee3a318e1c3ba65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea3543248abd3f78032c6055f7b1a4b30a88d29f97cbd0a1c1628c6f3dfd138`

```dockerfile
```

-	Layers:
	-	`sha256:d1ae8289684d8ecd7ac6811e6fdbfd5e606d1e7eb44ffaed790a9b47e33cc627`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a71a14576d658d5eb9809af36e925cc4a11781605b5e0dcf638ef2ae0e3f3deb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:5.0.9-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:8fb34573750d3918d4938973ceb11699958eeed61b998a99be91dac7d84188e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165285030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed2587e406d659eff3b992538b916a6e74a8cb3330ecc53930fd71ac53d781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:52:50 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 03:52:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:53:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 03:53:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 03:54:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 03:54:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 03:54:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:54:05 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 03:54:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251435a245b9d322832a6c7d86d0a2711691236fa740e1cd7fbee4b2dc2076d2`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6814fdea72b2928d44ea44958dbc1eb1ba21a08241cbb5c97583ea9ba943c897`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 15.6 MB (15626451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65209e9f2050b60023d140d64257a26e6faf3a6067b37c36d1acc69ab65c5d29`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.3 MB (1283914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9282fe9f826f367e9b7f6ba1da89554fdde62b834d6301f0dd493e82a70491`  
		Last Modified: Wed, 28 Oct 2026 03:54:23 GMT  
		Size: 44.5 MB (44502328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3086affe6378100129cb8d47d0e000c09558ad608ab5dc0d2c91405bda0c9d44`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973262ef9a3a27facd5aad1d1072c43492dfe6bd9dc770ec83f4fed458db721d`  
		Last Modified: Wed, 28 Oct 2026 03:54:24 GMT  
		Size: 73.9 MB (73946953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ce7039722608d458a2505af5faf7c8ab9b172e8dfd7dd54662c46c924ebd5`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:5.0.9-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:90f01f9eccdd8fa7e4e5a5ec9e88bfe060e4699f1fbada331f819765ddd11ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a778ac0b8dcc0e6d6e5e82fd59f3e0e5be57bcc45e2b113d93115622550cf424`

```dockerfile
```

-	Layers:
	-	`sha256:4e93526b9ed08a3a4c96f00c372732575a6120620be0060b5e264d8298a030d0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca3aa587a7c42f4b1381e33a6fffc38716f1c58a623f86ffcbe730b9dbf7dca0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0`

```console
$ docker pull cassandra@sha256:c07bd2e2753077957870959a1444c2859c4cff0f1b848a09d2eb2b854c9afcc2
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
$ docker pull cassandra@sha256:872dd06c16143d18bc13d7934f9bda268c9c67c294a98913c3c99f1149afb9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.4 MB (174361471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0027cb905a9bcf233dbc9686218a7f5837f5ab8bdeee049f0745028c6853d06a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:03:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 20:03:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 20:03:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:03:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:31 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 20:03:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 20:03:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 20:03:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 20:03:51 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 20:03:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9e59dd1f801658f744788f2ea6d5c9749562cc248cf7060cbaa253a2750011`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f29ac85343ee6db216799394c24af9ffac3377155c027e92c07916e1832854`  
		Last Modified: Thu, 29 Oct 2026 20:04:08 GMT  
		Size: 15.7 MB (15652709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34574d3477ecdd155b7345efe22b80aad983447afb7f3784984756aee6d6817b`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 1.3 MB (1310327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236a307d11fa8abfc6fbb8cb381c4f76e5f8a44d59d96f8db512d6579021b468`  
		Last Modified: Thu, 29 Oct 2026 20:04:09 GMT  
		Size: 53.2 MB (53200395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8a44c900b8a6878cac29d3fd2c65b5d0169f4f84b621c9a4e0a9f4e7e78604`  
		Last Modified: Thu, 29 Oct 2026 20:04:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a70591667b574b462b71b4d8f007c81d75347728d3c20fbc702fe9b4af65f6`  
		Last Modified: Thu, 29 Oct 2026 20:04:11 GMT  
		Size: 74.3 MB (74340348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4cfd632e29cff54cf3ea29212e67cb07336a9e81628aa16ed4827c111721da`  
		Last Modified: Thu, 29 Oct 2026 20:04:10 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:44f28070930f449498fb5baed9d54401875b9a11891cec5bd2a13eb61f84e1de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23fc54c559e6d98130b1ea46e0f250bed03e7f5978a3e5bfab53bf291e59841`

```dockerfile
```

-	Layers:
	-	`sha256:1cb4ea36f2f8f3d2901a73c7d979208b436d40a5d9ddde357cfcfec5e5f81532`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 3.0 MB (2985061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b69b9f6990722b17398b470e84e19404763dd4558059b7750ee6a39afa4ba8`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:0de0e726b1a92ad6ac230311b408368147cf5cd9d91cf740197e517c325ee476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173743994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70e5d657307bba78d2b049ee58f35756f9e12fb89e2b0f8e41e058a1bf80f4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:04:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 20:04:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 20:04:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:22 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 20:04:22 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:22 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 20:04:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 20:04:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 20:04:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 20:04:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 20:04:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 20:04:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a4fc7755e4ff7a226de1e8b616123ab5500e0ee345e522ca4255a8986b994f`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faacbb652ae76238db5160087ade9c522b04076217782030036626f2a0a920e3`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 15.5 MB (15542069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50e0a80df7779a40995c363d027e42c1e670fda1f2484eb67cd3581180c8a76`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 1.3 MB (1262342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedfc16f5c7231d338bb3789bfd894805d62a18a1ec128c579a23b5cacdc129a`  
		Last Modified: Thu, 29 Oct 2026 20:04:54 GMT  
		Size: 52.4 MB (52383062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efb2166fb215e72051a229927fee555e4cf82339b21501608e385629d15d085`  
		Last Modified: Thu, 29 Oct 2026 20:04:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adc03b14ac141ec0d7a6a4052a13dd28fe928a0097b0a45e6228227fd3ce555`  
		Last Modified: Thu, 29 Oct 2026 20:04:56 GMT  
		Size: 74.3 MB (74340562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1b8e31ebeb07d90ed90b1aedfb357986ee38b27094a89e974548f2c30df39f`  
		Last Modified: Thu, 29 Oct 2026 20:04:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:c72937f61d3ce26b3cb9a8e27a1e3823078f1bc1f293e89daed3f2dd4a5d1ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395c9eba235c4ae22614fe28ed48583559c0787278a4b61fbd53494ed1f22890`

```dockerfile
```

-	Layers:
	-	`sha256:6cdb92ecc0c2ebf7d93bf33faf1b07b6c078a1ec727cd79d7718a8181cdb58d5`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 3.0 MB (2984769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cb26ba0b5808e72581e3f6db82668157404d19ceafe0cb86cb93ffb10fbd018`  
		Last Modified: Thu, 29 Oct 2026 20:04:52 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:964cb851cfd33a5aff756e7af0043f75727cde818498bc31ad87ed378341c3b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179048471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860690a3127e3bdf4c65e890616e141136041beb8a4fa7844b697f4d736bb951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841c837a18eff487593bebf31eeda8cb6ddb6411c633b5986bbdfcaa642416a0`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 53.1 MB (53109919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaee4dec03d4f8424ea57c89c9e1c0f5aa4cdbe48967edb0598b5866ec6b03b`  
		Last Modified: Wed, 28 Oct 2026 09:24:05 GMT  
		Size: 74.3 MB (74340593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07f160ec06c636db9f8e2ddfdc59bae6eb352298482f2fb12e2ba03894c2527`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:d346550e01257e85d28c982845d26cf1e8960ac98b80584198019817d9a76a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8cd932e60178c7c88ab52d9081e015b7aa52cbbda4d3a353f5729ddd2c21cf`

```dockerfile
```

-	Layers:
	-	`sha256:29f6efb252631dd29d7dacb71d3e2bacec9b8fbf300b76a1bd67f3da95bdb4f7`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2988426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f0b70e8fc2b8b5849d2b05224b90d96b660e14071e5316c5d3065748b6c22bf`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 35.9 KB (35943 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0` - linux; s390x

```console
$ docker pull cassandra@sha256:dc0e701351e6a3e218e67dc3326fd0344844f97dc735cf5ccf54b12654961ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170539730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef8b38e187be4ca7403f314136e19a62bd340d5e1b9d1a0f62120308f6985e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:38:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 19:38:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 19:39:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:39:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:39:16 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 19:39:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:39:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 19:40:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 19:40:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 19:40:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 19:40:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:40:14 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 19:40:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511a8fd1d1c553ab5d2068ae4ddf0e9b34b843e1d3bc67a0ad07e2ece1d4cba6`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0106d4a4e67775c5f61452bdce7ec0a3d1410863190515bf58632e243561e0c8`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 15.6 MB (15626930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c53559517b80caeb6b49ffbef68be741477d6d1073294504fa5aacdc48e21c`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 1.3 MB (1284227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e980ccbc1ca790d5ee9915239db62085adcccb1a5be35b27383c594ec0a82b4a`  
		Last Modified: Thu, 29 Oct 2026 19:40:48 GMT  
		Size: 49.4 MB (49362030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7c043dd875d6f37996a18a42d5794616c324ea30cb1237d0765ec5bb7bfb7f`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a6ec6b3eae4b76ab55ee8132bd36d0e874282252990088af36840785490311`  
		Last Modified: Thu, 29 Oct 2026 19:40:49 GMT  
		Size: 74.3 MB (74341157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25855aa7be81e77a86a490a7ff9e3eac2f9b66fa76a4316f65b808a82dbbe2e4`  
		Last Modified: Thu, 29 Oct 2026 19:40:48 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0` - unknown; unknown

```console
$ docker pull cassandra@sha256:ae4591704cddb536aa6fbb93f7504acb0adfbdb1bacbe11c6c58d50f156523e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd62c1539056f871330722971656514797cbc01d6375ac46a8045aff77dacc9`

```dockerfile
```

-	Layers:
	-	`sha256:0b805d18d3ee4064f7198e37d7b735adc38b9856af81a044ae9a98eb2c06846e`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 3.0 MB (2984568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19a46c8fdc34397a575f314e1c8f90f4a9a73d163b95684283276369a6c9955a`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 35.9 KB (35882 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0-alpha2`

```console
$ docker pull cassandra@sha256:c07bd2e2753077957870959a1444c2859c4cff0f1b848a09d2eb2b854c9afcc2
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
$ docker pull cassandra@sha256:872dd06c16143d18bc13d7934f9bda268c9c67c294a98913c3c99f1149afb9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.4 MB (174361471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0027cb905a9bcf233dbc9686218a7f5837f5ab8bdeee049f0745028c6853d06a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:03:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 20:03:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 20:03:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:03:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:31 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 20:03:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 20:03:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 20:03:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 20:03:51 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 20:03:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9e59dd1f801658f744788f2ea6d5c9749562cc248cf7060cbaa253a2750011`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f29ac85343ee6db216799394c24af9ffac3377155c027e92c07916e1832854`  
		Last Modified: Thu, 29 Oct 2026 20:04:08 GMT  
		Size: 15.7 MB (15652709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34574d3477ecdd155b7345efe22b80aad983447afb7f3784984756aee6d6817b`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 1.3 MB (1310327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236a307d11fa8abfc6fbb8cb381c4f76e5f8a44d59d96f8db512d6579021b468`  
		Last Modified: Thu, 29 Oct 2026 20:04:09 GMT  
		Size: 53.2 MB (53200395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8a44c900b8a6878cac29d3fd2c65b5d0169f4f84b621c9a4e0a9f4e7e78604`  
		Last Modified: Thu, 29 Oct 2026 20:04:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a70591667b574b462b71b4d8f007c81d75347728d3c20fbc702fe9b4af65f6`  
		Last Modified: Thu, 29 Oct 2026 20:04:11 GMT  
		Size: 74.3 MB (74340348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4cfd632e29cff54cf3ea29212e67cb07336a9e81628aa16ed4827c111721da`  
		Last Modified: Thu, 29 Oct 2026 20:04:10 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:44f28070930f449498fb5baed9d54401875b9a11891cec5bd2a13eb61f84e1de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23fc54c559e6d98130b1ea46e0f250bed03e7f5978a3e5bfab53bf291e59841`

```dockerfile
```

-	Layers:
	-	`sha256:1cb4ea36f2f8f3d2901a73c7d979208b436d40a5d9ddde357cfcfec5e5f81532`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 3.0 MB (2985061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b69b9f6990722b17398b470e84e19404763dd4558059b7750ee6a39afa4ba8`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:0de0e726b1a92ad6ac230311b408368147cf5cd9d91cf740197e517c325ee476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173743994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70e5d657307bba78d2b049ee58f35756f9e12fb89e2b0f8e41e058a1bf80f4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:04:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 20:04:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 20:04:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:22 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 20:04:22 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:22 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 20:04:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 20:04:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 20:04:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 20:04:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 20:04:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 20:04:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a4fc7755e4ff7a226de1e8b616123ab5500e0ee345e522ca4255a8986b994f`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faacbb652ae76238db5160087ade9c522b04076217782030036626f2a0a920e3`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 15.5 MB (15542069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50e0a80df7779a40995c363d027e42c1e670fda1f2484eb67cd3581180c8a76`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 1.3 MB (1262342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedfc16f5c7231d338bb3789bfd894805d62a18a1ec128c579a23b5cacdc129a`  
		Last Modified: Thu, 29 Oct 2026 20:04:54 GMT  
		Size: 52.4 MB (52383062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efb2166fb215e72051a229927fee555e4cf82339b21501608e385629d15d085`  
		Last Modified: Thu, 29 Oct 2026 20:04:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adc03b14ac141ec0d7a6a4052a13dd28fe928a0097b0a45e6228227fd3ce555`  
		Last Modified: Thu, 29 Oct 2026 20:04:56 GMT  
		Size: 74.3 MB (74340562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1b8e31ebeb07d90ed90b1aedfb357986ee38b27094a89e974548f2c30df39f`  
		Last Modified: Thu, 29 Oct 2026 20:04:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:c72937f61d3ce26b3cb9a8e27a1e3823078f1bc1f293e89daed3f2dd4a5d1ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395c9eba235c4ae22614fe28ed48583559c0787278a4b61fbd53494ed1f22890`

```dockerfile
```

-	Layers:
	-	`sha256:6cdb92ecc0c2ebf7d93bf33faf1b07b6c078a1ec727cd79d7718a8181cdb58d5`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 3.0 MB (2984769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cb26ba0b5808e72581e3f6db82668157404d19ceafe0cb86cb93ffb10fbd018`  
		Last Modified: Thu, 29 Oct 2026 20:04:52 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2` - linux; ppc64le

```console
$ docker pull cassandra@sha256:964cb851cfd33a5aff756e7af0043f75727cde818498bc31ad87ed378341c3b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179048471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860690a3127e3bdf4c65e890616e141136041beb8a4fa7844b697f4d736bb951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841c837a18eff487593bebf31eeda8cb6ddb6411c633b5986bbdfcaa642416a0`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 53.1 MB (53109919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaee4dec03d4f8424ea57c89c9e1c0f5aa4cdbe48967edb0598b5866ec6b03b`  
		Last Modified: Wed, 28 Oct 2026 09:24:05 GMT  
		Size: 74.3 MB (74340593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07f160ec06c636db9f8e2ddfdc59bae6eb352298482f2fb12e2ba03894c2527`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:d346550e01257e85d28c982845d26cf1e8960ac98b80584198019817d9a76a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8cd932e60178c7c88ab52d9081e015b7aa52cbbda4d3a353f5729ddd2c21cf`

```dockerfile
```

-	Layers:
	-	`sha256:29f6efb252631dd29d7dacb71d3e2bacec9b8fbf300b76a1bd67f3da95bdb4f7`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2988426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f0b70e8fc2b8b5849d2b05224b90d96b660e14071e5316c5d3065748b6c22bf`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 35.9 KB (35943 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2` - linux; s390x

```console
$ docker pull cassandra@sha256:dc0e701351e6a3e218e67dc3326fd0344844f97dc735cf5ccf54b12654961ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170539730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef8b38e187be4ca7403f314136e19a62bd340d5e1b9d1a0f62120308f6985e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:38:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 19:38:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 19:39:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:39:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:39:16 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 19:39:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:39:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 19:40:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 19:40:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 19:40:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 19:40:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:40:14 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 19:40:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511a8fd1d1c553ab5d2068ae4ddf0e9b34b843e1d3bc67a0ad07e2ece1d4cba6`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0106d4a4e67775c5f61452bdce7ec0a3d1410863190515bf58632e243561e0c8`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 15.6 MB (15626930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c53559517b80caeb6b49ffbef68be741477d6d1073294504fa5aacdc48e21c`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 1.3 MB (1284227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e980ccbc1ca790d5ee9915239db62085adcccb1a5be35b27383c594ec0a82b4a`  
		Last Modified: Thu, 29 Oct 2026 19:40:48 GMT  
		Size: 49.4 MB (49362030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7c043dd875d6f37996a18a42d5794616c324ea30cb1237d0765ec5bb7bfb7f`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a6ec6b3eae4b76ab55ee8132bd36d0e874282252990088af36840785490311`  
		Last Modified: Thu, 29 Oct 2026 19:40:49 GMT  
		Size: 74.3 MB (74341157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25855aa7be81e77a86a490a7ff9e3eac2f9b66fa76a4316f65b808a82dbbe2e4`  
		Last Modified: Thu, 29 Oct 2026 19:40:48 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2` - unknown; unknown

```console
$ docker pull cassandra@sha256:ae4591704cddb536aa6fbb93f7504acb0adfbdb1bacbe11c6c58d50f156523e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd62c1539056f871330722971656514797cbc01d6375ac46a8045aff77dacc9`

```dockerfile
```

-	Layers:
	-	`sha256:0b805d18d3ee4064f7198e37d7b735adc38b9856af81a044ae9a98eb2c06846e`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 3.0 MB (2984568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19a46c8fdc34397a575f314e1c8f90f4a9a73d163b95684283276369a6c9955a`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 35.9 KB (35882 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0-alpha2-trixie`

```console
$ docker pull cassandra@sha256:c07bd2e2753077957870959a1444c2859c4cff0f1b848a09d2eb2b854c9afcc2
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
$ docker pull cassandra@sha256:872dd06c16143d18bc13d7934f9bda268c9c67c294a98913c3c99f1149afb9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.4 MB (174361471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0027cb905a9bcf233dbc9686218a7f5837f5ab8bdeee049f0745028c6853d06a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:03:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 20:03:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 20:03:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:03:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:31 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 20:03:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 20:03:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 20:03:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 20:03:51 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 20:03:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9e59dd1f801658f744788f2ea6d5c9749562cc248cf7060cbaa253a2750011`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f29ac85343ee6db216799394c24af9ffac3377155c027e92c07916e1832854`  
		Last Modified: Thu, 29 Oct 2026 20:04:08 GMT  
		Size: 15.7 MB (15652709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34574d3477ecdd155b7345efe22b80aad983447afb7f3784984756aee6d6817b`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 1.3 MB (1310327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236a307d11fa8abfc6fbb8cb381c4f76e5f8a44d59d96f8db512d6579021b468`  
		Last Modified: Thu, 29 Oct 2026 20:04:09 GMT  
		Size: 53.2 MB (53200395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8a44c900b8a6878cac29d3fd2c65b5d0169f4f84b621c9a4e0a9f4e7e78604`  
		Last Modified: Thu, 29 Oct 2026 20:04:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a70591667b574b462b71b4d8f007c81d75347728d3c20fbc702fe9b4af65f6`  
		Last Modified: Thu, 29 Oct 2026 20:04:11 GMT  
		Size: 74.3 MB (74340348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4cfd632e29cff54cf3ea29212e67cb07336a9e81628aa16ed4827c111721da`  
		Last Modified: Thu, 29 Oct 2026 20:04:10 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:44f28070930f449498fb5baed9d54401875b9a11891cec5bd2a13eb61f84e1de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23fc54c559e6d98130b1ea46e0f250bed03e7f5978a3e5bfab53bf291e59841`

```dockerfile
```

-	Layers:
	-	`sha256:1cb4ea36f2f8f3d2901a73c7d979208b436d40a5d9ddde357cfcfec5e5f81532`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 3.0 MB (2985061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b69b9f6990722b17398b470e84e19404763dd4558059b7750ee6a39afa4ba8`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:0de0e726b1a92ad6ac230311b408368147cf5cd9d91cf740197e517c325ee476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173743994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70e5d657307bba78d2b049ee58f35756f9e12fb89e2b0f8e41e058a1bf80f4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:04:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 20:04:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 20:04:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:22 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 20:04:22 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:22 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 20:04:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 20:04:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 20:04:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 20:04:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 20:04:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 20:04:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a4fc7755e4ff7a226de1e8b616123ab5500e0ee345e522ca4255a8986b994f`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faacbb652ae76238db5160087ade9c522b04076217782030036626f2a0a920e3`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 15.5 MB (15542069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50e0a80df7779a40995c363d027e42c1e670fda1f2484eb67cd3581180c8a76`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 1.3 MB (1262342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedfc16f5c7231d338bb3789bfd894805d62a18a1ec128c579a23b5cacdc129a`  
		Last Modified: Thu, 29 Oct 2026 20:04:54 GMT  
		Size: 52.4 MB (52383062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efb2166fb215e72051a229927fee555e4cf82339b21501608e385629d15d085`  
		Last Modified: Thu, 29 Oct 2026 20:04:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adc03b14ac141ec0d7a6a4052a13dd28fe928a0097b0a45e6228227fd3ce555`  
		Last Modified: Thu, 29 Oct 2026 20:04:56 GMT  
		Size: 74.3 MB (74340562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1b8e31ebeb07d90ed90b1aedfb357986ee38b27094a89e974548f2c30df39f`  
		Last Modified: Thu, 29 Oct 2026 20:04:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:c72937f61d3ce26b3cb9a8e27a1e3823078f1bc1f293e89daed3f2dd4a5d1ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395c9eba235c4ae22614fe28ed48583559c0787278a4b61fbd53494ed1f22890`

```dockerfile
```

-	Layers:
	-	`sha256:6cdb92ecc0c2ebf7d93bf33faf1b07b6c078a1ec727cd79d7718a8181cdb58d5`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 3.0 MB (2984769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cb26ba0b5808e72581e3f6db82668157404d19ceafe0cb86cb93ffb10fbd018`  
		Last Modified: Thu, 29 Oct 2026 20:04:52 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:964cb851cfd33a5aff756e7af0043f75727cde818498bc31ad87ed378341c3b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179048471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860690a3127e3bdf4c65e890616e141136041beb8a4fa7844b697f4d736bb951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841c837a18eff487593bebf31eeda8cb6ddb6411c633b5986bbdfcaa642416a0`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 53.1 MB (53109919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaee4dec03d4f8424ea57c89c9e1c0f5aa4cdbe48967edb0598b5866ec6b03b`  
		Last Modified: Wed, 28 Oct 2026 09:24:05 GMT  
		Size: 74.3 MB (74340593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07f160ec06c636db9f8e2ddfdc59bae6eb352298482f2fb12e2ba03894c2527`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:d346550e01257e85d28c982845d26cf1e8960ac98b80584198019817d9a76a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8cd932e60178c7c88ab52d9081e015b7aa52cbbda4d3a353f5729ddd2c21cf`

```dockerfile
```

-	Layers:
	-	`sha256:29f6efb252631dd29d7dacb71d3e2bacec9b8fbf300b76a1bd67f3da95bdb4f7`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2988426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f0b70e8fc2b8b5849d2b05224b90d96b660e14071e5316c5d3065748b6c22bf`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 35.9 KB (35943 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-alpha2-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:dc0e701351e6a3e218e67dc3326fd0344844f97dc735cf5ccf54b12654961ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170539730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef8b38e187be4ca7403f314136e19a62bd340d5e1b9d1a0f62120308f6985e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:38:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 19:38:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 19:39:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:39:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:39:16 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 19:39:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:39:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 19:40:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 19:40:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 19:40:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 19:40:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:40:14 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 19:40:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511a8fd1d1c553ab5d2068ae4ddf0e9b34b843e1d3bc67a0ad07e2ece1d4cba6`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0106d4a4e67775c5f61452bdce7ec0a3d1410863190515bf58632e243561e0c8`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 15.6 MB (15626930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c53559517b80caeb6b49ffbef68be741477d6d1073294504fa5aacdc48e21c`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 1.3 MB (1284227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e980ccbc1ca790d5ee9915239db62085adcccb1a5be35b27383c594ec0a82b4a`  
		Last Modified: Thu, 29 Oct 2026 19:40:48 GMT  
		Size: 49.4 MB (49362030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7c043dd875d6f37996a18a42d5794616c324ea30cb1237d0765ec5bb7bfb7f`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a6ec6b3eae4b76ab55ee8132bd36d0e874282252990088af36840785490311`  
		Last Modified: Thu, 29 Oct 2026 19:40:49 GMT  
		Size: 74.3 MB (74341157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25855aa7be81e77a86a490a7ff9e3eac2f9b66fa76a4316f65b808a82dbbe2e4`  
		Last Modified: Thu, 29 Oct 2026 19:40:48 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-alpha2-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:ae4591704cddb536aa6fbb93f7504acb0adfbdb1bacbe11c6c58d50f156523e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd62c1539056f871330722971656514797cbc01d6375ac46a8045aff77dacc9`

```dockerfile
```

-	Layers:
	-	`sha256:0b805d18d3ee4064f7198e37d7b735adc38b9856af81a044ae9a98eb2c06846e`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 3.0 MB (2984568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19a46c8fdc34397a575f314e1c8f90f4a9a73d163b95684283276369a6c9955a`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 35.9 KB (35882 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:6.0-trixie`

```console
$ docker pull cassandra@sha256:c07bd2e2753077957870959a1444c2859c4cff0f1b848a09d2eb2b854c9afcc2
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
$ docker pull cassandra@sha256:872dd06c16143d18bc13d7934f9bda268c9c67c294a98913c3c99f1149afb9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.4 MB (174361471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0027cb905a9bcf233dbc9686218a7f5837f5ab8bdeee049f0745028c6853d06a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:03:12 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 20:03:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 20:03:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:03:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:03:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:31 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 20:03:31 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:31 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 20:03:31 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 20:03:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 20:03:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 20:03:51 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 20:03:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9e59dd1f801658f744788f2ea6d5c9749562cc248cf7060cbaa253a2750011`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f29ac85343ee6db216799394c24af9ffac3377155c027e92c07916e1832854`  
		Last Modified: Thu, 29 Oct 2026 20:04:08 GMT  
		Size: 15.7 MB (15652709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34574d3477ecdd155b7345efe22b80aad983447afb7f3784984756aee6d6817b`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 1.3 MB (1310327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236a307d11fa8abfc6fbb8cb381c4f76e5f8a44d59d96f8db512d6579021b468`  
		Last Modified: Thu, 29 Oct 2026 20:04:09 GMT  
		Size: 53.2 MB (53200395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8a44c900b8a6878cac29d3fd2c65b5d0169f4f84b621c9a4e0a9f4e7e78604`  
		Last Modified: Thu, 29 Oct 2026 20:04:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a70591667b574b462b71b4d8f007c81d75347728d3c20fbc702fe9b4af65f6`  
		Last Modified: Thu, 29 Oct 2026 20:04:11 GMT  
		Size: 74.3 MB (74340348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4cfd632e29cff54cf3ea29212e67cb07336a9e81628aa16ed4827c111721da`  
		Last Modified: Thu, 29 Oct 2026 20:04:10 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:44f28070930f449498fb5baed9d54401875b9a11891cec5bd2a13eb61f84e1de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23fc54c559e6d98130b1ea46e0f250bed03e7f5978a3e5bfab53bf291e59841`

```dockerfile
```

-	Layers:
	-	`sha256:1cb4ea36f2f8f3d2901a73c7d979208b436d40a5d9ddde357cfcfec5e5f81532`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 3.0 MB (2985061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b69b9f6990722b17398b470e84e19404763dd4558059b7750ee6a39afa4ba8`  
		Last Modified: Thu, 29 Oct 2026 20:04:07 GMT  
		Size: 35.9 KB (35883 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:0de0e726b1a92ad6ac230311b408368147cf5cd9d91cf740197e517c325ee476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173743994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70e5d657307bba78d2b049ee58f35756f9e12fb89e2b0f8e41e058a1bf80f4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:04:02 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 20:04:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 20:04:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:22 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 20:04:22 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:22 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 20:04:22 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 20:04:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 20:04:39 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 20:04:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 20:04:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 20:04:39 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 20:04:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a4fc7755e4ff7a226de1e8b616123ab5500e0ee345e522ca4255a8986b994f`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faacbb652ae76238db5160087ade9c522b04076217782030036626f2a0a920e3`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 15.5 MB (15542069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50e0a80df7779a40995c363d027e42c1e670fda1f2484eb67cd3581180c8a76`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 1.3 MB (1262342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedfc16f5c7231d338bb3789bfd894805d62a18a1ec128c579a23b5cacdc129a`  
		Last Modified: Thu, 29 Oct 2026 20:04:54 GMT  
		Size: 52.4 MB (52383062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efb2166fb215e72051a229927fee555e4cf82339b21501608e385629d15d085`  
		Last Modified: Thu, 29 Oct 2026 20:04:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adc03b14ac141ec0d7a6a4052a13dd28fe928a0097b0a45e6228227fd3ce555`  
		Last Modified: Thu, 29 Oct 2026 20:04:56 GMT  
		Size: 74.3 MB (74340562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1b8e31ebeb07d90ed90b1aedfb357986ee38b27094a89e974548f2c30df39f`  
		Last Modified: Thu, 29 Oct 2026 20:04:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:c72937f61d3ce26b3cb9a8e27a1e3823078f1bc1f293e89daed3f2dd4a5d1ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395c9eba235c4ae22614fe28ed48583559c0787278a4b61fbd53494ed1f22890`

```dockerfile
```

-	Layers:
	-	`sha256:6cdb92ecc0c2ebf7d93bf33faf1b07b6c078a1ec727cd79d7718a8181cdb58d5`  
		Last Modified: Thu, 29 Oct 2026 20:04:53 GMT  
		Size: 3.0 MB (2984769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cb26ba0b5808e72581e3f6db82668157404d19ceafe0cb86cb93ffb10fbd018`  
		Last Modified: Thu, 29 Oct 2026 20:04:52 GMT  
		Size: 36.1 KB (36073 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:964cb851cfd33a5aff756e7af0043f75727cde818498bc31ad87ed378341c3b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179048471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860690a3127e3bdf4c65e890616e141136041beb8a4fa7844b697f4d736bb951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841c837a18eff487593bebf31eeda8cb6ddb6411c633b5986bbdfcaa642416a0`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 53.1 MB (53109919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaee4dec03d4f8424ea57c89c9e1c0f5aa4cdbe48967edb0598b5866ec6b03b`  
		Last Modified: Wed, 28 Oct 2026 09:24:05 GMT  
		Size: 74.3 MB (74340593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07f160ec06c636db9f8e2ddfdc59bae6eb352298482f2fb12e2ba03894c2527`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:d346550e01257e85d28c982845d26cf1e8960ac98b80584198019817d9a76a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8cd932e60178c7c88ab52d9081e015b7aa52cbbda4d3a353f5729ddd2c21cf`

```dockerfile
```

-	Layers:
	-	`sha256:29f6efb252631dd29d7dacb71d3e2bacec9b8fbf300b76a1bd67f3da95bdb4f7`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2988426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f0b70e8fc2b8b5849d2b05224b90d96b660e14071e5316c5d3065748b6c22bf`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 35.9 KB (35943 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:6.0-trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:dc0e701351e6a3e218e67dc3326fd0344844f97dc735cf5ccf54b12654961ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170539730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef8b38e187be4ca7403f314136e19a62bd340d5e1b9d1a0f62120308f6985e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:38:04 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 29 Oct 2026 19:38:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV GOSU_VERSION=1.19
# Thu, 29 Oct 2026 19:39:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:39:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:39:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:39:16 GMT
RUN java --version # buildkit
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Thu, 29 Oct 2026 19:39:16 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:39:16 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_VERSION=6.0-alpha2
# Thu, 29 Oct 2026 19:39:16 GMT
ENV CASSANDRA_SHA512=64577a7e48068f6602396370765898364712cf22c95632c11e216b729c3db3e1eefe5d74ba173dd18a995b9c3964af455c0ca8bdecd3975120f3521754985734
# Thu, 29 Oct 2026 19:40:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Thu, 29 Oct 2026 19:40:13 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Oct 2026 19:40:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 19:40:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:40:14 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Thu, 29 Oct 2026 19:40:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511a8fd1d1c553ab5d2068ae4ddf0e9b34b843e1d3bc67a0ad07e2ece1d4cba6`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0106d4a4e67775c5f61452bdce7ec0a3d1410863190515bf58632e243561e0c8`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 15.6 MB (15626930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c53559517b80caeb6b49ffbef68be741477d6d1073294504fa5aacdc48e21c`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 1.3 MB (1284227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e980ccbc1ca790d5ee9915239db62085adcccb1a5be35b27383c594ec0a82b4a`  
		Last Modified: Thu, 29 Oct 2026 19:40:48 GMT  
		Size: 49.4 MB (49362030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7c043dd875d6f37996a18a42d5794616c324ea30cb1237d0765ec5bb7bfb7f`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a6ec6b3eae4b76ab55ee8132bd36d0e874282252990088af36840785490311`  
		Last Modified: Thu, 29 Oct 2026 19:40:49 GMT  
		Size: 74.3 MB (74341157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25855aa7be81e77a86a490a7ff9e3eac2f9b66fa76a4316f65b808a82dbbe2e4`  
		Last Modified: Thu, 29 Oct 2026 19:40:48 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:6.0-trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:ae4591704cddb536aa6fbb93f7504acb0adfbdb1bacbe11c6c58d50f156523e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd62c1539056f871330722971656514797cbc01d6375ac46a8045aff77dacc9`

```dockerfile
```

-	Layers:
	-	`sha256:0b805d18d3ee4064f7198e37d7b735adc38b9856af81a044ae9a98eb2c06846e`  
		Last Modified: Thu, 29 Oct 2026 19:40:47 GMT  
		Size: 3.0 MB (2984568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19a46c8fdc34397a575f314e1c8f90f4a9a73d163b95684283276369a6c9955a`  
		Last Modified: Thu, 29 Oct 2026 19:40:46 GMT  
		Size: 35.9 KB (35882 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:ae4cc2e4b62a5b2a2dd1645ba827cb50c589cc7531bcffe8b8b60ac3b1adc79d
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
$ docker pull cassandra@sha256:b85d75da9e1069317540e64b70a7376e633917c40288c93e2514eeadf8b7020b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168277802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc06f68aeda10243280761b99da9ec3e50cf96feed5395f5174dfabfb582a4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:07:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:08:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe9a0916b35845a1baf84968e3f8cc2db8a14b1dcb4d7096d4ddf41e64815c5`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75692ebe810f9e2db733af0606c1cd3dbc9d456228335381c07429966e4ed9a`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 15.7 MB (15652764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bdde260d91a2683389ee0e0c285a28913c3f772e7a769784cf0acd0c4824ae`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.3 MB (1310354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12029290fb828bafd3371362d165101048ca7bea528e5baca7662ef58f92e80`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 47.5 MB (47510273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc90555bc88141ab6217610243bbfc3b8b29ddeb44b28e755a8182d169f27af`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708829c65612b5ed51f6925248ed94f5f88c51919ad5fb23c7c09feabb9dce55`  
		Last Modified: Wed, 28 Oct 2026 02:08:52 GMT  
		Size: 73.9 MB (73946713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae994cbad04632cb53fb9cf324d7888bdedde5673008cb3128d0157766a81ca6`  
		Last Modified: Wed, 28 Oct 2026 02:08:51 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:97f71933cf8c7c2e6b0272cd17a896b660506f7525040bb23d7b67ce6dd5c6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cb035435b9c6708ced38f06f9e6921bc6b7ee3f6c1d6a321915633c02b6aff`

```dockerfile
```

-	Layers:
	-	`sha256:a141bdcba853eeab36704da5c4b8b89f0ec66d51039e4c699f1e6a106ce9164f`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b301670d807282d2e02e9660a824c0d89d3da5fc7b3d10026125803b23dc634`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ad1be4557562a88d95020d1e26a1f3350d20c677bdb80babd79219e71201bb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160992227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00d7a0fbe8767cdfcaa68f56dea63a210410db730eefb8ff4bf6666a67c1929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:57:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:58:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad70a5314a80785fb98edbb058e0901842aefeae6a5b74b22dccbda68c70fe9`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf95458dce983adb3d879fdeac78a04c1508b97be973a7b598609cee7b8e8a9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 14.4 MB (14402338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22038e546bdbade60f8bc6cba389da029fc75ba776ef3c6949c3613c430ad88`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.3 MB (1275120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8541d41af6beb679398b27f8ab028d8acc96ccc4523158a5566bf6d7b4d1c1`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 45.1 MB (45093435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b21c4e39762be3d917a2b4f88230251e372b4c3711c20a0b0a888e28bbbc533`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04e925d5a0c2c1150997c8b85f4f7d42f55b0d4c7cc462b21f4a9ea1c8bea80`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 73.9 MB (73946703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98ce2d7f31062b457aa814106248114081df4f265c01cadfa9391368ac631f`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:834f9dc2ba32b25bc4afc6991e2d36d290d84d559c11ce853a828db364889ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f62ac5eae2adc17ae8bef058c8a82cce79c9e03bf420bf0b2cea0ad445b7764`

```dockerfile
```

-	Layers:
	-	`sha256:f384182381eb55a7b2ac5f48adab23edcb5fc0a52bfacc30fc06161583f3f06c`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e8d754239bf3ba90faac757f6d9cb47b135cf2d3b9c351441ca1016cd7f1f2f`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:9e5e347403d3ae9558b8b801b8a3a79ba2fe646738a2b1fb37ca1bf3cc5a1902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167963690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7656d6589457a2ec96e8fee1576f99de5babfa1d21dc5d10c176d1a506d9bd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:14:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:14:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:14:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:14:54 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:14:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e111b107e656c4a9d72ab57d9c542e12d2d90dbb854b20fe7ff08d09d60ef8`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f002cc8f70f330d7f6886238e1b077ebd3725c588c339f7faa4f56116d66bb`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 15.5 MB (15542063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b1ca0ee9b5a77626cf85688b53a8920fc1129ea860b0273b6c4441a37c287`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.3 MB (1262311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d4eb46168b163c28c4841e4a439f9101faada48d0139534f0abf178bfdec49`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 47.0 MB (46996586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a42a5fbe7fee540e71df5325f3819efedcf60ede56002e1347631264c6d3f7`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aada46ab6b7cb9c6fdaec8d6bb0d0e2824caa9479871d8f41372a0cfd806fc3`  
		Last Modified: Wed, 28 Oct 2026 02:15:11 GMT  
		Size: 73.9 MB (73946775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da986d836f19f8d9b3324a5ad7f79d734d28a3f220534654f83ceab5c53439f0`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:7282fe86e62c202b76c1a25c9d6a07a9856c2798b9450c79ef3bbbf30e69ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034fe404158c11e547206c1a321f133cfcbe043f73d325a79f420efe7b760f41`

```dockerfile
```

-	Layers:
	-	`sha256:1421d1f678e6175576d294bead88459844ad25a48f41fd7c6e413753549e957a`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28455c561e453e67d54b0ede238b926ed577e7db4b64f4dd4fed2d5d209b837`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b75d2f96f285499f6644f187e4d1eb4223d207ddd7c8f602c5a51951d62be1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172966789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adfd11f87144bc6478351f474b96bb6825b4e25ecacd7c49fa4d3ad8c98b546`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb63e0c97dfe3db21dcec6e13e51c2411d81adc278b2d15646ab0834b338791`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 47.4 MB (47421928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2164af09dbcbad966530cf0ec59704f1cd9ee7d5b5c65a86bba4ed267ea1f`  
		Last Modified: Wed, 28 Oct 2026 09:24:04 GMT  
		Size: 73.9 MB (73946902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb195d30efbfa5be04bf536cfaeea27b117cfdb75a77a550bae91f8bf420c8`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:910c6e65b55ba20639ada345b327e1e51fc0666b96bc1b88ee3a318e1c3ba65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea3543248abd3f78032c6055f7b1a4b30a88d29f97cbd0a1c1628c6f3dfd138`

```dockerfile
```

-	Layers:
	-	`sha256:d1ae8289684d8ecd7ac6811e6fdbfd5e606d1e7eb44ffaed790a9b47e33cc627`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a71a14576d658d5eb9809af36e925cc4a11781605b5e0dcf638ef2ae0e3f3deb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:latest` - linux; s390x

```console
$ docker pull cassandra@sha256:8fb34573750d3918d4938973ceb11699958eeed61b998a99be91dac7d84188e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165285030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed2587e406d659eff3b992538b916a6e74a8cb3330ecc53930fd71ac53d781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:52:50 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 03:52:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:53:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 03:53:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 03:54:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 03:54:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 03:54:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:54:05 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 03:54:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251435a245b9d322832a6c7d86d0a2711691236fa740e1cd7fbee4b2dc2076d2`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6814fdea72b2928d44ea44958dbc1eb1ba21a08241cbb5c97583ea9ba943c897`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 15.6 MB (15626451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65209e9f2050b60023d140d64257a26e6faf3a6067b37c36d1acc69ab65c5d29`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.3 MB (1283914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9282fe9f826f367e9b7f6ba1da89554fdde62b834d6301f0dd493e82a70491`  
		Last Modified: Wed, 28 Oct 2026 03:54:23 GMT  
		Size: 44.5 MB (44502328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3086affe6378100129cb8d47d0e000c09558ad608ab5dc0d2c91405bda0c9d44`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973262ef9a3a27facd5aad1d1072c43492dfe6bd9dc770ec83f4fed458db721d`  
		Last Modified: Wed, 28 Oct 2026 03:54:24 GMT  
		Size: 73.9 MB (73946953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ce7039722608d458a2505af5faf7c8ab9b172e8dfd7dd54662c46c924ebd5`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:latest` - unknown; unknown

```console
$ docker pull cassandra@sha256:90f01f9eccdd8fa7e4e5a5ec9e88bfe060e4699f1fbada331f819765ddd11ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a778ac0b8dcc0e6d6e5e82fd59f3e0e5be57bcc45e2b113d93115622550cf424`

```dockerfile
```

-	Layers:
	-	`sha256:4e93526b9ed08a3a4c96f00c372732575a6120620be0060b5e264d8298a030d0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca3aa587a7c42f4b1381e33a6fffc38716f1c58a623f86ffcbe730b9dbf7dca0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json

## `cassandra:trixie`

```console
$ docker pull cassandra@sha256:ae4cc2e4b62a5b2a2dd1645ba827cb50c589cc7531bcffe8b8b60ac3b1adc79d
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
$ docker pull cassandra@sha256:b85d75da9e1069317540e64b70a7376e633917c40288c93e2514eeadf8b7020b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168277802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc06f68aeda10243280761b99da9ec3e50cf96feed5395f5174dfabfb582a4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:07:58 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:08:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:08:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:08:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:08:17 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:08:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:08:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:08:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:08:36 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:08:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe9a0916b35845a1baf84968e3f8cc2db8a14b1dcb4d7096d4ddf41e64815c5`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75692ebe810f9e2db733af0606c1cd3dbc9d456228335381c07429966e4ed9a`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 15.7 MB (15652764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bdde260d91a2683389ee0e0c285a28913c3f772e7a769784cf0acd0c4824ae`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 1.3 MB (1310354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12029290fb828bafd3371362d165101048ca7bea528e5baca7662ef58f92e80`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 47.5 MB (47510273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc90555bc88141ab6217610243bbfc3b8b29ddeb44b28e755a8182d169f27af`  
		Last Modified: Wed, 28 Oct 2026 02:08:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708829c65612b5ed51f6925248ed94f5f88c51919ad5fb23c7c09feabb9dce55`  
		Last Modified: Wed, 28 Oct 2026 02:08:52 GMT  
		Size: 73.9 MB (73946713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae994cbad04632cb53fb9cf324d7888bdedde5673008cb3128d0157766a81ca6`  
		Last Modified: Wed, 28 Oct 2026 02:08:51 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:97f71933cf8c7c2e6b0272cd17a896b660506f7525040bb23d7b67ce6dd5c6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cb035435b9c6708ced38f06f9e6921bc6b7ee3f6c1d6a321915633c02b6aff`

```dockerfile
```

-	Layers:
	-	`sha256:a141bdcba853eeab36704da5c4b8b89f0ec66d51039e4c699f1e6a106ce9164f`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 3.0 MB (2975969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b301670d807282d2e02e9660a824c0d89d3da5fc7b3d10026125803b23dc634`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:ad1be4557562a88d95020d1e26a1f3350d20c677bdb80babd79219e71201bb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160992227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00d7a0fbe8767cdfcaa68f56dea63a210410db730eefb8ff4bf6666a67c1929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:57:25 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:57:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:57:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:57:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:57:49 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:57:49 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:57:49 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:58:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:58:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:58:18 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:58:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad70a5314a80785fb98edbb058e0901842aefeae6a5b74b22dccbda68c70fe9`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf95458dce983adb3d879fdeac78a04c1508b97be973a7b598609cee7b8e8a9`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 14.4 MB (14402338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22038e546bdbade60f8bc6cba389da029fc75ba776ef3c6949c3613c430ad88`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 1.3 MB (1275120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8541d41af6beb679398b27f8ab028d8acc96ccc4523158a5566bf6d7b4d1c1`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 45.1 MB (45093435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b21c4e39762be3d917a2b4f88230251e372b4c3711c20a0b0a888e28bbbc533`  
		Last Modified: Wed, 28 Oct 2026 02:58:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04e925d5a0c2c1150997c8b85f4f7d42f55b0d4c7cc462b21f4a9ea1c8bea80`  
		Last Modified: Wed, 28 Oct 2026 02:58:33 GMT  
		Size: 73.9 MB (73946703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98ce2d7f31062b457aa814106248114081df4f265c01cadfa9391368ac631f`  
		Last Modified: Wed, 28 Oct 2026 02:58:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:834f9dc2ba32b25bc4afc6991e2d36d290d84d559c11ce853a828db364889ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3014873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f62ac5eae2adc17ae8bef058c8a82cce79c9e03bf420bf0b2cea0ad445b7764`

```dockerfile
```

-	Layers:
	-	`sha256:f384182381eb55a7b2ac5f48adab23edcb5fc0a52bfacc30fc06161583f3f06c`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 3.0 MB (2977623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e8d754239bf3ba90faac757f6d9cb47b135cf2d3b9c351441ca1016cd7f1f2f`  
		Last Modified: Wed, 28 Oct 2026 02:58:30 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:9e5e347403d3ae9558b8b801b8a3a79ba2fe646738a2b1fb37ca1bf3cc5a1902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167963690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7656d6589457a2ec96e8fee1576f99de5babfa1d21dc5d10c176d1a506d9bd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:05 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 02:14:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:14:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 02:14:26 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:26 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 02:14:26 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 02:14:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 02:14:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:14:54 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 02:14:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e111b107e656c4a9d72ab57d9c542e12d2d90dbb854b20fe7ff08d09d60ef8`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f002cc8f70f330d7f6886238e1b077ebd3725c588c339f7faa4f56116d66bb`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 15.5 MB (15542063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b1ca0ee9b5a77626cf85688b53a8920fc1129ea860b0273b6c4441a37c287`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 1.3 MB (1262311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d4eb46168b163c28c4841e4a439f9101faada48d0139534f0abf178bfdec49`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 47.0 MB (46996586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a42a5fbe7fee540e71df5325f3819efedcf60ede56002e1347631264c6d3f7`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aada46ab6b7cb9c6fdaec8d6bb0d0e2824caa9479871d8f41372a0cfd806fc3`  
		Last Modified: Wed, 28 Oct 2026 02:15:11 GMT  
		Size: 73.9 MB (73946775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da986d836f19f8d9b3324a5ad7f79d734d28a3f220534654f83ceab5c53439f0`  
		Last Modified: Wed, 28 Oct 2026 02:15:10 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:7282fe86e62c202b76c1a25c9d6a07a9856c2798b9450c79ef3bbbf30e69ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034fe404158c11e547206c1a321f133cfcbe043f73d325a79f420efe7b760f41`

```dockerfile
```

-	Layers:
	-	`sha256:1421d1f678e6175576d294bead88459844ad25a48f41fd7c6e413753549e957a`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 3.0 MB (2975725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28455c561e453e67d54b0ede238b926ed577e7db4b64f4dd4fed2d5d209b837`  
		Last Modified: Wed, 28 Oct 2026 02:15:08 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b75d2f96f285499f6644f187e4d1eb4223d207ddd7c8f602c5a51951d62be1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172966789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adfd11f87144bc6478351f474b96bb6825b4e25ecacd7c49fa4d3ad8c98b546`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:21:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 09:22:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 09:22:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 09:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 09:22:47 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:22:47 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 09:22:47 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 09:23:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 09:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 09:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 09:23:30 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 09:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8cb970b0ec7bfbcc2c390ef8b00ed5f73f3fea2628599b5d997cd915b81f`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d9e02a69f9a3395317a287e9b87d9434899af19698aa17f70e93204e0d8afb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 16.7 MB (16662045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78fe947807c70d8bc96b4f95b9b67e30f30d19886d07558de6031226782bcc`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 1.3 MB (1267190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb63e0c97dfe3db21dcec6e13e51c2411d81adc278b2d15646ab0834b338791`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 47.4 MB (47421928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5577b3e186b23ab7cc13466bed899f670c66cf000a1505dd55498049d0e688a9`  
		Last Modified: Wed, 28 Oct 2026 09:24:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2164af09dbcbad966530cf0ec59704f1cd9ee7d5b5c65a86bba4ed267ea1f`  
		Last Modified: Wed, 28 Oct 2026 09:24:04 GMT  
		Size: 73.9 MB (73946902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb195d30efbfa5be04bf536cfaeea27b117cfdb75a77a550bae91f8bf420c8`  
		Last Modified: Wed, 28 Oct 2026 09:24:03 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:910c6e65b55ba20639ada345b327e1e51fc0666b96bc1b88ee3a318e1c3ba65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3016500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea3543248abd3f78032c6055f7b1a4b30a88d29f97cbd0a1c1628c6f3dfd138`

```dockerfile
```

-	Layers:
	-	`sha256:d1ae8289684d8ecd7ac6811e6fdbfd5e606d1e7eb44ffaed790a9b47e33cc627`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 3.0 MB (2979350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a71a14576d658d5eb9809af36e925cc4a11781605b5e0dcf638ef2ae0e3f3deb`  
		Last Modified: Wed, 28 Oct 2026 09:24:01 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:8fb34573750d3918d4938973ceb11699958eeed61b998a99be91dac7d84188e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165285030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed2587e406d659eff3b992538b916a6e74a8cb3330ecc53930fd71ac53d781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:52:50 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Wed, 28 Oct 2026 03:52:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:53:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:53:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 03:53:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
RUN java --version # buildkit
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Wed, 28 Oct 2026 03:53:50 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:53:50 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_VERSION=5.0.9
# Wed, 28 Oct 2026 03:53:50 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Wed, 28 Oct 2026 03:54:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Wed, 28 Oct 2026 03:54:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Oct 2026 03:54:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:54:05 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Wed, 28 Oct 2026 03:54:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251435a245b9d322832a6c7d86d0a2711691236fa740e1cd7fbee4b2dc2076d2`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6814fdea72b2928d44ea44958dbc1eb1ba21a08241cbb5c97583ea9ba943c897`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 15.6 MB (15626451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65209e9f2050b60023d140d64257a26e6faf3a6067b37c36d1acc69ab65c5d29`  
		Last Modified: Wed, 28 Oct 2026 03:53:43 GMT  
		Size: 1.3 MB (1283914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9282fe9f826f367e9b7f6ba1da89554fdde62b834d6301f0dd493e82a70491`  
		Last Modified: Wed, 28 Oct 2026 03:54:23 GMT  
		Size: 44.5 MB (44502328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3086affe6378100129cb8d47d0e000c09558ad608ab5dc0d2c91405bda0c9d44`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973262ef9a3a27facd5aad1d1072c43492dfe6bd9dc770ec83f4fed458db721d`  
		Last Modified: Wed, 28 Oct 2026 03:54:24 GMT  
		Size: 73.9 MB (73946953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ce7039722608d458a2505af5faf7c8ab9b172e8dfd7dd54662c46c924ebd5`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:90f01f9eccdd8fa7e4e5a5ec9e88bfe060e4699f1fbada331f819765ddd11ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3013785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a778ac0b8dcc0e6d6e5e82fd59f3e0e5be57bcc45e2b113d93115622550cf424`

```dockerfile
```

-	Layers:
	-	`sha256:4e93526b9ed08a3a4c96f00c372732575a6120620be0060b5e264d8298a030d0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 3.0 MB (2976722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca3aa587a7c42f4b1381e33a6fffc38716f1c58a623f86ffcbe730b9dbf7dca0`  
		Last Modified: Wed, 28 Oct 2026 03:54:22 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json
