## `clojure:temurin-21-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:551ed5167f44cc421bee7a25b47ddeb180dc8678bf4909caa724bee329bc7f31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:cc445b60eab4a1aac4387ad48c80193770307d28a90bec794407c217f09b787b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253170423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ed3f69a2ed481f2395741b158c367215d44107c12e16aea74e3caef11cb7605`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:08:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:21 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:21 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9c67f211d08da35bad42d147b9b5256046c16cd2924fec4986d84ab07ae970`  
		Last Modified: Thu, 19 Nov 2026 22:08:59 GMT  
		Size: 158.4 MB (158409433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c05911837d10e42c186f8d14042e9dcff473676d2e1da97752bc14926c07c14`  
		Last Modified: Thu, 19 Nov 2026 22:08:58 GMT  
		Size: 66.5 MB (66511468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae75942b5b0df0aa2d8da6981d4af2360d5ac0446f7c63771420ccb41783188`  
		Last Modified: Thu, 19 Nov 2026 22:08:55 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa50bda88d54512134afeaebf826676a161c4625888a4eff1eac7f68b82dd5a`  
		Last Modified: Thu, 19 Nov 2026 22:08:55 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b23efefe98b0c45906e420a6e016c37c6f7cf737d90282410794205d66e9748e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0598c38bc2bf5234803b52b8bd8136e320c9d53c9a1269c318b0546a99ef87`

```dockerfile
```

-	Layers:
	-	`sha256:e258abef9b1f703e233546868205ead1dff16d66d742c52f56f26827312e5992`  
		Last Modified: Thu, 19 Nov 2026 22:08:55 GMT  
		Size: 5.1 MB (5119959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7083afb1c6bcf84f59371d2dbd9bce3ebe7c516070b5b7acaac4732c725119cc`  
		Last Modified: Thu, 19 Nov 2026 22:08:55 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:c386f275804c2d8c0de8c9c835da6e36341573599f4963666391d5066701dd6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (262002067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c2fed295d71569b4b2e753a61ce0bd69798413d7d9b59287a2a9d539d5e07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:49:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:49:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:49:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:49:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:49:08 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:58:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:58:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:41:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:41:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:41:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00ab57e54146656986c1b7733b67f6124d946328177a69a693d4f11a2f0950d`  
		Last Modified: Thu, 05 Nov 2026 15:53:06 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff506ef2702f192437fbaa577e7a1aeae958306ad89a046f8d92eafd8f47b31`  
		Last Modified: Thu, 05 Nov 2026 15:59:33 GMT  
		Size: 72.3 MB (72333727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045d35e0b2c6588f9dd2afa2df47e597f16ba93a680f39f58cecebcb24b9c5f0`  
		Last Modified: Thu, 05 Nov 2026 15:59:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100d72b125af53135d80078ec7786edf01746f3ccea49d0cfa7eaca3673b4153`  
		Last Modified: Tue, 10 Nov 2026 02:41:25 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f0f8fbf8e529f4f7e38bc277dd6a39a5ad72299e3274ba5bdaa5600620efc8c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb050d690321c78a577f3af8290720fdb7535575b9462cc9c0f4cacf388f591`

```dockerfile
```

-	Layers:
	-	`sha256:29199c1e2e8246ccd13c8fd06a9430264c79fbb9865524cde6eb0afad893953e`  
		Last Modified: Thu, 12 Nov 2026 08:34:28 GMT  
		Size: 5.1 MB (5123869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cd5b2242d675860a4687bd5fa0b16329ed98b6fbf2906abecbed73429331a4`  
		Last Modified: Thu, 12 Nov 2026 08:34:27 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
