## `sapmachine:25-jdk-headless`

```console
$ docker pull sapmachine@sha256:a11d86ad97af4e9fbe9287de0702a024fa1de3d2ce9f0ad8c72981f45cc1ea0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:1a7ba3814aff532495ee874e8cada79d36eefc737c7247cd4007ea7bd0f4547d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255370059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75a9a55ea01b754012925cc3502218be19aaec1f7f0dce457c91119fc52a6d0`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:38:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446756bafcf83d991bce2896764ea8c9e2c006bcc1049534d37d0f03af869225`  
		Last Modified: Fri, 02 Oct 2026 01:38:34 GMT  
		Size: 225.6 MB (225605637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6a9de9e02150ab3088fe0d96421ed497dd97e4cacad70cafbe5d5d7299bceb1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6377615f544f6954026177190f7410342ac42747b519064dcbceb04a90af80`

```dockerfile
```

-	Layers:
	-	`sha256:4f321d56cced430b2694e2c2ef16b81f1e12e9e928f0995347ff58708852be80`  
		Last Modified: Fri, 02 Oct 2026 01:38:30 GMT  
		Size: 2.3 MB (2348725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:277f7c044012aa2bd42198e1f700f28404063123aa11b645e9d6e14f0c2119a2`  
		Last Modified: Fri, 02 Oct 2026 01:38:30 GMT  
		Size: 12.0 KB (12021 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8e2a53118c452ee150f24b59699d1bdc1837030347d492fd072ab77e8de0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249891025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871bccacbd0f21a10ebc058873d817dd1d7129903eda92f60e319ffe5949faed`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:39:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecd4e9eccecf00e8fce542d7c7f10c02dc26e5755920e2fa1f85a363e89bdd9`  
		Last Modified: Sat, 17 Oct 2026 00:39:35 GMT  
		Size: 221.0 MB (220951264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:621560f260cdebc65a9b38c119b6a92ba2f9878010a0b4063ba25729b3586e99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2361479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbe60745f9e1ef024afaae12a64c3fc2ef5065c14b1db4d276b2c3404b4e8b2f`

```dockerfile
```

-	Layers:
	-	`sha256:e19b2e381b12a166632b251d0b5ea3e541b2d1574535f641e397243a23d461bf`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 2.3 MB (2349271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71c6525a4ed3795d5831d5949b6a75780eea4af2836011839ee7ca4b3b13c577`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 12.2 KB (12208 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c60458484290d0b3e1aea6aab304147ca470432f9ba155d6f72eb8457c5ff25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258290497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d81808bedf65e150d826bd4062728b093f670d9c83e5a82ecdb19b745a964fe9`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:37:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:37:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 05:37:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca865d5c05b68b3fac3a6b40cebaa8218f152ab6346d9481e4a35a2f6dccc54`  
		Last Modified: Fri, 02 Oct 2026 05:38:01 GMT  
		Size: 223.9 MB (223913988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cd07b8ac4229565898d0ca9188e61d98f00d9c5389e8edd3d05ee47745d05e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ece18e9439f94292f37336fe5da55753c90b36bbedd9f08b59a015d7aab077a`

```dockerfile
```

-	Layers:
	-	`sha256:79b5fa17c6c6733dd3dc9c2d96b8cc5459f3c5cc82e1fed51545d3cb25954db2`  
		Last Modified: Fri, 02 Oct 2026 05:37:57 GMT  
		Size: 2.3 MB (2345596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a4bffbfeaba5c72c2c670e11761be4a04846177616e96d1601cacb920aa4dcd`  
		Last Modified: Fri, 02 Oct 2026 05:37:56 GMT  
		Size: 12.1 KB (12107 bytes)  
		MIME: application/vnd.in-toto+json
