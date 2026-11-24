## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:f3eb850013fd6a7854319861afed2101c5c54f9d8cdef6ab8f82e83c097550e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8af9e891698a6aa9338efb1154047b427cff5bd3b2a30c98773befd6b7d350d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253201328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1214ba4b0aafb03359bffccf9eb82629fa2ddb1ff0019d6500cae411e7b9c8ea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:11:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:11:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:11:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:11:29 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:11:29 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:11:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:11:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:11:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:11:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:11:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd188045618a8d6a2b6152edc950a43d0bd1e68f78e951b906c5289be0b77d95`  
		Last Modified: Tue, 24 Nov 2026 05:12:03 GMT  
		Size: 158.4 MB (158440962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572c599359150b036aecdb7d0aafb628092a8ebe8101d798409994e805a3f1d6`  
		Last Modified: Tue, 24 Nov 2026 05:12:02 GMT  
		Size: 66.5 MB (66510865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7469968ba28192805d6f747d9c7eb2e7f35c213656afbb8566750598da366d90`  
		Last Modified: Tue, 24 Nov 2026 05:11:59 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc52b657bd0cbc4ec2abe95befdd4e177ada9ae667d1574599128320c8e7c88f`  
		Last Modified: Tue, 24 Nov 2026 05:11:59 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8e939b2c68c86f8f7718829817eabf8021e9208b6469d3e531675c74cd4355c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0125d8ee598ab3be91a44b6b089fa821e8a40bf51f5aecafaf19f1d69629e7e`

```dockerfile
```

-	Layers:
	-	`sha256:c0b0687bb283eef06e6f5b9af50e11688e87bcefacfa2b7ee875171bd26304e5`  
		Last Modified: Tue, 24 Nov 2026 05:11:59 GMT  
		Size: 5.1 MB (5119967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea99061823855632832419dd0964b97ba9ef33d25c7f41e53a43d1247a5b308a`  
		Last Modified: Tue, 24 Nov 2026 05:11:59 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:84c986903c78bca455d04313103297f2b844a3f904cda407436529a282148142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251334393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff7e6f8c6676ae19150580991ac8ccb90f1f12e4f1e7cfcf8198e82c3600779`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:07:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:30 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:30 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d121b756b2a3c03f151ce9a1583430770d346ea33cdff885d741ca0b563ff67c`  
		Last Modified: Thu, 19 Nov 2026 22:08:07 GMT  
		Size: 156.7 MB (156691637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6a16f3779db85b3aa5eaf4f8884b461c9a32f72c1ef0f3eeaf1060b6662bb4`  
		Last Modified: Thu, 19 Nov 2026 22:08:06 GMT  
		Size: 66.5 MB (66496854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b115cb5d1516487571a5123e0cf118429691eac0b5102dea442a701aa486c8c`  
		Last Modified: Thu, 19 Nov 2026 22:08:03 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d83c047f71ca9155457992443f71806bd5764b20b0d6b4954229f594ca4c6b`  
		Last Modified: Thu, 19 Nov 2026 22:08:03 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6cc6d854e8f4968328d9bcd7013da947c8c30834335147154a71dc5c9aa5ae9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51778b3f7e10caa08dad2a9c885c628d0465d52c4c27527e84d074cd361e71d`

```dockerfile
```

-	Layers:
	-	`sha256:ab7a1c52501270607716e921a1ba563bd5c670028305ee117628ebb99943d4f4`  
		Last Modified: Thu, 19 Nov 2026 22:08:03 GMT  
		Size: 5.1 MB (5125720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe43578af7401626b131b9903df852b15ee78889bcf07963aba927da9bd7c6b8`  
		Last Modified: Thu, 19 Nov 2026 22:08:03 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:109991507509fc9b3a507b20bb0b31b6d7f6e5b5c40051a62eeae66f1a7ad5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (262025875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7088b52abcca4f589a79d5e6540d12edac518a2bfcae8d195f7408f7e980dcd4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:29:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:29:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:29:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:29:28 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:29:28 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:41:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:41:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:41:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:41:56 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:41:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385c042b75343cb298e587225684cd2707d8c8551e26620575cfd326a5c4015e`  
		Last Modified: Fri, 20 Nov 2026 19:33:19 GMT  
		Size: 157.6 MB (157596498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071b9ee0d52fbbe45c11016c1860443e2c5cb7d247b9b4a10fc3a5cd34259f1e`  
		Last Modified: Fri, 20 Nov 2026 19:42:34 GMT  
		Size: 72.3 MB (72334269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2f111a9b667d6cc60193fc856646209712da1ceaba6f5749c6a12155d28abf`  
		Last Modified: Fri, 20 Nov 2026 19:42:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ab0f5be50ca14c342a337f1825166bb234b1f44ddb96b7f06b3f11ce1e6299`  
		Last Modified: Fri, 20 Nov 2026 19:42:31 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4a2ba3077f6fab66f4049b95a8060eafcdecb4d8b31751bd528a75d213d22846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9034e94421a0e88f3b2cf77b9af9c8b2c4cb8242c82025d638735c919252328d`

```dockerfile
```

-	Layers:
	-	`sha256:2d7daed685390fa00f14a5fc36aca259d7f6d865a597eda208f527d61a535c38`  
		Last Modified: Fri, 20 Nov 2026 19:42:31 GMT  
		Size: 5.1 MB (5123879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5a3be2f883e2f832537bf3f23009b370dbf6f2e027390e42c8ee30763366fb6`  
		Last Modified: Fri, 20 Nov 2026 19:42:31 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
