## `cassandra:trixie`

```console
$ docker pull cassandra@sha256:c4d4c9c94af6dfe6efcd41e30308f267193955a3ff6bba8637b118824a495e34
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
$ docker pull cassandra@sha256:3af0311a4fb0446ea8ad9aa71212269bcfb0a27cc2064da75a214e6e8e578fa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168184393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d178f15208328f2f841e79cafc1997a6cc8b5a870c37447a2de0501d827ac9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:08:16 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Fri, 21 Aug 2026 19:08:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Fri, 21 Aug 2026 19:08:33 GMT
ENV GOSU_VERSION=1.19
# Fri, 21 Aug 2026 19:08:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 21 Aug 2026 19:08:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:33 GMT
RUN java --version # buildkit
# Fri, 21 Aug 2026 19:08:33 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Fri, 21 Aug 2026 19:08:33 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Fri, 21 Aug 2026 19:08:33 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:33 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Fri, 21 Aug 2026 19:08:33 GMT
ENV CASSANDRA_VERSION=5.0.9
# Fri, 21 Aug 2026 19:08:33 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Fri, 21 Aug 2026 19:08:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Fri, 21 Aug 2026 19:08:52 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Aug 2026 19:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 21 Aug 2026 19:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 19:08:52 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Fri, 21 Aug 2026 19:08:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94021d49babb34a4f34f82d8c2091cbcde8498ac70b835ae41b3b31175c9f98f`  
		Last Modified: Fri, 21 Aug 2026 19:09:05 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab41ff2f0c1f20dcb98ba87b0b527ca323c58e52766e353aa8c758d216666dd7`  
		Last Modified: Fri, 21 Aug 2026 19:09:06 GMT  
		Size: 15.6 MB (15634443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c08b5772b0ac3b8318966fbb11e00baa62e398d1861ea770beb126aa0a847d69`  
		Last Modified: Fri, 21 Aug 2026 19:09:05 GMT  
		Size: 1.3 MB (1310238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64035a18d37d9ef78ac6d3b5dd6a25e9a068e12587cd5255b6a361ef4bf7da6b`  
		Last Modified: Fri, 21 Aug 2026 19:09:07 GMT  
		Size: 47.5 MB (47509962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15587da5eaadc500182faddc48e2b478e04fd19db1bdfa0157f031084f8359fb`  
		Last Modified: Fri, 21 Aug 2026 19:09:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cde8d61ece786a5ffedb0f9796bef52bb5d3ca09167b58fc720f5622e51bae1`  
		Last Modified: Fri, 21 Aug 2026 19:09:09 GMT  
		Size: 73.9 MB (73946522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad76bec09b19bbee5d94ff584faea2831ca017aa8cab4b4931e4bf5c853505a`  
		Last Modified: Fri, 21 Aug 2026 19:09:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:cc21de1d440cedec0b0152415c408ac43540034feacde3a5cb669110c6a6c723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3007117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a2a0d57fec3e2d084c1e45e95e7d0f4c63fee36ca8dc585450e0a6a6be3d45`

```dockerfile
```

-	Layers:
	-	`sha256:73b004bdb2f925b897ac4327aebed53333ac585159540c23eb0a5a3157556793`  
		Last Modified: Fri, 21 Aug 2026 19:09:05 GMT  
		Size: 3.0 MB (2970053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6350b826221585ef06defe3bb72fe605e2a24f5f2c9acc4a5b77363cdb217d69`  
		Last Modified: Fri, 21 Aug 2026 19:09:05 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:c7a719d131e4980be1e34770da21037ebcf9cfa05833da45fe4361c192fababb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.9 MB (160925025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e5168b20c542ad9cd3eefcd9e555cfa35719e0caba4346f0e1be6fbbf231065`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:58:47 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Fri, 21 Aug 2026 18:59:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Fri, 21 Aug 2026 18:59:16 GMT
ENV GOSU_VERSION=1.19
# Fri, 21 Aug 2026 18:59:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 21 Aug 2026 18:59:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:59:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:59:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:59:17 GMT
RUN java --version # buildkit
# Fri, 21 Aug 2026 18:59:17 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Fri, 21 Aug 2026 18:59:17 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Fri, 21 Aug 2026 18:59:17 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:59:17 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Fri, 21 Aug 2026 18:59:17 GMT
ENV CASSANDRA_VERSION=5.0.9
# Fri, 21 Aug 2026 18:59:17 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Fri, 21 Aug 2026 18:59:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Fri, 21 Aug 2026 18:59:40 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Aug 2026 18:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 21 Aug 2026 18:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:59:40 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Fri, 21 Aug 2026 18:59:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ce8ddbd8303e68b8bac591c34729395c680a552d9798fc5c59cee9458c24dc`  
		Last Modified: Fri, 21 Aug 2026 18:59:38 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d74e9aca74372f3fba1b4d1115bc23245d0f16fc7dc02ce3730eb99886ba60f`  
		Last Modified: Fri, 21 Aug 2026 18:59:53 GMT  
		Size: 14.4 MB (14401614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13fe82b8f4ee6e3df5609c56cfd5e4a13b4b6626dcf8728de6a8381c69bcbc3d`  
		Last Modified: Fri, 21 Aug 2026 18:59:53 GMT  
		Size: 1.3 MB (1275117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6adfef68b90861f9da29fca00ef415d5596aa9afa78537d1309a3acff52aee`  
		Last Modified: Fri, 21 Aug 2026 18:59:54 GMT  
		Size: 45.1 MB (45092719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68410e5791b66c419b19c3f5ebaf58670df52cdc77b0d1b26bf50b0b3898c4e7`  
		Last Modified: Fri, 21 Aug 2026 18:59:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acffe97dfe580dd0020c9da196b686580061fe537b2f83c85432f004a2f19ed`  
		Last Modified: Fri, 21 Aug 2026 18:59:56 GMT  
		Size: 73.9 MB (73946743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3bac7d87104d51056a0ca2355bb00cee053190121645d74153bcd6e5203f30`  
		Last Modified: Fri, 21 Aug 2026 18:59:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:be4a56483ceeeb4a3b13172b966ff95e9ec8ee2b8821aa94219e704bfc1ae1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3008957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2181e18d7f99103550382edee06414424dc1bab601cb1638109d32a12e8e2f38`

```dockerfile
```

-	Layers:
	-	`sha256:984479b7dafbfe972068e414be4e1e56a9d2966a0d0bd25547b27bd7a4b73c0f`  
		Last Modified: Fri, 21 Aug 2026 18:59:53 GMT  
		Size: 3.0 MB (2971707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:231853c72a41cd0c083aa195812ed36db4c878e65632d279206f8ff77e351e54`  
		Last Modified: Fri, 21 Aug 2026 18:59:52 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4b728de276cbee33635c92fe400163541e2854978969dc8df41965338022ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167877500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7833c6cb542c570827438eb5d92e834efb63057f6f17c7789be1fb02dd3ad5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:59:22 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Fri, 21 Aug 2026 18:59:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Fri, 21 Aug 2026 18:59:42 GMT
ENV GOSU_VERSION=1.19
# Fri, 21 Aug 2026 18:59:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 21 Aug 2026 18:59:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:59:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:59:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:59:43 GMT
RUN java --version # buildkit
# Fri, 21 Aug 2026 18:59:43 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Fri, 21 Aug 2026 18:59:43 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Fri, 21 Aug 2026 18:59:43 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:59:43 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Fri, 21 Aug 2026 18:59:43 GMT
ENV CASSANDRA_VERSION=5.0.9
# Fri, 21 Aug 2026 18:59:43 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Fri, 21 Aug 2026 19:00:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Fri, 21 Aug 2026 19:00:01 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Aug 2026 19:00:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 21 Aug 2026 19:00:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 19:00:01 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Fri, 21 Aug 2026 19:00:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e55c27db89b65ff05a579ef79bdc0d546b31df1914dbcdb705370d62dbffe3f2`  
		Last Modified: Fri, 21 Aug 2026 19:00:14 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eeb831f6b8ce3a53c2a1073c3a964fc91548b56cc2e1a372fcc3167d9bf1d78`  
		Last Modified: Fri, 21 Aug 2026 19:00:15 GMT  
		Size: 15.5 MB (15525833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34df67bad7a66d00cc550ae1890c135dcdeba537528d8baf0de7376aa44e8ced`  
		Last Modified: Fri, 21 Aug 2026 19:00:14 GMT  
		Size: 1.3 MB (1262327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d16a0363d8c3aceb6a02fb67d48a7a9727af6af075d5a47ec51816e5291821`  
		Last Modified: Fri, 21 Aug 2026 19:00:16 GMT  
		Size: 47.0 MB (46996534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896ad53b05c49b4cec1783b1500783accfe0e842dba2084a7fc1721b4b87ad78`  
		Last Modified: Fri, 21 Aug 2026 19:00:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53dc7513595b294b62dbcce5372d4138479c9186d630dbc6d762296fc442b737`  
		Last Modified: Fri, 21 Aug 2026 19:00:19 GMT  
		Size: 73.9 MB (73946737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a6bc8f312837400a50eb0cab201263a094801f757ee344aec2213d76981b3a`  
		Last Modified: Fri, 21 Aug 2026 19:00:17 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:c5f778c39a7fcbe8ab81d449c46487363cd49523f724a07f60be5589f5dd894a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3007111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb5d68d64e9b5a56c8378ac6bb7c49af3020b199635bf37e8c8bca770dc85ad`

```dockerfile
```

-	Layers:
	-	`sha256:c1d36119fc0cd14af2b04edb15cf0cde5ca42d0784563b068b918df89cd39e00`  
		Last Modified: Fri, 21 Aug 2026 19:00:15 GMT  
		Size: 3.0 MB (2969809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dbe76188723eda6c6b84b74e8b66647f1cdf8aeac89aab81c902647d4f58a1e`  
		Last Modified: Fri, 21 Aug 2026 19:00:15 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:076659bfcd393f9951b45be85f0edadd66e9c134ac0e17443b254e3fcdc4d738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172892018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0ecbd1a314707872d2fc3d96940ac0bc4c637ddc6df2ffc75a8a663008f649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 00:41:50 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Thu, 20 Aug 2026 00:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Thu, 20 Aug 2026 00:42:35 GMT
ENV GOSU_VERSION=1.19
# Thu, 20 Aug 2026 00:42:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 20 Aug 2026 00:42:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 22:39:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 22:39:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 22:39:37 GMT
RUN java --version # buildkit
# Fri, 21 Aug 2026 22:39:37 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Fri, 21 Aug 2026 22:39:37 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Fri, 21 Aug 2026 22:39:37 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 22:39:37 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Fri, 21 Aug 2026 22:39:37 GMT
ENV CASSANDRA_VERSION=5.0.9
# Fri, 21 Aug 2026 22:39:37 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Fri, 21 Aug 2026 22:40:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Fri, 21 Aug 2026 22:40:16 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Aug 2026 22:40:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 21 Aug 2026 22:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 22:40:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Fri, 21 Aug 2026 22:40:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80851de6f23c3fe7b203578f170f83af75997eee11328cb1a10ac4fc449f3004`  
		Last Modified: Thu, 20 Aug 2026 00:43:44 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4d663c8ef470ee15cbe5d6dff04bc9768b80c90c8f89a1d13fa522a623f4fe`  
		Last Modified: Thu, 20 Aug 2026 00:43:45 GMT  
		Size: 16.7 MB (16651769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64752f791f550d4ee7409dc6d321a3fd3a8c7e9050174bab72633b75c73b257`  
		Last Modified: Thu, 20 Aug 2026 00:43:44 GMT  
		Size: 1.3 MB (1267185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e958f60a73bf6b847fd10dac18c50650a79ab6972c2ada8873f0cad59a986127`  
		Last Modified: Fri, 21 Aug 2026 22:40:56 GMT  
		Size: 47.4 MB (47422391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725156b148b76a22d2c318871618b825170dc2d2a950b4384e3cd6ac81cf0c08`  
		Last Modified: Fri, 21 Aug 2026 22:40:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5da48ac2e88decf3c83a7ebe810d32037e4a6a11caa0c0e5042d6a877c14f68`  
		Last Modified: Fri, 21 Aug 2026 22:40:57 GMT  
		Size: 73.9 MB (73946864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8a57bf115bbfafb3096a828b966f8ab68887c891ee0db74896994711df0639`  
		Last Modified: Fri, 21 Aug 2026 22:40:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:2b36bac63accc1e8924beda1f31b741c2bfca8c9475fdf6fc244f025d1ca6884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3010584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50a6bc64cd70e62c05e1b1b186a4bbe4a009c809e135e0e8021df35462f0dd1`

```dockerfile
```

-	Layers:
	-	`sha256:00e6e90c86388096692ab2e9d88cc17f313ea9acfd79ef0a82e1c58132f93279`  
		Last Modified: Fri, 21 Aug 2026 22:40:54 GMT  
		Size: 3.0 MB (2973434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0cbc8e04e4153e50ccd4311a4da6ba7e8bbb474719fb83533ec2a541aa0fa10`  
		Last Modified: Fri, 21 Aug 2026 22:40:54 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:9b936a877ecade4813371034b1b6e781ee27259ba50fff218898be174d857485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165203375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:251a0829641db1b372bd8e9352bf1995bb6f56cd2db4a4cb70e1bc47c04a7dd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:50:14 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Fri, 21 Aug 2026 18:50:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Fri, 21 Aug 2026 18:51:04 GMT
ENV GOSU_VERSION=1.19
# Fri, 21 Aug 2026 18:51:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 21 Aug 2026 18:51:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:51:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:51:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:51:04 GMT
RUN java --version # buildkit
# Fri, 21 Aug 2026 18:51:04 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Fri, 21 Aug 2026 18:51:04 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Fri, 21 Aug 2026 18:51:04 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:51:04 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Fri, 21 Aug 2026 18:51:04 GMT
ENV CASSANDRA_VERSION=5.0.9
# Fri, 21 Aug 2026 18:51:04 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Fri, 21 Aug 2026 18:51:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Fri, 21 Aug 2026 18:51:21 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Aug 2026 18:51:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 21 Aug 2026 18:51:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:51:21 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Fri, 21 Aug 2026 18:51:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793dbdc9522931979df89df2badc2f5f316f5f141facdd058c07b0b521f12359`  
		Last Modified: Fri, 21 Aug 2026 18:51:39 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a19f19e8353d94e275fb8f998ad4ba0368a7ac7db8b338364f124cd6b023505`  
		Last Modified: Fri, 21 Aug 2026 18:51:39 GMT  
		Size: 15.6 MB (15620925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e15f61d02ea96a743d6d1a5a495989aa657da602aaa1f0fe92bf3a25435c8a7`  
		Last Modified: Fri, 21 Aug 2026 18:51:39 GMT  
		Size: 1.3 MB (1283957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e689119985c8190fa49546b70f8bfc5f682da4ea4a1f6ee2cd3b31d5d8cb2578`  
		Last Modified: Fri, 21 Aug 2026 18:51:40 GMT  
		Size: 44.5 MB (44502523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742c1c00ae9bf2a6a7c87a12b129b302606630f2d74b7a95d4409ac5ff43efba`  
		Last Modified: Fri, 21 Aug 2026 18:51:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2caa8a1bc2a522c22777eac2096709e13b9370141f617ee6c48467c9e9ed79`  
		Last Modified: Fri, 21 Aug 2026 18:51:41 GMT  
		Size: 73.9 MB (73946933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff1f3a271ec10ae90f658c922c6da6c0b06fe77bb409706b347fece81083828`  
		Last Modified: Fri, 21 Aug 2026 18:51:40 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:61fb12c5c74849a7a1fad7d6b2f7c7433c8063861106e4581879ce8929c1b7cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3007869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c14d791747a4079b18b4d714c8d4298d3e280fa9284d52b690fe75c95808c3`

```dockerfile
```

-	Layers:
	-	`sha256:0d51491892465915991469e2d5844df63002b8c58d5619ccf284a7962408045b`  
		Last Modified: Fri, 21 Aug 2026 18:51:39 GMT  
		Size: 3.0 MB (2970806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b9e1faccc0988b5e3134313cc7a6bf9aa9ca2afee1def7f756e017bcb6f7003`  
		Last Modified: Fri, 21 Aug 2026 18:51:39 GMT  
		Size: 37.1 KB (37063 bytes)  
		MIME: application/vnd.in-toto+json
