## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:405ccb9b48847401870d156fc271fc886ce2b7eb442a2cdd2c4e2ff58fb55cb3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:b4ecaa36dcbe90b0938be73d9e2544839a9671cd61833b97c578af18366f0c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219260845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d21f2832b550ce805abc5a5d3dc42a163973c66c28cb920613d0134e42591d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:07:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:07:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:07:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:07:58 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:07:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:07:58 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:09:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:09:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:09:06 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:09:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:09:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:09:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:09:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:416034905128b972b07b9c5799c8d094e1a926dce6c8b0e0b6c9d79ceaa47dab`  
		Last Modified: Thu, 05 Nov 2026 08:09:28 GMT  
		Size: 146.1 MB (146086207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddbe6ca264ffeb01e486cdd9a322f6408fc1806be9c37a6d99ad455365da55ca`  
		Last Modified: Thu, 05 Nov 2026 08:09:25 GMT  
		Size: 20.1 MB (20132551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcea15e9253390b0547269b04685609ea768302f89202ca5bb26c560add72e8`  
		Last Modified: Thu, 05 Nov 2026 08:09:24 GMT  
		Size: 4.5 MB (4515173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23292c6c2adad7153ff8970cfcaf425f32e81b146ac6f55ce16c977be3d4f43d`  
		Last Modified: Thu, 05 Nov 2026 08:09:23 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:615517a77127620a20f65a04a1c4fb931bbc8bd8822eedfe2dd31939d4fcd3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2befe2a276ed16e8806638105d5cc8fa8db24d2cab955db6c82776356d9e6159`

```dockerfile
```

-	Layers:
	-	`sha256:8be86cf9e7f3e849a415f887758d8df8e25a82c2dbdde1ac341c9289cfc73019`  
		Last Modified: Thu, 05 Nov 2026 08:09:24 GMT  
		Size: 4.3 MB (4287996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f994a78b8cca60f5a9a6777a06485d1f01f7419508c6cc4ae45bbaa92adfc5b7`  
		Last Modified: Thu, 05 Nov 2026 08:09:23 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:832dc0b642863c81b6cc6ece70aa005b3f0bd52e2e971610191a9b9610366bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217852293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb35e038203266ed784450105d24002b5700d589921dca541c3d388d0d7e675b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:57 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:16:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:16:57 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:18:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:18:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:18:06 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:18:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:18:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:18:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:18:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f77a4d1e457a8c79c6ea946fcd7c0faed6eebad862966762664c8977a96ccd`  
		Last Modified: Thu, 05 Nov 2026 08:18:29 GMT  
		Size: 145.0 MB (144957185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9912d14b9d692b9452d7523e41edc0abe2bf002de5396728347256d4ede97b`  
		Last Modified: Thu, 05 Nov 2026 08:18:26 GMT  
		Size: 20.0 MB (19967009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d3a12bc474034ba9682bf1ee696122438c65b82a64e9a4b6db3ab2647b6772c`  
		Last Modified: Thu, 05 Nov 2026 08:18:26 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1c31e1a6c5921c03bcf362a19d93e67bbacd765e270fdb26b9c53daae06c494`  
		Last Modified: Thu, 05 Nov 2026 08:18:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:43ea231d1f0a6e98e93ad439ded9fdfb6a50d3586f900aa34a1d3be1c73ba96c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e91e249627653058f9634e2185a76c9ab86afcf6a53ef9e80865e2ff1ab82f1`

```dockerfile
```

-	Layers:
	-	`sha256:f8a7a982dc40d7dce4ab98e2c6562ef5406e1b88f581aacd5df005eb58e7acc3`  
		Last Modified: Thu, 05 Nov 2026 08:18:25 GMT  
		Size: 4.3 MB (4287611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f79a5745c96aa711e135ea069bc2f0818679f13ee541823f912b31fd63ba05e7`  
		Last Modified: Thu, 05 Nov 2026 08:18:25 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:29c928e51984ec5843df3359fac1971fe4471d587bc85de5aff81cbfbc2ed2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222102064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe6ffb6cfb1ff7bc7faf3f869097b3dd1e7494b52d95f7d9ecaa3ce91172416b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:36:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:36:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:36:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:36:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:36:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:36:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:40:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:40:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:40:27 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:40:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 15:40:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 15:40:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 15:40:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49bb31fa4370be1b5da85fd3daceac235b0934e95508bb9b0a4a7473576892f`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 144.9 MB (144860469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1477c7e6c933ddb01967f68502975772339ea7583b6a995e949d58b25bf484d`  
		Last Modified: Thu, 05 Nov 2026 15:41:21 GMT  
		Size: 20.4 MB (20357345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1528bc98f607cc85020fe201668917c933f68e851d43b4fa1d908be907aa45c0`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2203d14141e119641d41153d748009189864506b027d2e0d29d2f817775cc9c`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:940bd172c76fe1898386996122ecb091545c65dc941e842e3aec2cb78d581a66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95aefb5624d4041d87a06b319d8b339e5e938ad32ef673d7019e9d0e7551f75b`

```dockerfile
```

-	Layers:
	-	`sha256:8160f6e777534eac954f58b24b3b367738c58d0a9751416af3ae89df4e360e65`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 4.3 MB (4288611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50d29861947f0d63b60d982045e80cc3716405de2dccdb9201528ebe77c9e82a`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json
