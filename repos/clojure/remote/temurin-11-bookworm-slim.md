## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:9e0fbd17689b6cb6ea462ddb008fc49ed3af339bc0eb745e473d5bb4cf8b4fba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:189d1f91eee0586bdc4104fbb296a3a0a2dd4d9ba490909fabbac5ab0897b7aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240683364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8e2bb28243228132283f2c714dbfde303378778f20109a8ed1ce62a6edcfe4`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:07:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:11 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:11 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579c8aa23548582ce8d361dd5ace0a7ccf1104a4eb2b1586d360340564000453`  
		Last Modified: Thu, 19 Nov 2026 22:07:43 GMT  
		Size: 145.9 MB (145923104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8d2825327ccb1691886877b00eee3b1a69d4ac0c91a5bd15fb584d23903a0b`  
		Last Modified: Thu, 19 Nov 2026 22:07:42 GMT  
		Size: 66.5 MB (66511630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88911a9e44dec7c6aedb259bbe6dfc4258ab9bb283715d2a4afff614021d23a5`  
		Last Modified: Thu, 19 Nov 2026 22:07:40 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3b888e459dae5712613f2655133d3a5e1ae9dd1457c0d7ed578c63ff3fdfce0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b3563d062b43b1bcf9d65a4bcd549f8fefbbfb99a9a86f131e24a5307ef48b`

```dockerfile
```

-	Layers:
	-	`sha256:dda12ed157a96bf20ff507bf69d9df81e3c83aa5f942894b8543489ec7082fd5`  
		Last Modified: Thu, 19 Nov 2026 22:07:40 GMT  
		Size: 5.1 MB (5137625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84b0845ec4ba8547e07a48f04e4484da8e23d33d515cb8af092ebf24ab959d15`  
		Last Modified: Thu, 19 Nov 2026 22:07:39 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0ff62511fca936c224e0ecc1825b60be79c2b3bb0bc8847bc95e9e732ddb6155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237263202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1262e0fc6e1fbca197ba7a31e8d5eb7deb249c3199db6780ac377073136dfd`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:05:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:05:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:05:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:05:59 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:05:59 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b712cea899caced1a352453c19536060aeae699886f3b168223a31ea8bf125`  
		Last Modified: Thu, 19 Nov 2026 22:06:36 GMT  
		Size: 142.6 MB (142621060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef3577bb861368b5f9c6ec0195d4e6a4ead00a83fe765f9d75df23e5f7c3753`  
		Last Modified: Thu, 19 Nov 2026 22:06:35 GMT  
		Size: 66.5 MB (66497137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fa87e9fa66456a8b12595a2e25d077ab3a12d3a3dc2fa0e94d012a1f3ee706`  
		Last Modified: Thu, 19 Nov 2026 22:06:33 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a420c5698b5a81de258b163a2a5eb7ae67d994f7e6b6115d3d15d8ec5a055247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5158543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cac743ba32bfb08ac003a4b1c06814919691595d22c5c1b2939c95f08f17a1a`

```dockerfile
```

-	Layers:
	-	`sha256:261674388883be4cf0ca3744b147b158a41cae997d80285dc00e3b67ee7e0b7f`  
		Last Modified: Thu, 19 Nov 2026 22:06:33 GMT  
		Size: 5.1 MB (5144004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8276e21789ef76b6d6912e10e25a7b41bcc5e395e8fc373698cb4e346661290`  
		Last Modified: Thu, 19 Nov 2026 22:06:32 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:87c70de3eeae34e840c2bd608897021db9c6125ad60bf2d758492e78f09d0d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236700354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9ddf5c1dc17bc44934bc2b46239775946ef1d9014a0cfca6808ca656e7a17c`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:31:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:31:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:31:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:31:07 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:31:08 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:31:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:31:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:31:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c18a667ffdf032c867d1e805c2bd2668d817db1c470cf9c38b88f2e37d30a432`  
		Last Modified: Fri, 20 Nov 2026 01:32:35 GMT  
		Size: 132.3 MB (132272159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7d00f0d7d00eb907cd88d253147edb50a06a74ee2818b9687e20ace8dd16a0`  
		Last Modified: Fri, 20 Nov 2026 01:32:34 GMT  
		Size: 72.3 MB (72333987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4a0c8971ed28bb0976f41508010618b1adac6b9d1829729ee77795a2182eff`  
		Last Modified: Fri, 20 Nov 2026 01:32:31 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:93bc81ac348a7829876b570d14ddb7e959db4c5d72c5d1cc2b256a2411989bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5155391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e42eae75977f3b9b9fc5255598e5650c26ec174d660a8311962dbcf6209503`

```dockerfile
```

-	Layers:
	-	`sha256:5e9f056c8f7e1d6c3ef6dad7a1ead50a3d56974ff2675f2b6509a2733d093023`  
		Last Modified: Fri, 20 Nov 2026 01:32:31 GMT  
		Size: 5.1 MB (5140922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fceaa80d0e037a7a1911541360144dfdc08bccea42867d558e812561502980e4`  
		Last Modified: Fri, 20 Nov 2026 01:32:30 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
