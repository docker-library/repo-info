## `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim`

```console
$ docker pull clojure@sha256:0d97f71dc9ef838747e26cd159d68509a6453be4f009af84c111262d6e652c18
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

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ebe79c70f328cf7e66ac9069ad17d556b0a31bc6ebded20a1170a15520907f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256920254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464e6efaa650b9de91ec69cbfd2f7db66fd269ed86ab3f5c5ec082c45e209378`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:45:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 01:45:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 01:45:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:45:40 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:21:23 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:21:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:21:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:21:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:21:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:21:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91f6d426880931ea641848877a2f570b3fade3ff0dc315e1d5503ad74d67622`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 158.2 MB (158166916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f242cb498c6e8f0d4f944f3475c50a47a3170a718cd6fc53910227a406a84b71`  
		Last Modified: Tue, 14 Jul 2026 02:21:57 GMT  
		Size: 69.0 MB (68971393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4789bbf05aeaeab0e804cc665250e375a3f478bfe436f0cf874b5a9b08ead610`  
		Last Modified: Tue, 14 Jul 2026 02:21:54 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed6321778619b9e9a4eb8f882090af3aebae3d41173f25163a2d814cee790ca`  
		Last Modified: Tue, 14 Jul 2026 02:21:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f01b72bce9317c0956345e9ea789ca30cb614aed0548c6233959a44f769335f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5274195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6ed95219954e42e97e362f757b0dd7a98a508e5aaca76b6e33913430e46e78`

```dockerfile
```

-	Layers:
	-	`sha256:84cff12403229e98cfc4713b03b900c8d13ec1e97ab8e06d096d0c7b3227be88`  
		Last Modified: Tue, 14 Jul 2026 02:21:55 GMT  
		Size: 5.3 MB (5259184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9165a2e5468ba61c78d61124076be91c5374aca56cd4f138fbcd8e2b8bfe3d3d`  
		Last Modified: Tue, 14 Jul 2026 02:21:54 GMT  
		Size: 15.0 KB (15011 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bc55e1ab74555768a7f8836e06c4a8245833046cf2aaf53b793dceef6f64be54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255383872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce9e4af52d88cf9700f9659de04f54904dea03809f24e46e6d49847c6fe1892`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:28:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:28:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:28:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:28:34 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:28:34 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:28:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:28:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:28:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:28:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:28:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7019352fbeca28fe5f759cc485b33089761c2254882ade4611f2bfa5264d254f`  
		Last Modified: Tue, 14 Jul 2026 02:29:15 GMT  
		Size: 156.5 MB (156461278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5916468ce145e3ffa83c8c4c150b4c47cac8050b5599950b56ad3bb2e258316`  
		Last Modified: Tue, 14 Jul 2026 02:29:13 GMT  
		Size: 68.8 MB (68777850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d5a07c4bed44b2c9988dc56c2079693af91e35d485456b03d8d32f57eb206c`  
		Last Modified: Tue, 14 Jul 2026 02:29:11 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c2e55f246eeb2e534ae5c46f6a1fa2955fedaf37247a79536a6199dd672846`  
		Last Modified: Tue, 14 Jul 2026 02:29:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8241d50cc57957609d7c710b542ca8b524d513fcfc4a4880c61a0c07dcc797d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fbd153ae2c4b7602b70e039516d95fbb3165ed3d61fe221ef5ec9d4705d439`

```dockerfile
```

-	Layers:
	-	`sha256:66f05091a2f99ea8f964be77177683b2504aebe398d8cb810c4cea3dab9adb5c`  
		Last Modified: Tue, 14 Jul 2026 02:29:11 GMT  
		Size: 5.3 MB (5264945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a48a742dc6b7b9ed1b23cd028b098d7ca1bccfe148d2da3d221119dbe901ab5`  
		Last Modified: Tue, 14 Jul 2026 02:29:10 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2f311c94c563c8f76c7f86cafeba068b3ede22afd377232592fcedf1a3889e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266318856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9125ff4adcd22c1ff663d3b7e0c7dac5be1bbcca9c8edfa89c4211a335f396f1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:35:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:35:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:35:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:35:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:35:06 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:40:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:40:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:40:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:40:56 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:40:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71cf712e33369adf58823268a3b45a689a4349195cf69731c8281321ac1929b2`  
		Last Modified: Tue, 14 Jul 2026 08:38:24 GMT  
		Size: 158.3 MB (158343190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d22e9a1c5710683629d821cc168acebb9c7a8a58cd4ee957c6b4eb5c6c22c0`  
		Last Modified: Tue, 14 Jul 2026 08:41:29 GMT  
		Size: 74.4 MB (74373147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301c459dc6f6b34826706e4cc8a5c31a3e690f78a332ed6890388ce0afd66afd`  
		Last Modified: Tue, 14 Jul 2026 08:41:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a88754c334467efd4044938e6cb5fea85882b7797caedccb443979b0e9312184`  
		Last Modified: Tue, 14 Jul 2026 08:41:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0ec84233ce7215e91e01be88d081a185447dca547d952fe0f837fe7840389453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688245a52f309071206db2800076b77e260a4d8dd68c72aecb8a41b1d292246e`

```dockerfile
```

-	Layers:
	-	`sha256:88f41ee98d6a10c2926aa9b5dd491eceb12ca05870712f4f79d13bf0088d2229`  
		Last Modified: Tue, 14 Jul 2026 08:41:27 GMT  
		Size: 5.3 MB (5263555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1077363fe2e50a901e2804d7919678e89044c9633f4eb4611e2dc1fd3a72f6fb`  
		Last Modified: Tue, 14 Jul 2026 08:41:26 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:744ab0f01c8bde73d0549d0e51fb36e26e964a5c8a34afb713b1b19aaca9776e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247178570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da96775f21216bb5adefdae9edb91184245e6d65bc68912561ab9d7e8007602`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:31:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:31:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:31:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:31:30 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:31:30 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:33:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:33:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:33:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:33:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:33:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9094503ae9443c0a43f6bd76cc77cac91ed11eff783035d33d23643f85ab537d`  
		Last Modified: Tue, 14 Jul 2026 04:33:05 GMT  
		Size: 147.4 MB (147388321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b867285284926d0b951871d3dafe596662346d3248d98feeb63d81c03bbbc2`  
		Last Modified: Tue, 14 Jul 2026 04:34:08 GMT  
		Size: 69.9 MB (69942581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3d19b65c383851585ae037b549073f273e699b2dbc5a2c5cdfa0d38744dfdf`  
		Last Modified: Tue, 14 Jul 2026 04:34:06 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb45156eb44c448b05b969bf6bf04fea4e6a9c4a3bbe4d74a1981b19e51878bf`  
		Last Modified: Tue, 14 Jul 2026 04:34:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:02b6ef4bee5a7290e8c7090c20b07625f0c34ed100ce1e09dd9d500d2b5293f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5270119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a83728f5b55c364aa995564957e23bf62d76ea5870eb9261c46a365aa94863`

```dockerfile
```

-	Layers:
	-	`sha256:7bef73ca722b1831b9856f873c5189a47d871cec5c3f573eecebab85ae325976`  
		Last Modified: Tue, 14 Jul 2026 04:34:06 GMT  
		Size: 5.3 MB (5255108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fb013c2f5ef7d90e3ec53321d30dbbce576303c0c7d3c3f540400ede9139785`  
		Last Modified: Tue, 14 Jul 2026 04:34:06 GMT  
		Size: 15.0 KB (15011 bytes)  
		MIME: application/vnd.in-toto+json
