## `clojure:temurin-17-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:e00f1041d85ce0110d93712fe8d5ec81998d850a0c1032420287a193823930ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:df0b5a818e0857bce7f0f2911304f76c3061cf58f563b2a5725f9dc9628e6855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219261885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b44cbe3c5ea922c1a5a71d5b299b88f6e01efb9f72daff2dd1194e81f88dc3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:37:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:37:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:37:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:37:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:37:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:37:28 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:38:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:38:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:38:39 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:38:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:38:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:38:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:38:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a745f02416f1ed063f83f067c92dbb04592754c044ecec27385b270704ed0947`  
		Last Modified: Tue, 10 Nov 2026 00:39:00 GMT  
		Size: 146.1 MB (146086170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0d76fee141848e5063743faf6faa3a88a9b5f9f2a9b48aa3239fcd13dd3147`  
		Last Modified: Tue, 10 Nov 2026 00:38:57 GMT  
		Size: 20.1 MB (20133100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed6bf8be6c85f84481d957b9e2bc544857e5b2fb2d5b837ed7cc1e85357171e`  
		Last Modified: Tue, 10 Nov 2026 00:38:57 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d2e9953593e7b0ee7e6f53ead5b7ff5e559e36cec74c04d1d37be7b34c2a6a`  
		Last Modified: Tue, 10 Nov 2026 00:38:56 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5fcbdfc84aa2a366731d65a284bff0d69061fb693809ca7968a58982cc245aad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b93de9f07d542050efbf9c77f487b9f971b1123c7e5e25f00ec7029dd7785a5`

```dockerfile
```

-	Layers:
	-	`sha256:fdd40d00100047c4ed29868c65a82dd6560deb7d648ec5c40fc70b95564d279d`  
		Last Modified: Tue, 10 Nov 2026 00:38:57 GMT  
		Size: 4.3 MB (4287996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c2a46b072cae301f36cac6d67743b07226ea5c4cfff94d2b29041d83d34277c`  
		Last Modified: Tue, 10 Nov 2026 00:38:56 GMT  
		Size: 17.7 KB (17736 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6ef140d86803d912efcc816fb5446e02b91e03f52f91b736ae176bd4f3fa9cd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217852891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157aa54d65647044242a732aaaca642c727f46aba9bd17c325aa019eb123868d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:36:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:36:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:36:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:36:36 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:36:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:36:36 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:37:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:37:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:37:47 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:37:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:37:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:37:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:37:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def6cf7eb98baa02187ba2771fb37ef13fd261b3a3f6e8a0889577a11efccb49`  
		Last Modified: Tue, 10 Nov 2026 00:38:09 GMT  
		Size: 145.0 MB (144957185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df321b92f428d73b70c2b3f3cc9ff4317e492fb47f8e48c5c4110851020bdd90`  
		Last Modified: Tue, 10 Nov 2026 00:38:06 GMT  
		Size: 20.0 MB (19967135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca656ba5b6c5150af485612acb443a6bd873d10e6f234a24c5768981c0605c1d`  
		Last Modified: Tue, 10 Nov 2026 00:38:06 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815997f3ecfde1717916494c74eb78077805228999ce776f673a1441b11ec932`  
		Last Modified: Tue, 10 Nov 2026 00:38:05 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b68d663007d2ed3da6c8c4ecb610d7424fa4e765cfb3e1681a4f22076a146d08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5532cea13ef55fcd335d4914b174243b6ae3469f008440d20c2f02bed982f5`

```dockerfile
```

-	Layers:
	-	`sha256:4711358b39dc71e170f976fd837d8f7bdab9c33e731c8a23aee13a5214209482`  
		Last Modified: Tue, 10 Nov 2026 00:38:06 GMT  
		Size: 4.3 MB (4287611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33aef5e31399868a0457edd9a82a09b492c6307b419479d06ac4575d179af2e9`  
		Last Modified: Tue, 10 Nov 2026 00:38:05 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:6cbe5a3f17a6ab9a392deaedbc2d4c28ff84811a131dce08210190d34325159f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222102565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2883a198a76e2766a462743055a9226f0fab1b11d1f6dd4fc5290974f44ac5`
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
# Tue, 10 Nov 2026 02:25:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:25:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:25:25 GMT
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
	-	`sha256:91577623cbdfb20f7c168b0fbfab3995ad6df3389913cd2f4d10d23276af0f43`  
		Last Modified: Tue, 10 Nov 2026 02:25:48 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:85e060cc98e624efb4b6a94902202b95a1c5dfee71a4924b44956732e17396ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069bf5231f661f32b3df97f0822b3d5ebd8cbd1af36ff8939f6cd165e4c18cb5`

```dockerfile
```

-	Layers:
	-	`sha256:1b30cdc8eaf64409aa18f0b6b4dd2312040cbf3e4ec2ed7906eda73dc2eae27c`  
		Last Modified: Tue, 10 Nov 2026 02:25:48 GMT  
		Size: 4.3 MB (4288611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c63bdbe5dcbfbcef9c2e96cfd20e3a05ed5592d53bc6934500ce6bb0dec670`  
		Last Modified: Tue, 10 Nov 2026 02:25:48 GMT  
		Size: 16.8 KB (16827 bytes)  
		MIME: application/vnd.in-toto+json
