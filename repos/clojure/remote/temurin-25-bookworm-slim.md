## `clojure:temurin-25-bookworm-slim`

```console
$ docker pull clojure@sha256:02cd60366411a1c94fac9015dd8e67306f06edf1b2bd7920ef17e141b1460820
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c85c64a5ecd954a635dd847bafbfa771b8b919475f6e5a657bf80e306fc6d618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187354984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda4726c7f4f20d3817d0bdeb8a270bb276c0909c471475506b6db28bf8ca8ac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:57 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:06:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:06:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917be0eca8a5bab813d640709b629bb56c7a0df46e45566250c6f1fbded5e276`  
		Last Modified: Thu, 29 Oct 2026 20:06:31 GMT  
		Size: 92.6 MB (92598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a38be499ed858134e8c7fe52bce3f30efbbcc875f1befb9dbacb140289d8b00`  
		Last Modified: Thu, 29 Oct 2026 20:06:31 GMT  
		Size: 66.5 MB (66507637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b500fa60079b6a33d05eea89a760e81a814ccb46f6c4935730d3e72d124b55d`  
		Last Modified: Thu, 29 Oct 2026 20:06:28 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7feee01c569e3518221877acdf7ccaeade5a402d0a3f3eae334be00a44924f`  
		Last Modified: Thu, 29 Oct 2026 20:06:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:130e2cee416204701ea908c7ceb1b6afb88c72b9bfaf0b55010b2c5f1c706571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c98368c1884956c7cd4581698a6690e3c7b356708463354c7a3c52f3974e63`

```dockerfile
```

-	Layers:
	-	`sha256:f4b96bd90f9edcc11f9d16bca1103c4eafd4833aed8b8aefde00931f1cbe2326`  
		Last Modified: Thu, 29 Oct 2026 20:06:28 GMT  
		Size: 5.1 MB (5086125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff372087c5a5e89e02a9b848e394b2ff86872d21990e8f474ead2d4bf3aff524`  
		Last Modified: Thu, 29 Oct 2026 20:06:27 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bd72d0933dc2b470846686659c8f3e0b1a884a5f9338703ea6fb04be316a52d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186165806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba34d3fbbe46676c32691449ae24572ed88e832cb561f6e3269ee313a6cbd4c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:06:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:06:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:06:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:06:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:06:49 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:07:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:07:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:07:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:07:03 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:07:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46bc2ed79a9cde9a125b530f45de7e959c1916d140dbce29d5f8e4c38ac1536`  
		Last Modified: Thu, 29 Oct 2026 20:07:24 GMT  
		Size: 91.5 MB (91525570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554c2d5f15f3cb4f7b565a0f02a586391fb061a902edf533864a90c07010008c`  
		Last Modified: Thu, 29 Oct 2026 20:07:24 GMT  
		Size: 66.5 MB (66501240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93a4ff30c825a3b7de69d958b4b8e28ed8dccd71bdda8dfd1db2d545e5270d94`  
		Last Modified: Thu, 29 Oct 2026 20:07:21 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e650afd1ad1e68a2ab9419a862413530843d93d8f1fc167661e6b5ec470220`  
		Last Modified: Thu, 29 Oct 2026 20:07:21 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1c2ecf2890a35f84d91b497e7c9e892fd76205d26bb6040d64b9554006ef9dea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5108728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c84dcae435e4e8a6137eb5afe0c3bf23cf79cbf0f7b0680b99022d2da48618ac`

```dockerfile
```

-	Layers:
	-	`sha256:c95924973ad57680271da8fbeec02f1250e836fa38c165d900763b73a6451e29`  
		Last Modified: Thu, 29 Oct 2026 20:07:22 GMT  
		Size: 5.1 MB (5091907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:220c46bd89ead523d8b37c7f42c08419d37c48055c409e3e20e25fc312504cb9`  
		Last Modified: Thu, 29 Oct 2026 20:07:21 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm-slim` - linux; ppc64le

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

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

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
