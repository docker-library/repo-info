## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:06aeb93ee607ab6cb1eab6bb37176c8aa284cef3e0bbe8ccbb9b6843c54b3262
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:230a66dc919aa69f90c9f35a53ee77809772088121525429f4f260832d5b9291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181736753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a6d883250baa1ef7be890fb54df9c06ddf32ab94df648f00dbb8aaa2973896`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:07:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:07:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:07:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:07:57 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:07:57 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:08:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:08:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:08:11 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f1da6f0ab524a32b4b7a203921c6388e99f7624dd6aa9014100609aa8e77c1`  
		Last Modified: Tue, 24 Nov 2026 05:08:30 GMT  
		Size: 55.2 MB (55207914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6840b8aad2fcadb9ac88488f595af7927f2689b4fa0b37a0fd93ecc7e1bf42`  
		Last Modified: Tue, 24 Nov 2026 05:08:30 GMT  
		Size: 78.0 MB (78001818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8884d1447540fe1a8ac930f19bb30f695d717c5a90626d48aaaea32207e16d94`  
		Last Modified: Tue, 24 Nov 2026 05:08:27 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:cf9fd6da672e1213c7ba2b80a6b2e46374f5c66991254bdfc984b817010c13c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d35675eeda1fa21be1f11775e2d47679b4f9a04c64658705ee7454ad98c93f`

```dockerfile
```

-	Layers:
	-	`sha256:6219e4a4b18a748f0f473bd13e87ff070556d917d1d41fda935322dd67ce666c`  
		Last Modified: Tue, 24 Nov 2026 05:08:28 GMT  
		Size: 7.5 MB (7498997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0ae8ecbab2df0e6061e9925e1911b35be998cf016ca24f3720907a1b4fd9bf8`  
		Last Modified: Tue, 24 Nov 2026 05:08:27 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:129dd13396ce1d773e39ee125916cfbacf9d370490d44c5455536813f8fdaee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180681217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c79043d2a186b9897aef7a45e15a2cd2a2edd94efb83511c97f22e542b469c9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:15:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:15:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:15:16 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:15:16 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:15:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:15:31 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7ae54de35413d1230f8aff3372ecf7ef50863655b234474282abf8f421770f`  
		Last Modified: Tue, 24 Nov 2026 05:15:49 GMT  
		Size: 54.3 MB (54270350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0332cd79e600ef1193e34855c29f3c14bb618152c17862cd5a3892b30043d78`  
		Last Modified: Tue, 24 Nov 2026 05:15:50 GMT  
		Size: 78.0 MB (77997964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959e90a5a8489bc89552a5c8db4b1f56fabb589d0c238022062f52da7bef112b`  
		Last Modified: Tue, 24 Nov 2026 05:15:47 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:05af0c04b9046cdbadf8e612fbded5fd8b0afcd5483e4b52d948f01d6f9deab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17013bb3bb419ac1d2552205f80b1b5f98e937b615914f3c54aadefcd01e5aa`

```dockerfile
```

-	Layers:
	-	`sha256:7c9a9b74b5dbcccad243b38e37deecee8dd2a32ee6f71d8abcefc605ec6ed87f`  
		Last Modified: Tue, 24 Nov 2026 05:15:47 GMT  
		Size: 7.5 MB (7505460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ee1909cd766461cef6744e5de60b29c4c63427cdf41eaedaf96f2e3b7fddb8e`  
		Last Modified: Tue, 24 Nov 2026 05:15:47 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:af4fbdf8c04f8d066571c3865baf39482eb71347cf03243c799e3cf0f71ce872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188882242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a47401ceb6e124405d8c47ebaed55b6d8fb1d06ea95b103fded57f4cedd7b73`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:24:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:24:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:24:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:24:40 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:24:40 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:25:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:25:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:25:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9bd48cc9491ab9cc8f88ccded47ef82d84bd1882aad3246193b066453c94048`  
		Last Modified: Fri, 20 Nov 2026 01:26:09 GMT  
		Size: 52.7 MB (52689143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78cb1525e9b152ef2d816242063777987737415f46bef5baf6ac23db8044365e`  
		Last Modified: Fri, 20 Nov 2026 01:26:09 GMT  
		Size: 83.8 MB (83823833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a5bff172e030540047ba03f43c62d10e065911453ba01903e93bbfb806cdc9`  
		Last Modified: Fri, 20 Nov 2026 01:26:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5b296a924877ecc5c4dec9995f1b703cced4565c71e34c72715af147023c8844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e302658edd118fe9e7b9ce5735ece5be72f934ec9443849311acea8180371f`

```dockerfile
```

-	Layers:
	-	`sha256:1e4886ddcd2decb528a1e073504df2f4360fb7b03e8f33700153964303b78ec8`  
		Last Modified: Fri, 20 Nov 2026 01:26:06 GMT  
		Size: 7.5 MB (7504804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfb678108594a2532f9faad78ad6a1bf0af1b2ddce6676a3fabc6759f984700d`  
		Last Modified: Fri, 20 Nov 2026 01:26:06 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
