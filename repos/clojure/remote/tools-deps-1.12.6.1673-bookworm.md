## `clojure:tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:074479de7d1ca91a6070f4d8db294d4e023da163ce13a199278ea91571bb5807
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:53d644295b6f9248629f278425db2153af9f429ad915af1cd4265d1c434b4c36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219123879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85e11a91d3c034899a723bf6df7dabb9de2191af80d35e10e87cd926ab0945c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:10:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:10:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:10:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:10:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:10:36 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:10:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:10:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:10:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:10:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:10:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718d8ab39774aa7f212ef9497561de96787d9b8c237d33a6a1f13d133d3aa1c`  
		Last Modified: Thu, 05 Nov 2026 08:11:12 GMT  
		Size: 92.6 MB (92598849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed396462dfc5508d56f96d4f6516b0e6ba8e8acc174f84f5a0aac50956de690b`  
		Last Modified: Thu, 05 Nov 2026 08:11:11 GMT  
		Size: 78.0 MB (77997501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c39d2042e772cacc44ca15352cdf92de8a5b6926fbd33f9db48e6630823a9b`  
		Last Modified: Thu, 05 Nov 2026 08:11:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6dfc64f51c0950306008441788e28330624d8d5dfdfd67e30c6894eb6fc35e3`  
		Last Modified: Thu, 05 Nov 2026 08:11:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1c75b24056d81dbac7fe1263f5ec1fa82df9e8c4a656153c864a8e4db59a58b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab214abf90b7591a55ce765cc6fb2576ad35f31f942fdf9847dbe4127461204`

```dockerfile
```

-	Layers:
	-	`sha256:2a253c4f08329c4052c75b8aee9a69967df51946011e8967f2820b003a5f675f`  
		Last Modified: Thu, 05 Nov 2026 08:11:09 GMT  
		Size: 7.3 MB (7348029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ba56a7a714f0a00c113852909c6f07eb79eac3e260fb9a686ce890a0c82a4f1`  
		Last Modified: Thu, 05 Nov 2026 08:11:08 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:93fc094ef012c7d09a02bb53c4b7ac7a636b55ba0b88497cb3093c5b9d26496e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217938463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da4779ce53398489bf4087e0c0c478ee9dba2a9c42d5393f9209ea535edb812`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:20:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:20:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:20:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:20:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:20:23 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:20:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:20:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:20:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:20:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:20:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6c7ed2b4c93b377e1c182a5791a32b462899a2212127e55c0a949b71dd7912`  
		Last Modified: Thu, 05 Nov 2026 08:21:00 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5c6e2ad1ad51776964dd6b3b061d88551c2cdaee90be62ba29c40b24ef21d8`  
		Last Modified: Thu, 05 Nov 2026 08:21:00 GMT  
		Size: 78.0 MB (77999363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2fa76fb4e2752df8b48c9b51407c577f0d5c388b22d3b0f5b2aab686527955`  
		Last Modified: Thu, 05 Nov 2026 08:20:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe43176503f24b584d1984e71b850f7597eb0f48768d9b5b12c8ac45755c1d6`  
		Last Modified: Thu, 05 Nov 2026 08:20:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3c9818818574bf9828e2647eb8fbb5fee6fd390767c6ec1af1ffc63986b1a3f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7371976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52dfcadb7b91886bad5d2a338be50128742af2c4e04ab88087f23efe7e324f53`

```dockerfile
```

-	Layers:
	-	`sha256:e3ab0a80cc2cf6d1f27c1f8515ca78b196916b1c82cc7a30467aa29e72471c93`  
		Last Modified: Thu, 05 Nov 2026 08:20:57 GMT  
		Size: 7.4 MB (7353861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f32de0838fd379cf3cb21f503503ab27d6f2d428ad208a1d66db23fb432a46ca`  
		Last Modified: Thu, 05 Nov 2026 08:20:56 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:374cbf44170b339eca7d766eff058852a38adb212e8de53f68716354dee2b762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226302464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15f212ae1e09fdc000eebc3d7c94dd731481c5b190baa86a95989c3acf35d6cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:24:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:24:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:24:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:24:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:24:07 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:39:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:39:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:39:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:39:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:39:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5412d3cceb0b365d7d52fcdf1d85bc427c038b51388bfd312d83464dc78689`  
		Last Modified: Thu, 29 Oct 2026 20:29:07 GMT  
		Size: 90.1 MB (90111681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c54a0053503438f3a4ea40e3d14e31c2a67cf0e7fa9cd83222c1511df6e178d`  
		Last Modified: Thu, 29 Oct 2026 20:40:26 GMT  
		Size: 83.8 MB (83823432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:073de4d46def3e0b43643c4aff99c23fe0587c35a266445037367ee731084c31`  
		Last Modified: Thu, 29 Oct 2026 20:40:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1536a787cde09df0bd772c261399c7283d08202b925345f560d7e07464ace9`  
		Last Modified: Thu, 29 Oct 2026 20:40:24 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f1dd888ce03f47424f7a85014ad248b92adca9a5266849f90e84ca408be3a051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a90a6474489f96030cf6f44e0aec7106bc8f8633ebefac5a7f7e2ff4d35b833`

```dockerfile
```

-	Layers:
	-	`sha256:ab87222653a7adba59bb58c83c13a167ddbee9078a9006258c28d724dc8eb05b`  
		Last Modified: Thu, 29 Oct 2026 20:40:25 GMT  
		Size: 7.3 MB (7334656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00000008956758fa2bef5de5a94acaf37c53b212278d8e8cd5450823ed3661af`  
		Last Modified: Thu, 29 Oct 2026 20:40:24 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
