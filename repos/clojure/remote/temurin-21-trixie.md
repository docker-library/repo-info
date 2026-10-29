## `clojure:temurin-21-trixie`

```console
$ docker pull clojure@sha256:09760715017f711d0201385863729327ad665c80942d1d4b8e0f1d9613aabcf9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie` - linux; amd64

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

### `clojure:temurin-21-trixie` - unknown; unknown

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

### `clojure:temurin-21-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3f626cbc193be67c97f0058a155a0a95a391a89ed799ed24288656e8e75d23a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.6 MB (288570496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85704abf50ffeda23d1ffed222755b3142293bab09ea23239ae3a980bfe3fe95`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:20:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:20:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:20:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:20:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:20:27 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:20:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:20:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c90cfce8ad2c9d2f4f6e92b445476bbd2dc80488dbb9d888bfce09e3d693f11`  
		Last Modified: Wed, 28 Oct 2026 02:21:08 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38652348c3bddcac3158cbc6fcd1ac550a36194521ee30374e881b59d61e2431`  
		Last Modified: Wed, 28 Oct 2026 02:21:07 GMT  
		Size: 82.4 MB (82392597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca16f4f38ed98fd8f423f7851e0ae161f4ed6ad3f5e74303d8ccad8853efb8d`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762de98fab86360342796c7a509fe04bcbbff14570a1db450959a877078bad61`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6f649f7d518ef816dc97094098935261392ba446db9bda04e41fd285e4b3ae96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2600288936ce98aca190dd1b6065eea2d32be19db45e52ab7d9c4ab6eeea7855`

```dockerfile
```

-	Layers:
	-	`sha256:090e02d1fc5eb131ee6fd229c54d78ab408b222ea2ea37439e47ee4b74fcb0ec`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 7.5 MB (7485012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eed4f753fc0034291dc29edf5d48522bafed9cb6642e59032a65d54a0e4c3183`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; ppc64le

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

### `clojure:temurin-21-trixie` - unknown; unknown

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
