## `clojure:temurin-11-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:62f0bb32524b4475fafcf0bb8fdde557360be3f8d0e4a3210c171c4811109722
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d48ae85a43bda989569d895b0afc8f78bc1673034c7d924cea1e333727e97bda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244698376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca591c399a84c4e7840c57901a9912dc1bc0f6e46d747b47c760d9c5d10e8dd`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:48:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:48:20 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:48:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:48:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f057072fcd8693d7796b0dfd96a9303bf634883201d53f6e1bad5e808436c6b`  
		Last Modified: Sat, 17 Oct 2026 01:48:56 GMT  
		Size: 145.9 MB (145864517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538f75208478fa2b024c7b249be6f4132e03328798e7c9ccc9ec00f6292c756e`  
		Last Modified: Sat, 17 Oct 2026 01:48:55 GMT  
		Size: 69.0 MB (68989863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d94f2970159a4899d1016b46202b4d34ac30fee94542b7b4805db1e4658173a`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d3b8f8864f8604ed93978a3f6e26a821c211714afdc8cae49e63f3605c6d8630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284f129d21a075d937143e8855c62eb83b40562e5cda98cf50ddc14cb81249a0`

```dockerfile
```

-	Layers:
	-	`sha256:f251a576934817a4ad3238c760999f4f1a6349460b97106b8efe10e68b36d266`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 5.3 MB (5282830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7906e0108ef6730977a495f3f1a931cd6ca8d98a696d779fae845142ee093ab6`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:463b9847cec174d21a9e8a161284a9db6a6301bec87328fc1b237d16abce5bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241588054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405866bf793311505142ecfc8f5e557d79183c37698d88195fda6189391bd72c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:28:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:28:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:28:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:28:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:48:17 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:48:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:48:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68f13aa5e4cb077bbc5a8b9f7eec83cc919f079cffde858b3bf87f010cd8f57`  
		Last Modified: Sat, 17 Oct 2026 01:29:46 GMT  
		Size: 142.6 MB (142576554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b54b36df29932e1ec8414b9e04de4db2595c4a132bbeeda1401557ccb0546a2`  
		Last Modified: Sat, 17 Oct 2026 01:48:54 GMT  
		Size: 68.8 MB (68810572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7cb9def8110e373d27488cdc2c78fe9a1ba2b0f08262ec91000186c99f105a`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:75a0f06b407e471d95fa80ec3ff6f0d9c48187562b7e9e364ed81f68e0500ccb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:019327957e235365247d4ba2dc74a451c9f52ac21c65cd0827baacdbe15c85ba`

```dockerfile
```

-	Layers:
	-	`sha256:56f9205c047578da2f115a367c2703d60ec629a567a28f616cb572c4e2ef342c`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 5.3 MB (5289209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fb57022e1c8efee735b9239d1e6ee7d26f2a049cf7413bd667487bb3f0e88ee`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 13.6 KB (13560 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:16e78cefb4bd23c9e2c9f8379acae434592273af84f51c6bbecb2b039ff5a57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241164803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7813123c655a909d91c0410558d9180c63c2b739cb2d43732fcf9e1f2778046c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:24:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:24:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:24:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:24:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:24:53 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:34:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:34:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:34:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2490f42e1ec3b90b66636232de8cc5ad5014f03d8004248781144439cbfae14`  
		Last Modified: Sat, 17 Oct 2026 05:29:13 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8245bf51d1f5f5c1f236eabf0819f7b4e247bec41b459b5f1e3616123c5e4653`  
		Last Modified: Sat, 17 Oct 2026 05:35:12 GMT  
		Size: 74.4 MB (74417427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4368cb291bd8b4d11345ed77301a1b14aa24f832528e0d41327f0e8b1df16b9c`  
		Last Modified: Sat, 17 Oct 2026 05:35:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:30948b7a1a46bb0cc3df91ebf58eae04a691bc107a8fbdd8d34192ad716ff616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5301031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62dcc133f37ea27c78b49380e35a6bd57f34eef15fda21d07c5c06db7afd0d2`

```dockerfile
```

-	Layers:
	-	`sha256:73b726aa77220574133d592af1ffc49ab9c4baf6ab0351b74ceab74fbb1dc9c6`  
		Last Modified: Sat, 17 Oct 2026 05:35:10 GMT  
		Size: 5.3 MB (5286586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afe4f24c03b694bcba12068961623ae6c7f6ea90f18073f6bdc1175ecd77057a`  
		Last Modified: Sat, 17 Oct 2026 05:35:09 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
