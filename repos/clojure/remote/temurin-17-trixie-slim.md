## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:02601da0e876eb37c8f4b1295bae919e626d783ef34eb5cc45f4fe7313d0aa5c
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
$ docker pull clojure@sha256:00a3e771106b2e1da56eeebda8a90ec3fe1e8bcc0109b0afac75256c51f945d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244569677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20035400d807214ec6beca470f10f2af399845f369f7999fb296dc1007a16280`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:16:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:16:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:16:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:16:11 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:16:11 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:16:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:16:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:16:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:16:27 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:16:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb36414073d9b0c8c88704d21116f0a16566b843132cacbf4240a91b0bb439c`  
		Last Modified: Fri, 21 Aug 2026 19:16:50 GMT  
		Size: 145.8 MB (145822643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b12dd5de98ecf5eca98c2ad8eaf49f0dbb912416e697cb5b155107c129787c`  
		Last Modified: Fri, 21 Aug 2026 19:16:49 GMT  
		Size: 69.0 MB (68965230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35126ea5d9a2196d44bc3a69bd75e3386c392055b5df81b2cc01b9a30ea2045`  
		Last Modified: Fri, 21 Aug 2026 19:16:46 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c667b0ca344b7f37dd34816960b4f4fff2d7c0fdaa666cc9c4e2d193c19196fb`  
		Last Modified: Fri, 21 Aug 2026 19:16:46 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:09ea8f3f679ac3c27644f4fd42e1861f10271ca5092f4ee5c5d0c4e6045082c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60d912d21108ec46a2a8cf4305f68f94ec6815ea98193cb3b3d2fb89c2a3c74`

```dockerfile
```

-	Layers:
	-	`sha256:534f610ce776232b923c265dd91119fab04f6ea9d79b19c1047f3156a31a058e`  
		Last Modified: Fri, 21 Aug 2026 19:16:46 GMT  
		Size: 5.3 MB (5257362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61b5d1d1d66aea62b493263f6af755180f99c34b14eacbefe439bacc4cfc9984`  
		Last Modified: Fri, 21 Aug 2026 19:16:46 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:19743756e8c8c3bcb54ddca2c36f3391ee9bd933993df010480e76bcf4b0cef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243577754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e3b8dacfee17e3773c65df055636eea9b28000fe330519a50d0cb6e7419f19e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:05:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:05:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:05:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:05:10 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:05:10 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:05:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:05:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:05:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:05:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:05:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463b716b57e1a062904fbe7dc34398e022bab8703db608fd6d02e4cf6bde2da4`  
		Last Modified: Fri, 21 Aug 2026 19:05:50 GMT  
		Size: 144.6 MB (144647544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8defe555eff44f18aa8e773bb4b77b623953526548ad1090f1e0abdc07184e1`  
		Last Modified: Fri, 21 Aug 2026 19:05:48 GMT  
		Size: 68.8 MB (68785562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70fb7e92a9e70e71f59da40abf8e0434b6e57345cad59e70450018f096636c18`  
		Last Modified: Fri, 21 Aug 2026 19:05:45 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5153300cdaf3a4b2b67029cd4a1d7c8be73332a9b25d0668c63a6640e7b7972`  
		Last Modified: Fri, 21 Aug 2026 19:05:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2b045c4b949780bac7dfa6f91e781efdc8daeab29add3d1f48bf6e6d2badb1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4e347e69d717e67ad775532b4374d0d3b910f911c6f0eea2f0ea46b2e6df2e`

```dockerfile
```

-	Layers:
	-	`sha256:98071d20f120d46f97b5db4336db3b4edac3a70a8279154da0673e4a4b5a255a`  
		Last Modified: Fri, 21 Aug 2026 19:05:45 GMT  
		Size: 5.3 MB (5263123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fd8d7fc95f56dc3874fc8817a4f9f86ac1cc9e34a423e9fa2cd1fbf44d29284`  
		Last Modified: Fri, 21 Aug 2026 19:05:45 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8830d11af90c18deba3a46326aeb32c456188056b05da73a6e397ec14a66ea55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253652758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d26638ae6fcb6737e0d481659f73db85bc45995f15b87b86d5bf501cfea3c8e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:54:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:54:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:54:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:54:37 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 21:54:37 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 22:03:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 22:03:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 22:03:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 22:03:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 22:03:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64269a486231fffab2666570443518a8aabf8a93e1e1703076e7aedd2229f4e`  
		Last Modified: Fri, 21 Aug 2026 21:58:52 GMT  
		Size: 145.7 MB (145674278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd7032cceae0e9a055864a6e8a4dba185b8b84e605ff9440daa7f10cad0aa99`  
		Last Modified: Fri, 21 Aug 2026 22:04:14 GMT  
		Size: 74.4 MB (74376096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2484ed9dfb464f4112fcef610fb78c1a839387e1b8eae274ba1a9790bd01ac`  
		Last Modified: Fri, 21 Aug 2026 22:04:11 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e0703f5059d6b5afefe8d379cc681cf2a619dce7f52d7860cb25866efa065a`  
		Last Modified: Fri, 21 Aug 2026 22:04:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:029cc92112502b0b0544e352fa882b87cbb98146cf680cde16da584d81487212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5277747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae270b77c39c86a37348151740ae408802966aa559983cb7db1c39ab84ad6abe`

```dockerfile
```

-	Layers:
	-	`sha256:92d50bdcb4b2c6ad8abcb6acd925778a6a34f79c20a4a8d5495677d27e2dfb1c`  
		Last Modified: Fri, 21 Aug 2026 22:04:12 GMT  
		Size: 5.3 MB (5261733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee6f9310c59d4a8792071ea7cb880ff78a2dfca64a59334f56b4e72a5c6b8b0`  
		Last Modified: Fri, 21 Aug 2026 22:04:11 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:ebae9ee5ac6bcedb46e0e7be7fffa279f1040c693ccc581896cb47fa10fcf3fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235664045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb3174d69b4d4a97ba4b41e9e2f4e3c58269f6812561009ec48628136f0c7ff`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:56:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:56:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:56:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:56:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 18:56:30 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 18:56:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 18:56:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 18:56:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 18:56:47 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 18:56:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313a96a5c54e6a878df0ed7de8bcd5e6c2e678bbcef88f50639382b42dc541ce`  
		Last Modified: Fri, 21 Aug 2026 18:57:14 GMT  
		Size: 135.9 MB (135871057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1c08eb750fa8c8fb1fee2f5227b0889a531ffb448bc5a8e12fc2874cf1d0c6`  
		Last Modified: Fri, 21 Aug 2026 18:57:13 GMT  
		Size: 69.9 MB (69945374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b21c16ef52f1a7a79470c21a2db1f470c81ddec3e5e2875191139420ac4723`  
		Last Modified: Fri, 21 Aug 2026 18:57:11 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30eab411b57dc2581fd35e642d084db88fb82f8e579d7e59d25705d186c00a7c`  
		Last Modified: Fri, 21 Aug 2026 18:57:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:db01ff16d886ef1a21fb31ddf3c3a63404622f3ff137aff1b7b8cd0f4eafc68d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5269252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25029457011d5fd9be4c6fb775376b895f043fd4b8513f26d4d1455a33e7b89f`

```dockerfile
```

-	Layers:
	-	`sha256:df3ea1b8fe7b6b0d7f7aca3c6301a84383621d662a1bd3c0f49a7b7de9c5e3d8`  
		Last Modified: Fri, 21 Aug 2026 18:57:11 GMT  
		Size: 5.3 MB (5253286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af8c69b539b9d5ec32949f3a0da22bcd97393a430431311001a03e6188b4e80b`  
		Last Modified: Fri, 21 Aug 2026 18:57:11 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json
