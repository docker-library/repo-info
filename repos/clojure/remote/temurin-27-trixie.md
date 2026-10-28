## `clojure:temurin-27-trixie`

```console
$ docker pull clojure@sha256:00970de50d2d4d4e9155c4afea566102df556a5592d7090acf7ac82304227b89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4405a21d1823bf3bcf80d578589407f813ac26370e0aa47f6e4574ba17e7d383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225601113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdf5bb73c60fe94001834527fc466a455e27a4b6865438cf18c8ee1bbb46e04`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:57 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:17:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:17:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:17:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:17:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b677b30daef80acdd12d3596cb15e15bbd6d967ba3f4246e0a27c2cf63c2c8b9`  
		Last Modified: Wed, 28 Oct 2026 02:17:35 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed25e1c95cb83ef2a74dfcfb3e25b3a11f7b7a6876342bb22216f3dfe5cc4ca`  
		Last Modified: Wed, 28 Oct 2026 02:17:35 GMT  
		Size: 82.6 MB (82569691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5d12069246def98c4df7b5de7604c4ca88abf1d8ae1041ec35ecc39e1ff9a8`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9219f54094d5519f5a999967769b5079de48ff570c14d9b0a0af0175bd664190`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6d1d27c2b2f8af43897f248e041b5da16cab96bcc59fa27bb7ffb6d5be4989ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e61bbc1eb58c687664e3998e41e4cd0daf38a4e0952c19406fd18406085f0f`

```dockerfile
```

-	Layers:
	-	`sha256:f67cfcf4ecfe07831df4038ea92f0b9d8177594328e1b516e16488160bbc5c59`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 7.4 MB (7440391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7678aef523344fe9b340b122266b0a646be6f00826fa01e37723b28ea516f0ae`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:506860bcd2ff66a88afc71ce927012d8d2f76efa5265c34cd21cd2cb87e0b362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224802877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6403c6da471d9bf40e78742d5ea4722814d5e985c7f590789b03b9e26083c72f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:24:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:24:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:24:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:24:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:24:18 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:24:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:24:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:24:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:24:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:24:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce77081b2533e4e9078c5f26775fb3fe478fbf07058839c9067ae4b45ffc0ab`  
		Last Modified: Wed, 28 Oct 2026 02:25:00 GMT  
		Size: 92.6 MB (92633133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96529bc52bdecd4995677739f6dff10f5c86f3518d618707ddd0686bceece27b`  
		Last Modified: Wed, 28 Oct 2026 02:25:00 GMT  
		Size: 82.4 MB (82392521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747090b5bfc827f2783b07c18b5230e2c84da25d1a28a5f33fa9ae6440607d86`  
		Last Modified: Wed, 28 Oct 2026 02:24:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbbb41b3b7240c1c2264a124c5ca5ebb672f15c8917cd26d6fa6505039af66cc`  
		Last Modified: Wed, 28 Oct 2026 02:24:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:79c73b13cb0d5f1299b3b1f644134471139db1cb0f40961ea44d4e59e203f512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7462798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e8f57a87bda7ace16de7059a4cbb6645b4f39d9a948132ec85fd670f8d6ba9`

```dockerfile
```

-	Layers:
	-	`sha256:bb40f16eb35430e9aa63975a6d65717ec9bb5f970406e4656dd113ace14738a6`  
		Last Modified: Wed, 28 Oct 2026 02:24:57 GMT  
		Size: 7.4 MB (7446781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e7db2f78589a7059690ec75aa62829654d25ee089d6bf72221292e342f1f938`  
		Last Modified: Wed, 28 Oct 2026 02:24:56 GMT  
		Size: 16.0 KB (16017 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:7ac863ed11c4a21ed8ed19d42aaf276eb5620867332e2696fa14c646600c2b03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233476126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167bb3e2bbed8ea951cd8d89e93743c6315bb47d08dd95e435fb5fad8eaf24c4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:42:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:42:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:42:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:42:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:42:46 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:50:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:50:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:50:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:50:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:50:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41d58f5d27bafd8941c81f74ff52a0e744d1a6710ebc0597802948bd7967c91`  
		Last Modified: Wed, 28 Oct 2026 10:46:52 GMT  
		Size: 92.3 MB (92255827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cc327ea0315bf87d4eb4e749487f904a6de64209662fe896cd2df4712fc4d4`  
		Last Modified: Wed, 28 Oct 2026 10:51:07 GMT  
		Size: 88.0 MB (87997013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35a7a898e4fadb4ca5129c023768ed76aba4f9313187725b80798648f7a8ffb`  
		Last Modified: Wed, 28 Oct 2026 10:51:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f047367dba4df7d0cec063ace30244ee4a2e585246fe3186fc124bf3beb71f`  
		Last Modified: Wed, 28 Oct 2026 10:51:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0ed94195e9aa2a3e7cb0ec27c64d57ab4abcf58aa1934ea69cfc6a5cc94822ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7444693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5213471266385ca9d2e0950fbc3a68f3d348758e4356e772cff16fc553189da`

```dockerfile
```

-	Layers:
	-	`sha256:68d6ce331f80abe7e5f427a515575786738dd54355d20d64c2a806af844f3b92`  
		Last Modified: Wed, 28 Oct 2026 10:51:05 GMT  
		Size: 7.4 MB (7428744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bec4b6995589d55576796e9252e09918052e2ea4ad68c6596917351ae485d3f`  
		Last Modified: Wed, 28 Oct 2026 10:51:05 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
