## `clojure:temurin-11-tools-deps-1.12.7.1681-trixie`

```console
$ docker pull clojure@sha256:5e208ef90f71375497a8a6a32362db3bb66df372e270267b3e1f9cb152a51646
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.7.1681-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:53ca03c66be4286af27f363a28aef672a82704a567111183dfc545532cd79e6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277907051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bf868a5f4b3e61a5eec64714f080c484902eaa3d4390399fd8d7c8f6254193f`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:07:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:26 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:26 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47b03e6e97a4cfee52cf907e6e1dcd38c309bc19bbdf916a66f55ecce8b638d`  
		Last Modified: Thu, 19 Nov 2026 22:08:06 GMT  
		Size: 145.9 MB (145923105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34bff7aea72e16870c16b0bb15685ddd03c70b2aeb25706aef05f03e876caf2c`  
		Last Modified: Thu, 19 Nov 2026 22:08:05 GMT  
		Size: 82.6 MB (82570793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c211ffe6b8abdc950f215e241bcc1bb7c18207720e975b979eb59015d59ff3`  
		Last Modified: Thu, 19 Nov 2026 22:08:01 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6a5657f48443084f4a4fadc795c496ddcdf8cc27d872e067123d2926f2201931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdb1c3ff1dced61cf73fa3b49bea5bafb0da9b407b623eef28501287943875b`

```dockerfile
```

-	Layers:
	-	`sha256:f845dd355f422da189e1a33138a85145ab00f13d01fc576bb3e5572f2289c4e2`  
		Last Modified: Thu, 19 Nov 2026 22:08:02 GMT  
		Size: 7.5 MB (7496279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ace41f7c1da98235db862f2e544a2fb8ec42522f5053b2ba551cd62c72b1b4e4`  
		Last Modified: Thu, 19 Nov 2026 22:08:01 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.7.1681-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f0af7d97c30c22dfd3f12f50d558ddceb783409147ebc2dddee03073560d1794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274794570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d150c6326d88df573b669a32cc9d443e40d20dd9f6734010d61674ce18073cf9`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:06:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:24 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:24 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ba85b87e177856ed6498ae83fcf0214fee16b21ecc168430a98e1c1068df0d`  
		Last Modified: Thu, 19 Nov 2026 22:07:04 GMT  
		Size: 142.6 MB (142621057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42b50dea1ca96ba5851b27968b39b3be9795d6ce40b1e91f53302852d032306`  
		Last Modified: Thu, 19 Nov 2026 22:07:03 GMT  
		Size: 82.4 MB (82394263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272cf7479ffdfb82b178621691d4e273880bee5c4802096dd6b37781d7b738ca`  
		Last Modified: Thu, 19 Nov 2026 22:07:00 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fc599673d545739cacdd735b1445dcb071d03478c0e27ede167dd34d055d35fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ad760c418992ba692837ecb452cec98241cf316ff1b16c4f05ce0947b4b653`

```dockerfile
```

-	Layers:
	-	`sha256:02798ea62a6544853815e0b62f1f9a8770ccc1048480bf880311ae5cce36845a`  
		Last Modified: Thu, 19 Nov 2026 22:07:01 GMT  
		Size: 7.5 MB (7503290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd538d191959e09a860cbbc3a7f16a47e6156681df9c9c0ce6efd01f9b94555d`  
		Last Modified: Thu, 19 Nov 2026 22:07:00 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.7.1681-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:7f359c6882675f890eb45b70ca90c7c9911caa93b43279f55dd5dec93a2d9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273488855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ada22598743fcf7b008df4edc56a19cfa22cf178d939e2503b081e6435a32ab`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 01:34:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:34:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:34:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:34:58 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:34:59 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:35:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:35:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:35:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31f366bf090e4cf999382bb1ba81ce4803993f75a4130b6ce531aa40f338236`  
		Last Modified: Fri, 20 Nov 2026 01:36:53 GMT  
		Size: 132.3 MB (132272163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256b87f65b86303c2ffba107169ce439e70ad408a88d983a760d063dd65658d4`  
		Last Modified: Fri, 20 Nov 2026 01:36:53 GMT  
		Size: 88.0 MB (87990455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8fa350a9278875bc78ffdae4058220177488afda392efa876268c17ee7a0bf`  
		Last Modified: Fri, 20 Nov 2026 01:36:49 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e2dbf22d1d500d670542d5ebfac698e906c12d62a6a42105c2915950c83701d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910e0367ea052c75b18728cd35eac1536adf279d293f9dd18ac6f43cc48a5126`

```dockerfile
```

-	Layers:
	-	`sha256:9d804fc2f31ef2d7b61ecd76fcfd198523b1ad1546bbf212b2362fc74a0065e6`  
		Last Modified: Fri, 20 Nov 2026 01:36:49 GMT  
		Size: 7.5 MB (7498835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1b9064024eb8486c78ba3ac03b8748fb4d78edc7aa5f0603f4d474c18941dd9`  
		Last Modified: Fri, 20 Nov 2026 01:36:49 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
