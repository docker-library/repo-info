## `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye-slim`

```console
$ docker pull clojure@sha256:facc7c0231914a3a42b6b0c21515fc70b70aa05f9b98009d89272a81aa9144b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c888660ecd832922c644fc21797a27e594989959b09af5847262a0120ef3a45e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141573980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22695ca57921e0f78077c7521512d975a797926d47457cdaf1f7422cab327684`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:40:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:41 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:40:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:40:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:40:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde4edb82701bad867ef7c151e05a62f1668f5006cbc064bde81b39e1ddcecd9`  
		Last Modified: Tue, 18 Aug 2026 20:41:08 GMT  
		Size: 55.2 MB (55198725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a67ffa88fdb5af9e19154f99cb9071b71b68c076483cc42aff47ff2ddd5025`  
		Last Modified: Tue, 18 Aug 2026 20:41:08 GMT  
		Size: 56.1 MB (56114993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3a69835765a53f1f2265d7e568dd48d6fad665e3c658b6d4e38a443904824c`  
		Last Modified: Tue, 18 Aug 2026 20:41:06 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:af149165b35a631d553e9a4008688faf442b18f02d4bed02b8f68cb5c47a5583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5caf1bfb888d1f94ccd65208e091901a1d0c22057aacf4e69fe1b89ce7893bf8`

```dockerfile
```

-	Layers:
	-	`sha256:1b6ccd8561f00c99c369f64514ed71065d716ba734168d10c9ac9c7900906723`  
		Last Modified: Tue, 18 Aug 2026 20:41:06 GMT  
		Size: 5.4 MB (5443412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:095d3868ecdbb814a5149ab0d5d67bf9855e65a6f4f4cb1e6733d2af4ba58bbd`  
		Last Modified: Tue, 18 Aug 2026 20:41:05 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:50ec24b3150ddf637c35e7a12c292c9233c5cfd9d228178d45b68181dc7e4540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139303716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69ae662f09c4bc680dd1127a29e246bedfd89a574797b175930bfeaf2ef929c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:40:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:44 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:44 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:40:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:40:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:40:57 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c4e712e25998c59ed5e517797bc64e8796c47d708a26eb76402d71987c0fdf`  
		Last Modified: Tue, 18 Aug 2026 20:41:14 GMT  
		Size: 54.3 MB (54272924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f4b305230ed1129b4604a13d0b6d18d8791268d4d46e1f4171fbff541a46af`  
		Last Modified: Tue, 18 Aug 2026 20:41:14 GMT  
		Size: 56.3 MB (56281242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a36b2756926f1f0f5cca08c23e7da866f8219177bfb29f34fbc235621b651704`  
		Last Modified: Tue, 18 Aug 2026 20:41:11 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1e98a77a0de45b09a08682d2cb3b785ecdc26889b80cb7c6e9827061d3540af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596808ecad508749862bddafea06f76c19ff43d306c5e66f47b08735732e4c06`

```dockerfile
```

-	Layers:
	-	`sha256:0ca10f0e1179e827bcb35550ecaaf71f8531e73095acb3cca9465423ac68a287`  
		Last Modified: Tue, 18 Aug 2026 20:41:12 GMT  
		Size: 5.4 MB (5449844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c27810a2f677e01eb2342eac1ade18b5d427769c024def8e68eecd7f393560e3`  
		Last Modified: Tue, 18 Aug 2026 20:41:11 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json
