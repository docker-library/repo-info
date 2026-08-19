## `cassandra:trixie`

```console
$ docker pull cassandra@sha256:c64d861d9c3cf63b9856b4e28bd28114f9fb45fdd318173891dd0dd260336305
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
$ docker pull cassandra@sha256:4e806b4457fb0b190ff03c948f01ddf4235a5dd3b637e4046170ed783f3195f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168232569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c28be054a547fc1214b2c650500b45b5fef38213614ea7a865e8eb3c048dbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:39:40 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 18 Aug 2026 20:39:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 18 Aug 2026 20:39:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 20:39:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 20:39:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:39:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:39:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:39:56 GMT
RUN java --version # buildkit
# Tue, 18 Aug 2026 20:39:56 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 18 Aug 2026 20:39:56 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 18 Aug 2026 20:39:56 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:39:56 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 18 Aug 2026 20:39:56 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 18 Aug 2026 20:39:56 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 18 Aug 2026 20:40:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 18 Aug 2026 20:40:15 GMT
VOLUME [/var/lib/cassandra]
# Tue, 18 Aug 2026 20:40:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 20:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 20:40:16 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 18 Aug 2026 20:40:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c24e4409a12d611baaf3ae5142656dc820941b5abb285e6db2390169fd28a23`  
		Last Modified: Tue, 18 Aug 2026 20:40:28 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f404bf3752edd122f2c998c10c1db43ed3be401e29f191153e782f69ad57b9f8`  
		Last Modified: Tue, 18 Aug 2026 20:40:29 GMT  
		Size: 15.6 MB (15634438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12159859f6e33e98ff8e2248b3c2eb089fc4ab00e4f2dc032b87dfff9165dd21`  
		Last Modified: Tue, 18 Aug 2026 20:40:29 GMT  
		Size: 1.3 MB (1310236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6849c55e6244a8c823c88021b28e38270c7bc20b14e447981940a717588b1d71`  
		Last Modified: Tue, 18 Aug 2026 20:40:30 GMT  
		Size: 47.6 MB (47558117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f453e7ed2d310b678949fb3d99b7779c98e38cb98be5d5a4f697b0504d65ca27`  
		Last Modified: Tue, 18 Aug 2026 20:40:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c51063535ae93a25fdc6ba8e4cea79cf261b061df7ef9ab00b95de2c6eb0c21`  
		Last Modified: Tue, 18 Aug 2026 20:40:32 GMT  
		Size: 73.9 MB (73946553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1e9a58cfb1a6e8a672cec042a67f863c9c94ff527972b3fc3764f9a12098d2`  
		Last Modified: Tue, 18 Aug 2026 20:40:31 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:a868425491fa75bf0a7e5fec32af9e95187831c88d171b6184ac00e837f2cd3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3007119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32c99c70cc5f1f6e0fd2921ecb4b42a012a2f88e604bc2eccfd4a14775fa5d8`

```dockerfile
```

-	Layers:
	-	`sha256:0a6eabb44a74284bafa54ef33fe1b67e1e72244c7ce70d2389541a3b21c9685d`  
		Last Modified: Tue, 18 Aug 2026 20:40:29 GMT  
		Size: 3.0 MB (2970055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f041adeef4d7324f534d3774c06cafea27337c9fbe6bbb7b1e113e84a35846b`  
		Last Modified: Tue, 18 Aug 2026 20:40:28 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; arm variant v7

```console
$ docker pull cassandra@sha256:676c69f84ecdc378413efec15b904a7906fcf81a77693289b69d2c01bd16ecd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160958261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd5c79728f77d09bfb36ae88e8cda9106dd19b9c6d7294dee225496b358b969`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:24:06 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 18 Aug 2026 20:24:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 18 Aug 2026 20:24:30 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 20:24:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 20:24:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:24:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:24:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:24:30 GMT
RUN java --version # buildkit
# Tue, 18 Aug 2026 20:24:30 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 18 Aug 2026 20:24:30 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 18 Aug 2026 20:24:30 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:24:30 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 18 Aug 2026 20:24:30 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 18 Aug 2026 20:24:30 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 18 Aug 2026 20:28:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 18 Aug 2026 20:28:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 18 Aug 2026 20:28:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 20:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 20:28:24 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 18 Aug 2026 20:28:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba1b8bd35dff49a7559190f2b429394babe0e6097c48ff779611fd98e554d0a5`  
		Last Modified: Tue, 18 Aug 2026 20:28:36 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ab4710e4c00af324d9b1d5988d25d6d4fa7b04bfca7a84ebcd4cc7dd56dbf`  
		Last Modified: Tue, 18 Aug 2026 20:28:37 GMT  
		Size: 14.4 MB (14401617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca91afaedb47f405652cdb8c0ce4f2fa1e978460355dd11aac5c7f33d17fdb28`  
		Last Modified: Tue, 18 Aug 2026 20:28:37 GMT  
		Size: 1.3 MB (1275120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8577e8a61835b3b408e9777418a69516c8f0f7ad814a81a06f6645e0fe611a6`  
		Last Modified: Tue, 18 Aug 2026 20:28:38 GMT  
		Size: 45.1 MB (45125973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e50770a35563ac9f7d22cbc4fbc504641b1d190729fdcb550478ebc59a8224`  
		Last Modified: Tue, 18 Aug 2026 20:28:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64491d358d7e6fcfcd6ba6df0d5a7ddb889cc5a77081243df9aee3a2964d14d7`  
		Last Modified: Tue, 18 Aug 2026 20:28:40 GMT  
		Size: 73.9 MB (73946715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a6eef29da8266ad126a7560e118aaee41677016f0c6913a700a752bd7f5ecd`  
		Last Modified: Tue, 18 Aug 2026 20:28:39 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:e45805372dff3af59c11a9736521835535ee339e50ece46f413c1cafab082c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3008959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e892a5d40d474f4569313e3ef014c977924b5bd3217e6f94b5358c6cf1f87904`

```dockerfile
```

-	Layers:
	-	`sha256:75bee018824f9f9fa0a26f0fc7470567f32db1ff82c7bd69ddef749cb574a57b`  
		Last Modified: Tue, 18 Aug 2026 20:28:37 GMT  
		Size: 3.0 MB (2971709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ed3f505f706ef15fad17e89c80d33e61bf44259dd4d3bdfa1ae273f788d91ab`  
		Last Modified: Tue, 18 Aug 2026 20:28:36 GMT  
		Size: 37.2 KB (37250 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:56d10607d89d29dda3aff767e5e712910d5954b462f03f56146c97a5acc7584f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167921998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4bd5a632254687143d7ebfa530341f28be03f1f6a22ef247ce3bb61b069643d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:39:42 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 18 Aug 2026 20:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 18 Aug 2026 20:40:00 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 20:40:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 20:40:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:00 GMT
RUN java --version # buildkit
# Tue, 18 Aug 2026 20:40:00 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 18 Aug 2026 20:40:00 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 18 Aug 2026 20:40:00 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:00 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 18 Aug 2026 20:40:00 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 18 Aug 2026 20:40:00 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 18 Aug 2026 20:40:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 18 Aug 2026 20:40:17 GMT
VOLUME [/var/lib/cassandra]
# Tue, 18 Aug 2026 20:40:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 20:40:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 20:40:17 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 18 Aug 2026 20:40:17 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:400ec5e25700e56c7d8b5b8c58273719f77f3aa64f91191b3875939f58902cd2`  
		Last Modified: Tue, 18 Aug 2026 20:40:31 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39276f31eed7f0423cc5af77aa50a059be9279d6df5442dedaa8c7a8d75cadea`  
		Last Modified: Tue, 18 Aug 2026 20:40:32 GMT  
		Size: 15.5 MB (15525751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748846d03c4af6d9f313581a787c31a265535b3bbd1112a2e52793ac0fb7acbc`  
		Last Modified: Tue, 18 Aug 2026 20:40:31 GMT  
		Size: 1.3 MB (1262320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4919856239f24dd0d66454160cfe5034516fc99d8c4ffc19dba2f643f95d721e`  
		Last Modified: Tue, 18 Aug 2026 20:40:33 GMT  
		Size: 47.0 MB (47041105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c135e7648cd7d8f4a520c4a0948f9a3b199b023f218b843f609395b4af7bee55`  
		Last Modified: Tue, 18 Aug 2026 20:40:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457ca461e05cb39fa36d082c638a437435dc9b74006157204a040b018a3c1117`  
		Last Modified: Tue, 18 Aug 2026 20:40:35 GMT  
		Size: 73.9 MB (73946749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4290eb97be13d7ad4cf3f39af6b497520aa71b5a3025074d5262327dae2e9e4e`  
		Last Modified: Tue, 18 Aug 2026 20:40:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:149e77f7aefee7877ab66f81d8e51f268d9bb55b6ff7ef52796565913d716623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3007113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3197c4da0bd216141f17999337c7713dbc2ae4019751bf6d8c205cffc4987e44`

```dockerfile
```

-	Layers:
	-	`sha256:fd6862037f27652692c2c4646e810ae266cfae09622b8334edd979cabaa3cd0c`  
		Last Modified: Tue, 18 Aug 2026 20:40:31 GMT  
		Size: 3.0 MB (2969811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62920e3370c836fabcce7b1f2c1e64a76b2672046f665fd6bd4fc28e4b845f68`  
		Last Modified: Tue, 18 Aug 2026 20:40:31 GMT  
		Size: 37.3 KB (37302 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; ppc64le

```console
$ docker pull cassandra@sha256:cb6067ab8297db6140f58abcc9cc060094263736fbcb80a348cf0c30989115c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172949999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0a09cb5629ff861344d566aaccea410ced4cdf7a94f6f17a74bed79792e57b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Tue, 11 Aug 2026 23:30:39 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 11 Aug 2026 23:31:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 11 Aug 2026 23:31:29 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 23:31:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 23:31:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 23:31:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 11 Aug 2026 23:31:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 23:31:33 GMT
RUN java --version # buildkit
# Tue, 11 Aug 2026 23:31:33 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 11 Aug 2026 23:31:33 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 11 Aug 2026 23:31:33 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 23:31:33 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 11 Aug 2026 23:31:33 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 11 Aug 2026 23:31:33 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 11 Aug 2026 23:32:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 11 Aug 2026 23:32:12 GMT
VOLUME [/var/lib/cassandra]
# Tue, 11 Aug 2026 23:32:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 23:32:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 23:32:13 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 11 Aug 2026 23:32:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4dc877c3ce1a0b8e7274002a281d0c8d2531176c90d39505fb95ac764df8bc0`  
		Last Modified: Tue, 11 Aug 2026 23:32:45 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11926b1fd7ad44c230b598f65b486193b8caae59d93a492582925f06b225dfc0`  
		Last Modified: Tue, 11 Aug 2026 23:32:46 GMT  
		Size: 16.7 MB (16651329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e164a91beb4614a28f25283738b4c40f8800347c00fe6218b3844a103ed88947`  
		Last Modified: Tue, 11 Aug 2026 23:32:45 GMT  
		Size: 1.3 MB (1267134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3b4a3a701f017a976174a18f91620822175668fa9f2db53753602962ce86a0`  
		Last Modified: Tue, 11 Aug 2026 23:32:47 GMT  
		Size: 47.5 MB (47480916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0b928b474c7414d5246737038497a5cca5eae860012ec1e4278e9a0858fcc5`  
		Last Modified: Tue, 11 Aug 2026 23:32:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd81d73dc116677c194e5951650c308ed21257ee4c4e0464d55594b6671183d`  
		Last Modified: Tue, 11 Aug 2026 23:32:49 GMT  
		Size: 73.9 MB (73946817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93728ba81a7661584a19d7f6837902a1b8c9c8f05ccd75b9d83bfefa92f712be`  
		Last Modified: Tue, 11 Aug 2026 23:32:48 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:2fce467f8d2d1b53134ed3cee200dcda565203fcd7111cb19220ef12b1b43801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3010586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706ed8c6d7e73d6c8220be8f4135822d587e52c07c08aa46ac670715d46cf4e1`

```dockerfile
```

-	Layers:
	-	`sha256:69e1543bc0110381bf78b3f9a56d3ed9a6bd1fe528eb14d1fa4b425df1704d1f`  
		Last Modified: Tue, 11 Aug 2026 23:32:46 GMT  
		Size: 3.0 MB (2973436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60d0ef58f64ae6165a24edc9ac78cca8a26691a1682be0d34cf833252b0daa76`  
		Last Modified: Tue, 11 Aug 2026 23:32:45 GMT  
		Size: 37.1 KB (37150 bytes)  
		MIME: application/vnd.in-toto+json

### `cassandra:trixie` - linux; s390x

```console
$ docker pull cassandra@sha256:93c5125634c0d61104b7e0e2ff66b75d7b8884af1c570bdda2475c2023df2f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165229692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d50086243372d62fc1f53d4e1159a781dd4a031e5ef1d75f204b05cdb15dfe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 11 Aug 2026 23:30:41 GMT
RUN set -eux; 	groupadd -r cassandra --gid=999; 	useradd -r -g cassandra --uid=999 cassandra # buildkit
# Tue, 11 Aug 2026 23:30:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc2 		procps 		python3 		iproute2 		numactl 	; 	rm -rf /var/lib/apt/lists/*; 	libjemalloc="$(readlink -e /usr/lib/*/libjemalloc.so.2)"; 	ln -sT "$libjemalloc" /usr/local/lib/libjemalloc.so; 	ldconfig # buildkit
# Tue, 11 Aug 2026 23:31:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 23:31:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 23:31:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:31:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:31:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:31:02 GMT
RUN java --version # buildkit
# Tue, 18 Aug 2026 20:31:02 GMT
ENV CASSANDRA_HOME=/opt/cassandra
# Tue, 18 Aug 2026 20:31:02 GMT
ENV CASSANDRA_CONF=/etc/cassandra
# Tue, 18 Aug 2026 20:31:02 GMT
ENV PATH=/opt/cassandra/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:31:02 GMT
ENV GPG_KEYS=CEC86BB4A0BA9D0F90397CAEF8358FA2F2833C93 	C4965EE9E3015D192CCCF2B6F758CE318D77295D 	5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00 	514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA 	A4C465FEA0C552561A392A61E91335D77E3E87CB 	9E66CEC6106D578D0B1EB9BFF1000962B7F6840C 	C4009872C59B49561310D966D0062876AF30F054 	B7842CDAF36E6A3214FAE35D5E85B9AE0B84C041 	3E9C876907A560ACA00964F363E9BAD215BBF5F0 	F8B7FD00E05C932991A2CD6150EE103D162C5A55 	7464AAD9068241C50BA6A26232F35CB2F546D93E 	CEC5C50B9C629EF0F5AB2706650B72EB14CCD622
# Tue, 18 Aug 2026 20:31:02 GMT
ENV CASSANDRA_VERSION=5.0.9
# Tue, 18 Aug 2026 20:31:02 GMT
ENV CASSANDRA_SHA512=beaf3df6342ef1a0ccc83fa80214f250b32c35cfbb1af591b00e3fd539eef0915bc3b89f0e7ae73f6d50cbb03f6075c4e4cf32d3c46ff9c33f745542fcc925df
# Tue, 18 Aug 2026 20:31:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 	rm -rf /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if wget --progress=dot:giga -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'cassandra-bin.tgz' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"; 	echo "$CASSANDRA_SHA512 *cassandra-bin.tgz" | sha512sum --check --strict -; 		ddist 'cassandra-bin.tgz.asc' "cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify cassandra-bin.tgz.asc cassandra-bin.tgz; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		mkdir -p "$CASSANDRA_HOME"; 	tar --extract --file cassandra-bin.tgz --directory "$CASSANDRA_HOME" --strip-components 1; 	rm cassandra-bin.tgz*; 		[ ! -e "$CASSANDRA_CONF" ]; 	mv "$CASSANDRA_HOME/conf" "$CASSANDRA_CONF"; 	ln -sT "$CASSANDRA_CONF" "$CASSANDRA_HOME/conf"; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			grep -- '^-Xss256k$' "$CASSANDRA_CONF/jvm-server.options"; 			sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONF/jvm-server.options"; 			grep -- '^-Xss512k$' "$CASSANDRA_CONF/jvm-server.options"; 			;; 	esac; 		mkdir -p "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chown -R cassandra:cassandra "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod 1777 "$CASSANDRA_CONF" /var/lib/cassandra /var/log/cassandra; 	chmod -R a+rwX "$CASSANDRA_CONF"; 	ln -sT /var/lib/cassandra "$CASSANDRA_HOME/data"; 	ln -sT /var/log/cassandra "$CASSANDRA_HOME/logs"; 		cassandra -v # buildkit
# Tue, 18 Aug 2026 20:31:21 GMT
VOLUME [/var/lib/cassandra]
# Tue, 18 Aug 2026 20:31:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 20:31:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 20:31:22 GMT
EXPOSE map[7000/tcp:{} 7001/tcp:{} 7199/tcp:{} 9042/tcp:{} 9160/tcp:{}]
# Tue, 18 Aug 2026 20:31:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02b71f70e711b4662ea4dd2d9211465376c663bcc9f38bacf33b541969ef3d99`  
		Last Modified: Tue, 11 Aug 2026 23:31:40 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df823d645f6251a8e6efdb9af063dbd0936518c06f0e9d2b56808ecff4a71865`  
		Last Modified: Tue, 11 Aug 2026 23:31:40 GMT  
		Size: 15.6 MB (15620973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6500f19919b59da79511477d3b58b005cbc9386564de23347581860649c586ec`  
		Last Modified: Tue, 11 Aug 2026 23:31:40 GMT  
		Size: 1.3 MB (1283923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e60d18f7070160f2cb53fe554149d8b5630892f40aba715ecc37a394dd398f`  
		Last Modified: Tue, 18 Aug 2026 20:31:42 GMT  
		Size: 44.5 MB (44528779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8cc53a307c06a0150ecab7c6ebc294fc5f50d98586c0ee41e2edbcb38d30357`  
		Last Modified: Tue, 18 Aug 2026 20:31:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebae703f2067b8ec69223e50cb6bedda2b49c1114ad9b5291629de1138a37619`  
		Last Modified: Tue, 18 Aug 2026 20:31:43 GMT  
		Size: 73.9 MB (73946983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4546b389a8b5bb39b8d52792f9c03970a9daf11356c887be5889e84254e9d539`  
		Last Modified: Tue, 18 Aug 2026 20:31:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `cassandra:trixie` - unknown; unknown

```console
$ docker pull cassandra@sha256:99b4b8fa4c44a6858af77614c957a8d5b1dc8067accc3c2b7b83d51aed3e0455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3007872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e97c023eed64bdcca563942ece14499630e58b88bf22a4b88dfa6c89360928`

```dockerfile
```

-	Layers:
	-	`sha256:314eb564fd4ef412375af0bd4ddcf731e886b4bfff19da6e96dddf3902937d7a`  
		Last Modified: Tue, 18 Aug 2026 20:31:41 GMT  
		Size: 3.0 MB (2970808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8e936d12ea4cc8830ad524138d2d279594919d49f1b68342435f6cfc2891825`  
		Last Modified: Tue, 18 Aug 2026 20:31:41 GMT  
		Size: 37.1 KB (37064 bytes)  
		MIME: application/vnd.in-toto+json
