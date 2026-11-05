## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:ba6b0871e821f92f9f1aef1303e28538ae155f4c038cf6dc4cc8a07a42810969
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:c86236c8ac8fcfe794d03ab2365fa0d3072931c3e4dd577de2edf8f8364b05ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278069309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377919335402c0e1def279a170896bd6e3495529e0df6e6868f8bea0c2529067`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:08:51 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:09:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:09:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:09:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:09:06 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:09:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2698790272c107753b8ef7599c15694150a09aed62e88fbdbb0f73cebf39a16`  
		Last Modified: Thu, 05 Nov 2026 08:09:27 GMT  
		Size: 146.1 MB (146086141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427d4adbd0fe4f290f072dcac775ab1a900bb4bab3ed0fb491c8983c5411a441`  
		Last Modified: Thu, 05 Nov 2026 08:09:26 GMT  
		Size: 82.6 MB (82569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea25eaf90b844ec55f94fa63c46bf3cfdb73c6337e00d86b1b489d5168222409`  
		Last Modified: Thu, 05 Nov 2026 08:09:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7774716a9309b481a9d89d25353dbb6d19c1b4127385d392b1da58930ebd0b69`  
		Last Modified: Thu, 05 Nov 2026 08:09:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1fb2e3f3c6cc438923c94e5941a86339106cf73ec987f82e7b07213fda79d30e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7492667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5e00eadecb9376e5b2629eaa13b29a50854cbd0b7db207dc39488656b971e9`

```dockerfile
```

-	Layers:
	-	`sha256:609de08fc8f4f7df1a23ab4c00c4c99af855e5e1d4dc7e81f3c16e8798a05c19`  
		Last Modified: Thu, 05 Nov 2026 08:09:23 GMT  
		Size: 7.5 MB (7476759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aea27c52cb8783dfd6d3c9878e29227be1a173374d653c1a5954df712f66983d`  
		Last Modified: Thu, 05 Nov 2026 08:09:23 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bf066a86ed08e1aa505b0ba31b18cb000248623c938c48dd54c6b3fde17be225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277129603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a045267d58ed30565cb19843ffbe08943fa25db46d9a77470630877ac9aa457e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:18:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:18:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:18:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:18:03 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:18:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:18:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:18:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:18:22 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:18:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695a70c0e4eeb410f827fac1fe9b99b70c0c381a4d0fe3f677b02d785b56f659`  
		Last Modified: Thu, 05 Nov 2026 08:18:47 GMT  
		Size: 145.0 MB (144957208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3425b55bfd0112f78ab11953b4576f497633c9b0f7ef34056ff455f9c9ad04`  
		Last Modified: Thu, 05 Nov 2026 08:18:46 GMT  
		Size: 82.4 MB (82392747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4afc525fb4e4368b7ae8a2280c3874b8514e150b0a1546bdb5daffa7908f74`  
		Last Modified: Thu, 05 Nov 2026 08:18:42 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b6d3b425656178627fe37ad1e820b6a23bb72bfb5a69b5e2b5f9a9e3f24b78`  
		Last Modified: Thu, 05 Nov 2026 08:18:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8115b1db64a0fd7fbc4f6dd0ee95e6e52aad077bff4a58006e31ab492fc628ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ab64bfa1826cd6b3254562a1cc2a7eef6085cfc8f3bdba8a879d6902000844`

```dockerfile
```

-	Layers:
	-	`sha256:c90d3e64c94b1fa127032bc01fd6901066f11ae521d0f9a09023386b66629732`  
		Last Modified: Thu, 05 Nov 2026 08:18:42 GMT  
		Size: 7.5 MB (7483152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bb679c9220a5e714d9a77f1fad070061792e7998b50522238e72f451ef5522`  
		Last Modified: Thu, 05 Nov 2026 08:18:42 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a4e3515606259f8c60201e90259cd02b436b65e10a6908ed470dc29e581aceb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286084485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9513f3b4f9d5cfa0d0b5f574c066f0af1efb9f7176ee9942e25a87b3eb99f700`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:45:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:45:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:45:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:45:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:45:26 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:46:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:46:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 15:46:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 15:46:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 15:46:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee03120020298d10b2a58fd447fa0b14563aea18a134ae0bb4b68b9840afc7f`  
		Last Modified: Thu, 05 Nov 2026 15:47:23 GMT  
		Size: 144.9 MB (144860486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930858d28e7697f8e20f456b1baaab5cb33359aa6f476a8ac8342f424cbc0fae`  
		Last Modified: Thu, 05 Nov 2026 15:47:22 GMT  
		Size: 88.0 MB (87997369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6d198ae0f5cf63d76e3c313600ee54fb4fb0f1d6773e25c531ac57d1b691e8`  
		Last Modified: Thu, 05 Nov 2026 15:47:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e900da3ef373574099ec0f01768cdd7d4fcc4ec225b7ce7aad238c57608d73`  
		Last Modified: Thu, 05 Nov 2026 15:47:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4d3e54e5dde8c4c5f6ab3ab18fa695013f5e5addb08cfec1276675c352cc100b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7495886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0670f0f435ec35359b2ecf5764388af675934facb06b33ebee3415d2335cf922`

```dockerfile
```

-	Layers:
	-	`sha256:6c0239413981c2c973ff359f3199c65381c94609f58f0b8ede0265207b95690f`  
		Last Modified: Thu, 05 Nov 2026 15:47:18 GMT  
		Size: 7.5 MB (7479930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e77199f32cb105ab5ed3753899bee6b6e2c5c7903bd56c3e8cc74938e0d0027`  
		Last Modified: Thu, 05 Nov 2026 15:47:18 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
