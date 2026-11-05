## `clojure:temurin-25-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:b727d6ec04208c480b73faf3e1f1ae825cf15f30f5e3c694121dd050ab3122d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:51948e643a6b0ad02304858e73485ffeacffa16c9f6a06bf4bd792f1bdea5a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187356126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5682b12335c9b99b80d1a241c397d5a240ab040d62cfe29ea82403095a0b0f0c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:10:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:10:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:10:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:10:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:10:52 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:11:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:11:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:11:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:11:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:11:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d373ae2277c6936bd5143c9c7c11f75625810a6d4908cc09c784b61abe6eb97`  
		Last Modified: Thu, 05 Nov 2026 08:11:27 GMT  
		Size: 92.6 MB (92598905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88a90bc5691c5432681ce8132d97b7de0f5490f4121db17f750f79a3bf6809b`  
		Last Modified: Thu, 05 Nov 2026 08:11:27 GMT  
		Size: 66.5 MB (66508196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b18816836bff513e895e751f9a3bf8fc375c6f583a5d0eae2434476551cc7bf`  
		Last Modified: Thu, 05 Nov 2026 08:11:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d16e1ef13b43e10ad0616fbef35a393221728932c51b07298afc4e7b63a3a6c`  
		Last Modified: Thu, 05 Nov 2026 08:11:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6ccc259575f2cfec17135cdd72433432ddbaa863db316b2f90051cd0058d9025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a455866b43ac2fe21174f22bc73f4e53b5a77e4e336bb73e349804dd1c8e01`

```dockerfile
```

-	Layers:
	-	`sha256:09304571bae91f3efd27fa93cb96f2e692159d729b8809f065431deffbdacb39`  
		Last Modified: Thu, 05 Nov 2026 08:11:24 GMT  
		Size: 5.1 MB (5086197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cc47c9788c9fab3c50f0b0bd4fd7370dc11e266086420a3161648c2d34b73a8`  
		Last Modified: Thu, 05 Nov 2026 08:11:24 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5d18af38a91ab911562b83c390cec4b25fdfa65c9db7b6b050369b977d414cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186171272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5567bd33d319d8161f2227ed8ecacc9d51e709903c27b9d04b82525abe47e57`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:20:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:20:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:20:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:20:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:20:15 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:20:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:20:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:20:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:20:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:20:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f80699e562a20c7aee3c9d957dce4110a9b2ee01eb9f260337d083189bd509`  
		Last Modified: Thu, 05 Nov 2026 08:20:52 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e170a69d4613cb265fa55f8558cca7ff879f3a1a7d36af7892cd12cf859a948`  
		Last Modified: Thu, 05 Nov 2026 08:20:52 GMT  
		Size: 66.5 MB (66500269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708f8e2a726bb9745c03242d05a000badd5da1d870c15be6729c6498c97a2429`  
		Last Modified: Thu, 05 Nov 2026 08:20:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278eeb9aaafa7552d7cc5db47e74e8e48626454c6206a895b54856c7e27fca68`  
		Last Modified: Thu, 05 Nov 2026 08:20:49 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3e619d3f9c69fd5667b31733dd4fdf9e66c8d9bb639f5495e5ecb2f5bc1f8012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5108800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f5d48d0c4b94d6980229171507a8bbcdd6f8285250693448d1aaf961874806`

```dockerfile
```

-	Layers:
	-	`sha256:44480ea5333f5d3103683c97b410063727d7b53756e14b691224ca28600b38f4`  
		Last Modified: Thu, 05 Nov 2026 08:20:49 GMT  
		Size: 5.1 MB (5091979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325937497cec8e6792f77d2172434a2d5504be754c5b50351e59e8120cac6f5a`  
		Last Modified: Thu, 05 Nov 2026 08:20:49 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:137933ea4c8bbad2215e7dc862151e63749787f7936c9efcd9147b087fb14429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194539345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cea1d275ab140c6acf27337bf0981f9a8831c73a4c999d85580160c89d6ee9e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:30:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:30:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:30:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:30:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:30:17 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:39:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:39:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:39:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:39:48 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:39:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816730e2f2627d6148f2ddc09af6b2fdad798b7f985083887438ac81623fafdd`  
		Last Modified: Thu, 29 Oct 2026 20:34:00 GMT  
		Size: 90.1 MB (90111681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394cd4f0995c147f16c4f604c2dcad8d8548edd19528bd98e2e140e80091e308`  
		Last Modified: Thu, 29 Oct 2026 20:40:23 GMT  
		Size: 72.3 MB (72333777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fea7040de58e1c4b2514e37b9d914222596520d40549faa31b701b93968f4f4`  
		Last Modified: Thu, 29 Oct 2026 20:40:21 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e85d20e2433b326fefa7465f23951999d3987fc8553709a51805f7d6fa4a29b`  
		Last Modified: Thu, 29 Oct 2026 20:40:21 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a36ce47f6d64ed9da8c5a86c8b6defa1cde8b39ccbb4f9476d0a5196f66082e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ce1b9ad742f4167156492c3181fa125a3b7858a65d585cc1799033351e655a`

```dockerfile
```

-	Layers:
	-	`sha256:1cad9e1657ebf03106c8325ef79baa130b7f79d1ac41929c0e753701e929edbe`  
		Last Modified: Thu, 29 Oct 2026 20:40:21 GMT  
		Size: 5.1 MB (5072746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c842edd69a68d1d4317108ebe22d05a2fb7618a830579c665bc42e97f1c7677`  
		Last Modified: Thu, 29 Oct 2026 20:40:21 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json
