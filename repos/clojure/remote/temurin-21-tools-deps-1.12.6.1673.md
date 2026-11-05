## `clojure:temurin-21-tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:142e93f5b4b3a2a93bef227515df452040f408f4ef71853b9f65598b1a625bb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:c9744de36b127799b944a68ec89c519f54e6b7183e92cece87868304cec93e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284935275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb50a561e1e86af1c5f1b3c84c734daa245c02282dbb82d5da2c7a141063f73f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:09:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:09:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:09:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:09:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:09:40 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:09:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:09:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:09:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:09:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:09:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a1e44109841e631bf5e761fbd70d2a93f8303a295273afeb6b26881185cf20`  
		Last Modified: Thu, 05 Nov 2026 08:10:15 GMT  
		Size: 158.4 MB (158409464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f6d7b4efc0b887501741b97b7bffeb1acebaad60105427f92b7894162b3fae`  
		Last Modified: Thu, 05 Nov 2026 08:10:14 GMT  
		Size: 78.0 MB (77998282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66cf91cd03e0e2572ab53ad922e5a348cb53e65aaaf54571b40dc981d0675a05`  
		Last Modified: Thu, 05 Nov 2026 08:10:11 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8cda4e9f52a2befb64a03ba021e69372ecb356ae2d0318bfa12a480a861651`  
		Last Modified: Thu, 05 Nov 2026 08:10:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:8cb52b4e7b7bd89ed439aad9903fdb8f16b65e5cab0e760fa9019380c77c2b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d92a2efa1443b8332b6c93ac4dfb08b338d572359beae7bc458b86e92fb8a17`

```dockerfile
```

-	Layers:
	-	`sha256:ec9e0493cdcb9f731afa937ec7befa9680827444ca36f251e6240b8a9349a4b4`  
		Last Modified: Thu, 05 Nov 2026 08:10:12 GMT  
		Size: 7.4 MB (7381169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3215c417eeea8413bd6f8d407469c2e5d4d06f511f8f4d086d9f7ff10ca92f33`  
		Last Modified: Thu, 05 Nov 2026 08:10:11 GMT  
		Size: 16.6 KB (16615 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1c1af05689ca336886c263f22e1b4a98a6710229e71de3d685364d83d7d9322d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283103788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8098b7b93ec2ac51520e65133b9d61f01d34b4f9e5625777093cb952adedb14f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:18:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:18:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:18:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:18:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:19:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:19:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:19:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:19:01 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:19:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b53ecf8d60125bd8bf53827fcb10c8afa365735317873765207086912bc23de`  
		Last Modified: Thu, 05 Nov 2026 08:19:26 GMT  
		Size: 156.7 MB (156691634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70862c339ed65e5e8188821bd456d7a1bd1199d229d25949f6c665789ede0c51`  
		Last Modified: Thu, 05 Nov 2026 08:19:24 GMT  
		Size: 78.0 MB (77998656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a3a2c899f273c666d44829f3f8dbaa95db0ea1c81570842d8e1a7547d34802`  
		Last Modified: Thu, 05 Nov 2026 08:19:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84034cc474ad1ba8240114286d7457879df17ecaa5f0991546039fb4e7e081c`  
		Last Modified: Thu, 05 Nov 2026 08:19:21 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:3231c3c0c877a26598eee9612efc512505be700e10bf2e798b3ea255aea1fd3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5d1647fe2343a71deba8488b2188804e5b77d927338fdad2046426fd687a09`

```dockerfile
```

-	Layers:
	-	`sha256:d6417440fffefc57df07e8a06cf8c2a0b04c75b625c7a1c1dff2a3f07f7c13b4`  
		Last Modified: Thu, 05 Nov 2026 08:19:21 GMT  
		Size: 7.4 MB (7386956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f15e879afd834d9f90c3e97493a31ba438c4b6b33331b952bdede71f21b32a88`  
		Last Modified: Thu, 05 Nov 2026 08:19:21 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:0f4a669ca3adb033fc6c617c1cdf3870830796a0fa4fe260008ab07cd89dfa89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.8 MB (293766892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62794d7e9ed9cda4563ca47f01cc99acf3786bef55cd75c40fe871c38bb65d90`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:47:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:47:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:47:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:47:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:47:47 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:57:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:57:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 15:57:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 15:57:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 15:57:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43000e10f4cba449859ab339e1e184da2141ac608835cc850c77c1331117815d`  
		Last Modified: Thu, 05 Nov 2026 15:51:45 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4020661d5ac1d0d2b43b50067bdd8130b4f410efad0f84d87083bc4d5423868`  
		Last Modified: Thu, 05 Nov 2026 15:58:39 GMT  
		Size: 83.8 MB (83823989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e140ddc15ed731608bf90c15647c4638a5ab5ff5d7aba112ab1822c6e0f8b462`  
		Last Modified: Thu, 05 Nov 2026 15:58:37 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8564869d4632a1c36ba4d108b4cc12ebfa198bf614213264893c71158e23b90`  
		Last Modified: Thu, 05 Nov 2026 15:58:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:9682cb102f76dbcbe774b7a70d4e2d2af7e7398c7498ff7c6d6df5f774f9252b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e32aeb8b8f47d3cd504ce608a28ce24d1a3303b38d433cdba4d16232caa831d`

```dockerfile
```

-	Layers:
	-	`sha256:af68452073729ce85b531df4ff7845e6e7b0a72a91cfb025c9be610d8e41439a`  
		Last Modified: Thu, 05 Nov 2026 15:58:37 GMT  
		Size: 7.4 MB (7385147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e53f45b0bc0fa929d98a615f52975897b989f4badc2d6016186199c32767a826`  
		Last Modified: Thu, 05 Nov 2026 15:58:37 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
