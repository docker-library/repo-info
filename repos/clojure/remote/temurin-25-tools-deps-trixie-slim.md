## `clojure:temurin-25-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:e87cc690d64a317f43dcd2ca52d8d8b5e09b44534940f350ed8a904d66a248f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:67cfea9455f99516ef820addcb3345d582e5d084636766779289c4c51a63c609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191445475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192f5027c677dcf43a52aa879c25fe85cafd4eccdc9d38879225fc657c3f153b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:11:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:11:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:11:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:11:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:11:04 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:11:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:11:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:11:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:11:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:11:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6d6b7de248cc9577c6ec5036c8e09d2e109eac111497783eb46d03b91613fc`  
		Last Modified: Thu, 05 Nov 2026 08:11:39 GMT  
		Size: 92.6 MB (92598928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846ee206cd067763d03092e6cb41a08f37da3f132d8c91d8b76e50dc51dda581`  
		Last Modified: Thu, 05 Nov 2026 08:11:38 GMT  
		Size: 69.0 MB (68989371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5471afb435f83370a05c24763cfd5181a9813c731727dcd5d0d8b8fef2bb9c96`  
		Last Modified: Thu, 05 Nov 2026 08:11:34 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6807655ccde6b06c01cc4410116af70832254d312167a647b7932cbadb8c725c`  
		Last Modified: Thu, 05 Nov 2026 08:11:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3a1ee96feddaad9f6424734621d7bb7cfbac7e6e965e35c21755992b83c057be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5246788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e035395508d911fa10070ef4461b777ad7a06024cb358d87ca8ea3ce2d13567`

```dockerfile
```

-	Layers:
	-	`sha256:7d31c26871421822d7df33fdc1096f2d8ad3cc88226cacb239c798a557e2154a`  
		Last Modified: Thu, 05 Nov 2026 08:11:35 GMT  
		Size: 5.2 MB (5230141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34396c2e1f07dbf88835435ef3b862bd9a76caa7030e410f471b92832283167b`  
		Last Modified: Thu, 05 Nov 2026 08:11:34 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7b6176526e6dd0ca438774ac3af29fdd70218951cac322dacb314e394c4f27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190545771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf41addf4bfdecccf057ced1eef939eb0732bd622795602b7de80d348ca894e8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:20:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:20:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:20:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:20:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:20:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:20:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:20:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:20:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:20:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:20:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af69370317145ca96d635e9129f8c7c165fe7ee19a6d2bab3f9da717129c33`  
		Last Modified: Thu, 05 Nov 2026 08:21:15 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfef47002e9b2dbd4202619141059e3bf6f404b660b3fca4b077c429838678cb`  
		Last Modified: Thu, 05 Nov 2026 08:21:15 GMT  
		Size: 68.8 MB (68805089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e6a71e6abfbe24e5790065ba542f1b6568f320528295c5b5119f99527dbbfa`  
		Last Modified: Thu, 05 Nov 2026 08:21:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8333f229c172b6de7568db4fbad73fb576d4aeea93429c0d4e2a0f13ba1dbcdc`  
		Last Modified: Thu, 05 Nov 2026 08:21:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f007354be6a451b43aaf2fe2199e85caa970b1f5a3b4baf33943fc6ba6ddc1d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb244a7620154bc35d0638aed6dc283bb52372ae48db34149e9d58d6edafe46`

```dockerfile
```

-	Layers:
	-	`sha256:b33cad51c0c413e6c65252a0fc2486aad8a936e7718831e58940940721823bb1`  
		Last Modified: Thu, 05 Nov 2026 08:21:12 GMT  
		Size: 5.2 MB (5235923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46da78ffbacffed3320076f6d66cba65ffac83454e76a6a9777a0b1b7b8726b4`  
		Last Modified: Thu, 05 Nov 2026 08:21:12 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b26382519a1cf7d31df71c651efb6f3910a1de5876b10a5e4217c09a969d71d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.2 MB (198198950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1664c25c94ede7fd2dbf9f79da55dac8c9abdd4d2e9afbd957046bf96068489`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:07:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:07:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:07:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:07:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:07:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:12:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:12:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 16:12:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:12:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:12:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16eb107ad4aab0d839191f5d20438fae2bc20bed304c2176a95bc563270b24d6`  
		Last Modified: Thu, 05 Nov 2026 16:11:42 GMT  
		Size: 90.1 MB (90111671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb158acc1e208c0f0786d0979896b56cecc32bfd8b82a94956738516ab2ef66`  
		Last Modified: Thu, 05 Nov 2026 16:13:28 GMT  
		Size: 74.4 MB (74418589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7bf72c0c8da33ccca2ddfac99640aa14ce7147db9a3abbcd1dbc0fb0ad78b7`  
		Last Modified: Thu, 05 Nov 2026 16:13:26 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cc80f22fb691e8555ea70d73a6d76119f789db6ab4180c85d97b3138b938566`  
		Last Modified: Thu, 05 Nov 2026 16:13:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7977849076af48445627b95e73f6875099fb3d65226ae26c595ef9b7995adf7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d1a39f83224edf8359c9184386b3a0358128d5fa0debbb772a53ace9c4b008`

```dockerfile
```

-	Layers:
	-	`sha256:61c1ee3149e46e48518d3ee7cc0c0712ed5a14aff7b05ec32aad0b5804ae72c3`  
		Last Modified: Thu, 05 Nov 2026 16:13:26 GMT  
		Size: 5.2 MB (5215975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfe633973241020520f7314b12fff7630524c38bd395a551a02ff8763a448814`  
		Last Modified: Thu, 05 Nov 2026 16:13:25 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
