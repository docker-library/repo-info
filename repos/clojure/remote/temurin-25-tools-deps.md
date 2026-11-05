## `clojure:temurin-25-tools-deps`

```console
$ docker pull clojure@sha256:fcf9e4765c784b8455d25de7606c2b6833b16ee45fb3b5eb0f23851d5d218dcd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps` - linux; amd64

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

### `clojure:temurin-25-tools-deps` - unknown; unknown

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

### `clojure:temurin-25-tools-deps` - linux; arm64 variant v8

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

### `clojure:temurin-25-tools-deps` - unknown; unknown

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

### `clojure:temurin-25-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:9dbeba6590f92899ac78065d914af48249bd2ae383adf095d893b313beb4dadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226305176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d2d6d11f7f542f4ee973f4c2521f82d51cdd70d304e512461d395ec1e4c9772`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:18:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:18:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:18:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:18:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:18:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:08:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:08:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 16:08:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:08:33 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:08:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e811e2ed4773087153cb51d918d4412ad6aae87e34a833e2a78b59926760328`  
		Last Modified: Thu, 05 Nov 2026 15:23:45 GMT  
		Size: 90.1 MB (90111651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a436b06d1590db390b115076554c46d228d6230d16d86f12408fb986792f0371`  
		Last Modified: Thu, 05 Nov 2026 16:09:22 GMT  
		Size: 83.8 MB (83823859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebf3ff546b6f4c6b45062a0de7f11eae8b77bd56e6f9be8d2a523757132ff8d`  
		Last Modified: Thu, 05 Nov 2026 16:09:20 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2a11edd843f321e0cc8174e8d012db0854abbad7b06ff9572e5fa78c48b979`  
		Last Modified: Thu, 05 Nov 2026 16:09:20 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:d041e69f49d72bdda19094641c1ac99727fa474e0acafe86140faeaa57d3bbfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1a260ff18d4162aae5a01ba3bdc0c4f4d38d444ed5b0c8a3f53bbe99d6061b`

```dockerfile
```

-	Layers:
	-	`sha256:b805658eb5b73b519c13f2035f34f6ae96b7633cb4aada3adc173f0a40136b7f`  
		Last Modified: Thu, 05 Nov 2026 16:09:20 GMT  
		Size: 7.3 MB (7334728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:212a042cb6bae3fba9d2c82498f88182bdd02a8a861774e88c7ce7b95f52d9b5`  
		Last Modified: Thu, 05 Nov 2026 16:09:19 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
