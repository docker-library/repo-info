## `clojure:tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:1ca081979f1e1a536e9587a54e79b9c9f084db287b3cd2cfa2883641da752d39
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b5e65a62e56f08af8d506f7689cd50086b2ce0fc2e26aa577f15f9527aa9d425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191440942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd9a1df02c6e25ba2fb762b3eafad8c489a7d58365f68aa10eea91f3a4dfccd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:25:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:25:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:25:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:25:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:25:07 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:25:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:25:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:25:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:25:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:25:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7068d3baf762d29a5fce46572440a9143f8cd606e24356d2aaf347596e1fd0d`  
		Last Modified: Fri, 25 Sep 2026 23:25:45 GMT  
		Size: 92.6 MB (92618065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7b5a48efbbf50fd74adfef95e931ee312080dba08b9dff0defb477661dcff0`  
		Last Modified: Fri, 25 Sep 2026 23:25:44 GMT  
		Size: 69.0 MB (68991420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232f766b8547759648aee3bd67dcf1969b4f872130ce9b01671f82f9d8314079`  
		Last Modified: Fri, 25 Sep 2026 23:25:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab2a055a219f748341a6920e186b47d8bf0198f2a398b8538b66273eec9ae76`  
		Last Modified: Fri, 25 Sep 2026 23:25:42 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7458948c7fba4f956c254610f3d1a57f0fdb99ba9398d1c5545538300d6f05aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a0928b68b738d0d78fcde4ff2d83d1da0fc02bcccc168945d48ebf7a7b350b`

```dockerfile
```

-	Layers:
	-	`sha256:29b0bb91be3db6cf439ed48b44f3348e1e305979443ec499569a01d6c0b2c502`  
		Last Modified: Fri, 25 Sep 2026 23:25:42 GMT  
		Size: 5.2 MB (5231398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ce23a1c59a50d09600fc0b33f31a51b81837b5061a0e79e1104a71ac1490936`  
		Last Modified: Fri, 25 Sep 2026 23:25:42 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:897746fee64eaed09b850b2352dd52df7f1add543527f851f71338ae362f509b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190528192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e182b167b8f1ef865784a61002bd2c7a837e70b7ce9393229b15b399529aafe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:22:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:22:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:22:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:22:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:22:48 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:23:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:23:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:05 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dbcdaa1aad0412d21497205210186fc48ff73ad43c883e4d43eabace22cba1`  
		Last Modified: Fri, 25 Sep 2026 23:23:27 GMT  
		Size: 91.5 MB (91528868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3743a71dbde638941e25e83122be92f481a8848f4b57b99ffd707b0a31dc64b3`  
		Last Modified: Fri, 25 Sep 2026 23:23:27 GMT  
		Size: 68.8 MB (68808593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb629c2774b5db6b2fa66ebbc97c6e063ebcad40adb6b9f224b55702c8cab80`  
		Last Modified: Fri, 25 Sep 2026 23:23:24 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d30f1b0e2281d7b3f0e7aab070bd5a36f8c885eb0fbf922f194880f94f243e`  
		Last Modified: Fri, 25 Sep 2026 23:23:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d36b5931bd7f25086fb175a1bcf45e19cb8e5ef8fd107c79518caaeca0c893ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5253969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8aa95fe126555f700be794f30074f6695f5df7677b52ea59fff35eaa87c949a`

```dockerfile
```

-	Layers:
	-	`sha256:af54a4312f4718756de995903cd057c7d63db66f4df9ff6d972106ca3f24595a`  
		Last Modified: Fri, 25 Sep 2026 23:23:25 GMT  
		Size: 5.2 MB (5237180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7692a928c8f8eb5d624bb2b3935d14b3bf9cde636cce078c97f313152a4b29b3`  
		Last Modified: Fri, 25 Sep 2026 23:23:24 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:87255ffc0bf9bc0978719a4f7df918f6d032f9516db3375b86295587bb27a7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199309991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979b23de6700eb33cc60db570f47508a370f0318cd7457bee1c42dbfc339975a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:19:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:19:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:19:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:19:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:19:13 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:24:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:25:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:25:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:25:12 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:25:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21be62dce9b3483233e51608724f74dcae42350bd67904c3212e42323e7cc0c`  
		Last Modified: Sat, 19 Sep 2026 08:23:50 GMT  
		Size: 91.3 MB (91255865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ee3ebba4ca0e5b47ba0c1b554a3015dde506e900cd21a33c7a48a218275e49`  
		Last Modified: Sat, 19 Sep 2026 08:26:13 GMT  
		Size: 74.4 MB (74411851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d511929258b9b94b1947391670ecf6b49e1e99995142032d964c46681e38354`  
		Last Modified: Sat, 19 Sep 2026 08:26:11 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbdf4bc634e1e208b89bca54c753ba12fa30f2e1405cfce3d12536dd1b595bb`  
		Last Modified: Sat, 19 Sep 2026 08:26:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6ecacdc63b5d22355b2be0eaa827c1f638511dc030f625ea156b4fc0f13093a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5235792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e54495953dd5b34908435cb7310e509db09763c7aaf29cf6eb0020c3469abbc`

```dockerfile
```

-	Layers:
	-	`sha256:15866f4023f39b2e19475372c3088156d0cfb403e54b836d6ae17664e722d005`  
		Last Modified: Sat, 19 Sep 2026 08:26:11 GMT  
		Size: 5.2 MB (5219085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d8aec0c08f7f7bdbfd2fca0531439b814438b9e72fba7368584f27794808ce2`  
		Last Modified: Sat, 19 Sep 2026 08:26:10 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
