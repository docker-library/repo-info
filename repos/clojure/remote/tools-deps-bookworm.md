## `clojure:tools-deps-bookworm`

```console
$ docker pull clojure@sha256:cbff44e242793782cd6fa817eb963760fef84c15a646b3811274a9de68863f62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:cf4f15f0ab6a12559b07417704d9fa01d1f4c2f70c62877e290d74d210305982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219121588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba905378c4606bf7e035ada55458d5389ef2ff7be847f7e8a9e0826165ae4c9c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:05:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:51 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:04 GMT
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
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3dfa5bd30a4575f29f47c11755dc2963ddf2668ae5a927528bd94f1ccf406b`  
		Last Modified: Thu, 29 Oct 2026 20:06:26 GMT  
		Size: 92.6 MB (92598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b15e198fe1416e0b97f7a84f3c16695534645557255506e0467ea19bfa040`  
		Last Modified: Thu, 29 Oct 2026 20:06:26 GMT  
		Size: 78.0 MB (77997126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6db95b847094d793a914d41f9aa6e443802844244299f5aa500eb7aeab00ec`  
		Last Modified: Thu, 29 Oct 2026 20:06:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2195e76ca13632813f5bf8ff11d42dcfecae717837655daf8e786c4fd86aa0cf`  
		Last Modified: Thu, 29 Oct 2026 20:06:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b54234cb132699d547b9b3545174b839601a68721e8b40598d72e6a9e385d757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceef91b0e874334b659aaea50f66686925342772db1482c8927d5cf931166caa`

```dockerfile
```

-	Layers:
	-	`sha256:000ceae11d03f8ef145f0e140d540864e8d08db78b795d25036e5a890c44e0e9`  
		Last Modified: Thu, 29 Oct 2026 20:06:23 GMT  
		Size: 7.3 MB (7347957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8002941dd7893a8078a14372de7d14b66846488ed8d6af84de5dd167805b65f`  
		Last Modified: Thu, 29 Oct 2026 20:06:22 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:785c4470359b992deb48bf4940c44fcf4679ffa18d0a410e99710f8a05aac750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217927290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b0ee62cd64e9ea0e2fe957e5191c2d46588d5ee3f212c9844e5e94be827298`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:21:25 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:21:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:21:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5a0e17b0c2449edb9eb21955e20ac686a21dc231ecfd875c03ec6f6edf174e`  
		Last Modified: Wed, 28 Oct 2026 02:22:02 GMT  
		Size: 91.5 MB (91528850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c36dcdc47a73194d10c38d313342196dee34ba0ecbd6af86b2f80c5d894020c`  
		Last Modified: Wed, 28 Oct 2026 02:22:02 GMT  
		Size: 78.0 MB (77992225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e9f06154fa9d439112437a8c23baf9316163041bca20acd0b40bb9bc1adb6f`  
		Last Modified: Wed, 28 Oct 2026 02:21:59 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dd6e216d54b7dd35468aeae24db611c7e814f4003bedd484f3ec0323f06a11`  
		Last Modified: Wed, 28 Oct 2026 02:21:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:31dc04ba3adce27971c378b5e7c70412f47c5c41a07b26980c6eceb60942f5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7371912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a0da9dd692644dc2e04d475c1a791dca43a96d938184784d3a8705318f3763`

```dockerfile
```

-	Layers:
	-	`sha256:d9226c8ab19f8d3ee1b840f33f99b76fb127207e25eb02f13354cdd09d8282f2`  
		Last Modified: Wed, 28 Oct 2026 02:21:59 GMT  
		Size: 7.4 MB (7353797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a894e494957659a7e3d10d3a619b96544f3556dc7780f060841ce1d57486ca5`  
		Last Modified: Wed, 28 Oct 2026 02:21:59 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:089c5049e53b1a1682cca46b9b77355c82dd9bff0672055d2da3e652b0bfcbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.4 MB (227447140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18452e73688cd9ec7c94611eedaf48a89d9582e0f23bb61ae51de5147750a1c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:27:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:27:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:27:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:27:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:27:28 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:21:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:21:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:21:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:21:09 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:21:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9bc9cd218bf6b52100e0fd864b8cf7afa7878e9ff44a9ffdceb8ebaf8fe8e2`  
		Last Modified: Wed, 28 Oct 2026 09:32:31 GMT  
		Size: 91.3 MB (91256257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac14e19fc792ac1856e84cd299e449e669c56940d74adce23d740ea74fa4e11`  
		Last Modified: Wed, 28 Oct 2026 10:21:51 GMT  
		Size: 83.8 MB (83823528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbf09da2adadf80e5363b03455e66cb6aa9ce23dc7815994e1b78e96db5f403`  
		Last Modified: Wed, 28 Oct 2026 10:21:49 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c60e278916b333a1cc2a9445f187d3690bb4805f0eb4571a44325c817b618d`  
		Last Modified: Wed, 28 Oct 2026 10:21:49 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8b2a46c694887238e65cecd3b72cd45f9dd291d1ad4d34f013825534ffbc4188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7354533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3210873ae828631dbc482007373f754369d9421bff31ee95d7bca99439924c3d`

```dockerfile
```

-	Layers:
	-	`sha256:8d73c2320b852ed01143bee6e6b9f2cf6993d2c42dc641c19b6064c2f1eb2b0a`  
		Last Modified: Wed, 28 Oct 2026 10:21:49 GMT  
		Size: 7.3 MB (7336525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f6de17b0381877e4dc96a6155ab36eb8367eb8cf11b03add801b8e31ebeaa6a`  
		Last Modified: Wed, 28 Oct 2026 10:21:48 GMT  
		Size: 18.0 KB (18008 bytes)  
		MIME: application/vnd.in-toto+json
