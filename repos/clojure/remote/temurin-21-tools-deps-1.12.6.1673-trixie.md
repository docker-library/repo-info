## `clojure:temurin-21-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:8a6a4748992bf098546b4c509a6a5ab57edd350a5472cda312c2846addf0f93b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0f77f2c386399c7df2dd1fac4e3ba0979deb2da755be2ec867b6cc627a5afd6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290387499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc20ad6b18f24b815e21e513fbcfc447b279b8cbf5ce3153c5d69820c008655a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:05:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:01 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:05:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:05:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5770e9b5b997a87b39179d37317682ad323c13f5656cefec5f41dfe23dd5ab29`  
		Last Modified: Thu, 29 Oct 2026 20:05:39 GMT  
		Size: 158.4 MB (158409409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3aa34b39c7a5d3ed6d4d2e63672c19585853d3697ae656ef91ae67ea35ad04`  
		Last Modified: Thu, 29 Oct 2026 20:05:38 GMT  
		Size: 82.6 MB (82569152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca49dccdbc0feb7399b2d8afa9568458f1c6bbf5297441cd205c63ebcdf9ff82`  
		Last Modified: Thu, 29 Oct 2026 20:05:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492b6b88a1e22cd920e5865f652a4b42f19dc830692ac0e2fe591ce6cddbaff7`  
		Last Modified: Thu, 29 Oct 2026 20:05:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e6f09a5ee2ec050b89cf1913d3084ebd42cdf393b400847f8931597a07a5e29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6246df5b42fc7b8713c4fdc4111a6bc912802492092ca5af5616580d2eb9a8`

```dockerfile
```

-	Layers:
	-	`sha256:56e91eb6f659d0fbc87f8fcfd8ac9acdb21b6d94c8a84594ad45a3b8749de953`  
		Last Modified: Thu, 29 Oct 2026 20:05:35 GMT  
		Size: 7.5 MB (7478611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c87398df5b644659d04161421eea4abf4743ea344524ad2234472232f2b41f5`  
		Last Modified: Thu, 29 Oct 2026 20:05:34 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1ca730586b7873aa71a40fed4c7fd8556411e4c05bc2bc4ef5dc0cae9a2a7e76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288861444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ee31ca2be4b63f39e39f8447b5bc9d2a87426191b6a48d528d61f535977bc1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:05:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:46 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:06:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:06:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6a9c9dc3233ec1e126855b70e6f730e79266c2b80297852e52cf9b30f42796`  
		Last Modified: Thu, 29 Oct 2026 20:06:29 GMT  
		Size: 156.7 MB (156691645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ebbebe6c51d771743d85fcb7fbfa17c562e82cd706433d1fee2dd2bf198d39`  
		Last Modified: Thu, 29 Oct 2026 20:06:28 GMT  
		Size: 82.4 MB (82392575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd96b51db019f895fe3b965d3dc1f0d66a67d6cf9eb9fb82095f84db6386ef92`  
		Last Modified: Thu, 29 Oct 2026 20:06:24 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c10dd5b7075b4bb523e77e2c2aa23242e832e418b76e467868f56ec3e834ee6`  
		Last Modified: Thu, 29 Oct 2026 20:06:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8e7c13cde6390ee3f29d3ab77e008a4c976ecf008a0b20747a9580ddb975d14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2140beadb8343cc07e0abf9abc7ecbff88a0d66e3ef929d44d3d91717b9635c9`

```dockerfile
```

-	Layers:
	-	`sha256:49c4078d48b7ad1469d82f835f75b26152a9d43812d6a9827b135e3e9b380bf8`  
		Last Modified: Thu, 29 Oct 2026 20:06:25 GMT  
		Size: 7.5 MB (7485004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aecb4c371ee1e9a49736e4f1c16d32a5a4160e30550a7c11914bfb36733e706`  
		Last Modified: Thu, 29 Oct 2026 20:06:24 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:775232878d31b14a4911cb8e950e3f7036d74cc7203ca27a1d9d99ccf3917ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298793442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571a6877f2bf430d784a8352f930682fe50dcd2b6f42f66efd0143d6fa79d150`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:37:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:37:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:37:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:37:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 19:37:55 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:47:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 19:47:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 19:47:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:47:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:47:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311fb72f126c25254fc06b361c0ee7992e00f2ec852a95f0b55faf65bec2177c`  
		Last Modified: Thu, 29 Oct 2026 19:42:07 GMT  
		Size: 157.6 MB (157573262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b69b190af6e6eb75b29f6794d3e3cd4766fedfd12ab9c62b1506beda7bd380`  
		Last Modified: Thu, 29 Oct 2026 19:48:05 GMT  
		Size: 88.0 MB (87996892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb64917b6b22ecb9686f0ba42d767f28a1be7e7cc02d338dfe3e8f2920fadb6f`  
		Last Modified: Thu, 29 Oct 2026 19:48:02 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ddff4a8417559a80e4396b88868c2567cb348d7ea824469f2d2217e9db2a5c`  
		Last Modified: Thu, 29 Oct 2026 19:48:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dea5c3c14fc34536c1d475a5136f28fc3f807bc7137e7afc931ac81d490f9909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7497738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fd64da0e10ba9909feac0b0eacf7e918108de499b63e8d45d001282fcfe3d9`

```dockerfile
```

-	Layers:
	-	`sha256:ae6c0287df95aadf04208ba62b6570a681e82fdbee68c405086b26b3e1399652`  
		Last Modified: Thu, 29 Oct 2026 19:48:03 GMT  
		Size: 7.5 MB (7481782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9fc27e21f6ee69a96129f1f223e1675690837f002531e8d06858f1b2df1bfa0`  
		Last Modified: Thu, 29 Oct 2026 19:48:02 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
