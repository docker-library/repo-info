## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:a207fff860685bea5baa4bbb90736677ffe78a087f0af950d0de89dd8a6302cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:5e7e01e5629164d6552b36e52d6e12fea3d7ec3147052670a701adbbe095488c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272612102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464b484fc4be6b839df692d0ce76758d174417c3e1d731236120acc46c7c1b37`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:08:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:08:43 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:08:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:08:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:08:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:08:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:08:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339e345172f4958af73f34a7a80b3a82f3cde7303094ade668d9588ccfef5587`  
		Last Modified: Thu, 05 Nov 2026 08:09:19 GMT  
		Size: 146.1 MB (146086141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b8f5849f6f09cb4e08b5ead470fc034dad7c5a4a2962af7dd80f03c4ed9a9d`  
		Last Modified: Thu, 05 Nov 2026 08:09:18 GMT  
		Size: 78.0 MB (77998433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f544bd091bc162497398c6af060d3a8cc6c2b7f30c5fd66fadf83e5a62607cf2`  
		Last Modified: Thu, 05 Nov 2026 08:09:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ec5db930e8152543deb0a6710f953986e5572b7e6b4e71bd62ca5d91f8618c`  
		Last Modified: Thu, 05 Nov 2026 08:09:15 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a4d04b86e1d3aafdbdb2fa6aab2a1a2bd1fab98d6c62fa18be8c58c54cc73ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7394565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc3530d637ccf4988ab2c3cea11227a9208f2fac1e6ea9deaa0b20f1c6256a7`

```dockerfile
```

-	Layers:
	-	`sha256:9f9ace592414ae53415358c1a624a865420840aafa6c11dcf821d0dcc918a5d2`  
		Last Modified: Thu, 05 Nov 2026 08:09:15 GMT  
		Size: 7.4 MB (7378633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b08c46f3aa1496d9717a898269e2f547b967b165eed1211d157a7bd58d448121`  
		Last Modified: Thu, 05 Nov 2026 08:09:15 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4ab27f2bf537c4ce1d28bd356826763093bee96fde9de5a23a8e788a808dbd76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271370031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee5d85a590e0b4b81e308de2329b9775f87999bd0fd825b3c7b4ea3f8c48aef5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:17:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:17:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:17:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:17:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:17:48 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:18:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:18:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:18:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:18:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:18:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8478c5da410f07f4720198d6af179e54aec6e03b43e7eedd7d579094182c1e80`  
		Last Modified: Thu, 05 Nov 2026 08:18:31 GMT  
		Size: 145.0 MB (144957185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6094b5d708d7386fb8c7db978e5348794a09811a831ecd726b0be2a9b02d4bc8`  
		Last Modified: Thu, 05 Nov 2026 08:18:30 GMT  
		Size: 78.0 MB (77999348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b15627abed57cf2089ba8929d8f519e9c4e4c29494967f82cfe49d10c22c9d0`  
		Last Modified: Thu, 05 Nov 2026 08:18:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c72d8f8e10014b441fbfd45535eb3c608b2c7924539c901128e7a5031819ea`  
		Last Modified: Thu, 05 Nov 2026 08:18:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:67570379e5fee5cce5c1387fd7ecb03ef16d4e79eaf8776f29bf66d928671636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0476c95311a4b043ab77b1a967334bb7d148c8bde6ed5824a7f0bdd4a8146783`

```dockerfile
```

-	Layers:
	-	`sha256:8955f7ef99acda9466cd93c45ffc078502171248778dc52b26c47fadf3b61ae8`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 7.4 MB (7384396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ef35cfbb7f82d0a7e7237f84657c2f0ee1e0fd06091f3193b8be8c0fe515247`  
		Last Modified: Thu, 05 Nov 2026 08:18:27 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:992a691978cce4b200cbf6cc0d007662e25143f2e2d3a12ec27e444bed68a679
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281051681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d3cb50899a4ee327d6f5649abdf5682c96b3d65d98ad32b95a7e9a834a0d66`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:32:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:32:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:32:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:32:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:32:32 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:47:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:47:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:47:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:47:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:47:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6913706a30281fb9bfb0333cf0fba1489b1c88945fb9523758d02af00a9ed4`  
		Last Modified: Tue, 03 Nov 2026 22:37:03 GMT  
		Size: 144.9 MB (144860486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a913ba3a39a5f3c626144c48f4aed8d0a4e0e64d1a33643e0dd66f3aa5542`  
		Last Modified: Tue, 03 Nov 2026 22:47:53 GMT  
		Size: 83.8 MB (83823843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90543bfe2b59e62793e45dbc72e6b74055ed6460e1cf6932014e8bc768d02f05`  
		Last Modified: Tue, 03 Nov 2026 22:47:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8f4b5a3b1c12f8bc2aceb2942985f26fe2935192f74d1ba23ee57a29c9869b`  
		Last Modified: Tue, 03 Nov 2026 22:47:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f68037e14ba396daede048d402efa601de26a68e872abc0d00a1434493adb0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7398579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe6ba863b572dd1861a818aa089f2fdd16542f2c897400a4a063b56df409670a`

```dockerfile
```

-	Layers:
	-	`sha256:2f965621984fedafad56f07d069b17ebf0979e93121f24e02db90b0cfb17746a`  
		Last Modified: Tue, 03 Nov 2026 22:47:51 GMT  
		Size: 7.4 MB (7382599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae6abdb766084331b613534e3f22cd5d15c91b74e1ca95e6c3385d882c9e2bf`  
		Last Modified: Tue, 03 Nov 2026 22:47:50 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
