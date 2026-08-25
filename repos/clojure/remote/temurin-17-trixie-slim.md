## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:08fc34a02ecbb7c0e7a2e53504fe75baf3a7828d3e8d582c7d3d16ee6660ce7a
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

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:41f1749f1b4731cd0ec16305d7f54cf86fb14be7b0a67082374942a688176cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244581812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8460c493d30c6a8972d6765cfaafa1c4108af4000aa01e34b2fa0461d922caf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:29:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:29:08 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:29:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:29:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:29:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:29:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:29:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57723d530263880798bcd67b4d08fe77e91c7f2f8b3baf5de442148eea0a6594`  
		Last Modified: Tue, 25 Aug 2026 01:29:46 GMT  
		Size: 145.8 MB (145822644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2ec97246f510b06e878b51f0e3e3a1e848cc6dde6994d8aea50284689d714d`  
		Last Modified: Tue, 25 Aug 2026 01:29:45 GMT  
		Size: 69.0 MB (68965469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddbe873def0ff35d39c341983da339632758e934a27804ac8033ddfd67d98c65`  
		Last Modified: Tue, 25 Aug 2026 01:29:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7fd2b2b3e90d3902fdcd8b9851a700fe15fef13e7bfad52a54251efab4ba8a`  
		Last Modified: Tue, 25 Aug 2026 01:29:41 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ef8bb4aa541d025c6247b43ddd0804df342def4adee4ef2654470906e5b43ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feeb6b949ab59a683cdc93d66bd69862b441ca05011bdaf063447848b58e96af`

```dockerfile
```

-	Layers:
	-	`sha256:6ca7d4c3cfe10459f09af915fa90aca91732b80aee92c28853597bf4c0866e75`  
		Last Modified: Tue, 25 Aug 2026 01:29:42 GMT  
		Size: 5.3 MB (5257560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5ac90bf77ebc78e4e0ef0538f8def65f07fda5f8142737061275511f0132569`  
		Last Modified: Tue, 25 Aug 2026 01:29:41 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:266eb9c915c9ee5f2ba563b057617bd0c839f7a279ebc31dbe1f5dbe0b89bee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243593784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ab5f7a410ea7eba71d8eafaeb95f03471e841da00a107d54351a2515358a2b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:33:25 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:33:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:33:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b25ac440e5ee59cf4db623587f2a16bcfb5a31cf048869353a7489523b273a3`  
		Last Modified: Tue, 25 Aug 2026 01:34:06 GMT  
		Size: 144.6 MB (144647520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169524332e05c8b879ff52c0a95da651510ed93709af3101b90f85030dbe4ada`  
		Last Modified: Tue, 25 Aug 2026 01:34:04 GMT  
		Size: 68.8 MB (68785640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412024330c5beed6ff10b29ae641ae8103402e36f68aae6a54e9cdc6692e137f`  
		Last Modified: Tue, 25 Aug 2026 01:34:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9661c62afaf29191c682e018895f7c42da95885c577a209fb9bea33f08a9e4`  
		Last Modified: Tue, 25 Aug 2026 01:34:01 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a29a16f32bf8a39a2c2c0b3af99113a7f19c0e5bbf6dd733af12fb9b44f817a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc277c0964d9ac85b87b4f28dd5c8fe9a1564db47d651b087f75361a1135ba43`

```dockerfile
```

-	Layers:
	-	`sha256:e7f22202064e0fdb5028aa6be7560e37979822ef4ef14a350ce46c8e833244a6`  
		Last Modified: Tue, 25 Aug 2026 01:34:02 GMT  
		Size: 5.3 MB (5263321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcd2e52519a0f97851edc062d1b42b5133546ee68cb0d558bcda7fb4d21b190b`  
		Last Modified: Tue, 25 Aug 2026 01:34:01 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5ba1edc7620d784d569dc4143c68f2e5a8517c146b2f473d740faa83722a6a76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253666876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfe1d42c3ec58a5770c76b65b3341e019aa8b413d455b376d01bc17d30cbc46`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:21:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:21:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:21:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:21:39 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:21:39 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:28:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:28:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:28:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:28:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:28:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60459259dfa83678264ffde14d34e8eae6cfe792423e4ead4adc1f290b358bc5`  
		Last Modified: Tue, 25 Aug 2026 08:26:02 GMT  
		Size: 145.7 MB (145674311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64adde633b2685eb6a542942cb8cd5a5f80f84e180e8563b1eb6f572a4968365`  
		Last Modified: Tue, 25 Aug 2026 08:29:17 GMT  
		Size: 74.4 MB (74376062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9030ea21eb1bdad63cc02ae03f0c4b4c0aea802c1969e044de1842190af7531c`  
		Last Modified: Tue, 25 Aug 2026 08:29:15 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7287a3ec0ea720e22da6af48708b735b541c7a1e44fb999d5a535ed114255c59`  
		Last Modified: Tue, 25 Aug 2026 08:29:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:535bcb23af3f08fafe9dd139627541fe2521a64095e7abf019f716db943cdf4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5277945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c717c5fd0199d72da91ad3c951748527f57e316e06209554759d214fbcc49f04`

```dockerfile
```

-	Layers:
	-	`sha256:d6f521a10e42a9c6f3af3c10a2819e5b7171d18922240f3cdabb8e81ecfad3bf`  
		Last Modified: Tue, 25 Aug 2026 08:29:15 GMT  
		Size: 5.3 MB (5261931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d419ebfd37f0cf02f06096549662c832803f1f8df47267570e91ba6a6ec6c39a`  
		Last Modified: Tue, 25 Aug 2026 08:29:15 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:28ded4bc2bade48cad2a610721e320609f996ec1ec7d84914f7f5d583ea14ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235685138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bb283cff19dcd19c51e14f4fa1f14c0d8d97a82bfca76ab5925ad850951b6a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:07:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:07:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:07:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:07:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:07:08 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:07:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:07:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:07:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:07:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:07:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e78d948f8e0573310bad160ed3de7785531cb8d2cd60934401f4d0d1f9bb51d`  
		Last Modified: Tue, 25 Aug 2026 02:07:54 GMT  
		Size: 135.9 MB (135871017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e4773da791ba15f400d857ede06fec71de464d2fda5c3376d3595c5722e029`  
		Last Modified: Tue, 25 Aug 2026 02:07:52 GMT  
		Size: 69.9 MB (69945359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356ac1d271754ff60ad1fab693d23812653ffacbafb0d9338b91b90f5f8a0a30`  
		Last Modified: Tue, 25 Aug 2026 02:07:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abbdf00243e10b3f31c9f1981539ddcf93a3c8bc0ae4a33dce7aeb9bb80e2172`  
		Last Modified: Tue, 25 Aug 2026 02:07:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a3dc66e154adb2bb8ecbd585913b22d05caad13510fa683b5b023676404631b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5269450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a0c6a01939dfd6b543554435f905b5bbcad9eaae38b688157c928bd06052d3`

```dockerfile
```

-	Layers:
	-	`sha256:4d8f24fdfd25e50b30fe37bcc2b0ff3ad594f9ef101ab97fdf522a1cb37f68ef`  
		Last Modified: Tue, 25 Aug 2026 02:07:50 GMT  
		Size: 5.3 MB (5253484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4617d8ad0108fd52b9f0dd42f4f5e786ea1dece3e9f6561d5f2fae684778c0fd`  
		Last Modified: Tue, 25 Aug 2026 02:07:50 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json
