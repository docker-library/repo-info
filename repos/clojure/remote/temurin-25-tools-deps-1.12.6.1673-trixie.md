## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:df4e14d5581f53d921c6179d2932bddb32599b0967f626c778857f6d6ff1824d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:6c9a88b8fa676888756963e73f696b9b7a98fa1f45bb7f4864e0a92a5bb9000b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224582004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2a330edf71caefa6c58d6c0860a6c3719e6f12c260c4d84c31c4e35b2f50aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:11:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:11:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:11:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:11:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:11:07 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:11:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:11:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:11:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:11:22 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:11:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e137e80e197e704908241e100261f04643d1685880f0f6d96f32e8e00ebd02`  
		Last Modified: Thu, 05 Nov 2026 08:11:42 GMT  
		Size: 92.6 MB (92598905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fe2d0f6e376adb3d3b047b605eed35d36164c1e49bbff352924ea85d7b5489`  
		Last Modified: Thu, 05 Nov 2026 08:11:42 GMT  
		Size: 82.6 MB (82569549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff1e2a71e7ead79d9ae8e034398957bb9d3b2460055e412cb253d2f6491d12c`  
		Last Modified: Thu, 05 Nov 2026 08:11:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1b0972281a44bf9f0000834b27bf6a5e03345418559053636fb4240e96d5bd0`  
		Last Modified: Thu, 05 Nov 2026 08:11:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:569528c2e6c8856724c759b8226cac9d2f02968cd0d1b01d0a650e9078ff9f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d654157009ad2d0f35a9ce455040ebeff9d29e589c101f5429ebc5aa8039e4a`

```dockerfile
```

-	Layers:
	-	`sha256:31e178aefa999133ab87810d368391ed8f2c3c38a0b7571669f9d97f24980049`  
		Last Modified: Thu, 05 Nov 2026 08:11:40 GMT  
		Size: 7.4 MB (7444823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ac2ad8c6e7fa5a77fe9956ebcd59acbdd050b47a0fd24d7443f73b4d103bd28`  
		Last Modified: Thu, 05 Nov 2026 08:11:39 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:36b4c87786fcb0e82287076a7db0fd0000721aff9791219f80708c59e8b2f703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223698058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a81771a5cc4753b63b74edff69208a5eef6b69f78876d01b4e4135678ae5c0d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:20:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:20:31 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:20:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:20:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:20:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:20:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:20:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c836d270ddda974af6321702e104d15c971729f5b22fc6045ad1e6bcf0a081d2`  
		Last Modified: Thu, 05 Nov 2026 08:21:10 GMT  
		Size: 91.5 MB (91525603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727421b9c6fb61d0b2aa72fc30f001f645aa0c165d29ff84f127078834a1eeee`  
		Last Modified: Thu, 05 Nov 2026 08:21:10 GMT  
		Size: 82.4 MB (82392808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f592739405287893ebcd98b3783b559aeaf3bbba454bf544c19fc096e12371d8`  
		Last Modified: Thu, 05 Nov 2026 08:21:07 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4717553b83b794e5b20c702645c0154a5d0940ad11cf5ba6cbbe27cef2bf5353`  
		Last Modified: Thu, 05 Nov 2026 08:21:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fae4cd50351b4313f76ba35d02dc80bd8f174b71ed6046fcf2a623a243f71a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360ec59a5a3e35251c83156624469a735259770fe0d358c70b72d0904742c63d`

```dockerfile
```

-	Layers:
	-	`sha256:bc898381a9d22bd328c56ee2a60403e54065949ea1a18139567ed6255201d434`  
		Last Modified: Thu, 05 Nov 2026 08:21:07 GMT  
		Size: 7.5 MB (7451237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4537f5392bb83f626f65ebd02b62e2b44da20e2346b1e3f2ae831be1d3d95b9f`  
		Last Modified: Thu, 05 Nov 2026 08:21:07 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:e7d6de4c42410a22df02ad6fc11f10db28d8983d1cd374f198922e40ff666d9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231332341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d279bd2b8ee0f7ea09cf161227920f7e4fb63a66427419c2c99599ee2c1fe1f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:34:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:34:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:34:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:34:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:34:20 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:41:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:41:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:41:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:41:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:41:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec987719a309d018379ffe9ed711b890b4cf54c38b046b86d69b8e3ff1cf3b7f`  
		Last Modified: Thu, 29 Oct 2026 20:39:00 GMT  
		Size: 90.1 MB (90111714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ea040d46d37ad1164391c336a89f1ecebd4467e4701c6b87e545c6da9fcc1b`  
		Last Modified: Thu, 29 Oct 2026 20:42:20 GMT  
		Size: 88.0 MB (87997341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e12d346be823e84490662711d7823c05927b8cd1ba2d0b45ba994ec9c40a0fb`  
		Last Modified: Thu, 29 Oct 2026 20:42:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2dbeaa948b2d40f8c7fe0f7aa7fce0e8d56e7df1fb1aa367be854ad1620abd`  
		Last Modified: Thu, 29 Oct 2026 20:42:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:74e016e2c31cdb95e8d35c55bc3c41854b9017cef4d78da9bf6f1b819334848e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7447332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f4fecbbce9d63abb1036ef1b67d9b3a93f956e29c041709ed9ee4a201aeaf0`

```dockerfile
```

-	Layers:
	-	`sha256:512cf97b7c669587cf581b0cda819c4b6e7cf842597ec06675facc9ae4da3f2b`  
		Last Modified: Thu, 29 Oct 2026 20:42:18 GMT  
		Size: 7.4 MB (7430703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3f01c38640e33c79677598a0ff4dd19575bc9bd3bfb7d860a9d12556961af9e`  
		Last Modified: Thu, 29 Oct 2026 20:42:17 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
