## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:0df48b00dcdb3be62a1db5c28a88908e488a5a1db7c27fc25714648ba4c13753
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9dc6dd565b41f5f9bd2b5ce840bf770d7f7f3e71ae6a1a8f4c76ca65c48dc418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272389504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7fd629950e30fa3e881169b669cb3c1acd094ea71d32cb66ea5f9122d1947d`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:07:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:07:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:07:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:07:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:07:33 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:07:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:07:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:07:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015265c4a45adc920738c1e77bf273f3f072614c544022756c14a0f3033abdcf`  
		Last Modified: Thu, 05 Nov 2026 08:08:07 GMT  
		Size: 145.9 MB (145864287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcb4b82647731522dd471eac2b399e992ad7a2186a337d1d8fed25947c753bf`  
		Last Modified: Thu, 05 Nov 2026 08:08:06 GMT  
		Size: 78.0 MB (77998090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb8a9e5f0b541134a0be49d1d3dc6fc34b9f80e657bee98bd4aa5d11d47f4c5`  
		Last Modified: Thu, 05 Nov 2026 08:08:03 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e85d760f2137ec0e0ce677a66df8ffbd087ca03c4c46a733b720d12cc213c2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7412520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69b0cb0e92ba3f075e17ff5f0242caf86a1edc1c9c79983d786c25a0708d6b4`

```dockerfile
```

-	Layers:
	-	`sha256:3629120cc6899fc774ecb9f47ca17876b8c216d5c01114caf675151ad7ef6e5a`  
		Last Modified: Thu, 05 Nov 2026 08:08:03 GMT  
		Size: 7.4 MB (7398157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5155324b4f22c22fed353493ab93661cfbc98f18048d6f10f82ab730602c4f9`  
		Last Modified: Thu, 05 Nov 2026 08:08:03 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4308d5057c267ff46b788f41ea20fb835c0ef59c49636236456017b0e30bf483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (268988772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90894a0f2a6886e5f34e8fbbba366a33cbd995f894e5495ee906c823af982fbb`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:16:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:16:41 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:16:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:16:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:16:55 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d00339fd25888e82d536f35dfcfabf8c726915a53b43dc7d761893d66e83c5f`  
		Last Modified: Thu, 05 Nov 2026 08:17:18 GMT  
		Size: 142.6 MB (142576604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6841961033fad21009b92be7b7172cfc303b0b25be755520e8554ee21aef0d1`  
		Last Modified: Thu, 05 Nov 2026 08:17:18 GMT  
		Size: 78.0 MB (77999068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632a4cbd0977aa1eda7fbd6d9f07022b92fdff9f2d31dccb0dc084b70491001d`  
		Last Modified: Thu, 05 Nov 2026 08:17:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c1a9c25a82bf6c97bb156aa845fcdb2e5b2b9cd4aab1b64f96d6fec9da1428dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b0390cb5ba118dbf17a9ce5b8823556d4f986c232b47e3e55e5b4672840917`

```dockerfile
```

-	Layers:
	-	`sha256:fa9921498e3a44d4807ce4f372392a8a774d6e20e14516d2544e861faa2c7a71`  
		Last Modified: Thu, 05 Nov 2026 08:17:15 GMT  
		Size: 7.4 MB (7404538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1995dcda5018743e3391cd7fc80fbe35f49aaea73fd0ba8ef80c98c7b288c4ca`  
		Last Modified: Thu, 05 Nov 2026 08:17:14 GMT  
		Size: 14.5 KB (14480 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:7ffa1314023a2003ec3d22534fd04868998260a2e79534647dd7915b0a0fc146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.3 MB (269285550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20245ee34db63ede782c1293901db738f8f842d70a18394846b87156e5b01d87`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:33:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:33:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:33:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:33:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:33:51 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:44:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:44:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:44:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b83014b0d62d561e9d4ab657164603fd296cb7437888fe2408ef8ba69b22ae5`  
		Last Modified: Wed, 28 Oct 2026 09:38:19 GMT  
		Size: 133.1 MB (133095025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b83818edc1b7d3f0c347c4522953f9181d58aee90e3ed95cf830ebf675d58280`  
		Last Modified: Wed, 28 Oct 2026 09:45:26 GMT  
		Size: 83.8 MB (83823572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281b3f491ebe882f3e3d5f69e79d72623c90f4e8ef26a4e68c00c9f4f2c3c595`  
		Last Modified: Wed, 28 Oct 2026 09:45:23 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7172c1d1c18cdbd575d40545a7da1d188c9733b30ae3b8a44a41ce917f3e3a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7417093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d849aac13262630bcd7106a5d3b7a014944cfb49d70f5d45b40f661f30d71014`

```dockerfile
```

-	Layers:
	-	`sha256:402006c3b21d25cc058fc23db0f608de73cbfd39944fae874085708b5d1f2590`  
		Last Modified: Wed, 28 Oct 2026 09:45:23 GMT  
		Size: 7.4 MB (7402682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c2567e9a7d5abfbc0742528a9b585a5c5f017e894808976645b3c81a17eb97e`  
		Last Modified: Wed, 28 Oct 2026 09:45:23 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json
